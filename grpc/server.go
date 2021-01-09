package main

import (
	"context"
	"log"
	"net"
	"net/http"
	"time"

	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	_ "github.com/mbobakov/grpc-consul-resolver"
	"github.com/me2go/go-playground/grpc/gen/services"
	"github.com/me2go/go-playground/grpc/sd/consul"
	"google.golang.org/grpc"
	"google.golang.org/grpc/health"
	"google.golang.org/grpc/health/grpc_health_v1"
)

type helloSvr struct {
	services.UnimplementedHelloServiceServer
}

func (hs *helloSvr) Hello(ctx context.Context, msg *services.Msg) (*services.Msg, error) {
	return &services.Msg{
		Msg: "server:" + msg.GetMsg(),
	}, nil
}

func httpServe() {
	ctx := context.Background()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	conn, err := grpc.Dial(
		"consul://127.0.0.1:8500/demo.app.com",
		grpc.WithInsecure(),
		grpc.WithDefaultServiceConfig(`{"loadBalancingPolicy": "round_robin"}`),
	)
	if err != nil {
		log.Fatal(err)
	}
	defer conn.Close()
	client := services.NewHelloServiceClient(conn)
	// Register gRPC server endpoint
	// Note: Make sure the gRPC server is running properly and accessible
	mux := runtime.NewServeMux()
	err = services.RegisterHelloServiceHandlerClient(ctx, mux, client)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	// Start HTTP server (and proxy calls to gRPC server endpoint)
	http.ListenAndServe(":8081", mux)
}

func main() {
	lis, err := net.Listen("tcp", ":8080")
	if err != nil {
		log.Fatalf("fail to listen: %v", err)
	}
	s := grpc.NewServer()
	services.RegisterHelloServiceServer(s, &helloSvr{})

	hc := health.NewServer()
	grpc_health_v1.RegisterHealthServer(s, hc)

	consul.Register("demo.app.com", "127.0.0.1", 8080, "127.0.0.1:8500", 10*time.Second, 10)

	go httpServe()
	if err := s.Serve(lis); err != nil {
		log.Fatal("failed to serve: %v", err)
	}

}
