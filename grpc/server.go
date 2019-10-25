package main

import (
	"context"
	"log"
	"net"

	"github.com/me2go/go-playground/grpc/protos"
	"google.golang.org/grpc"
)

type helloSvr struct {
}

func (hs *helloSvr) Hello(ctx context.Context, msg *protos.Msg) (*protos.Msg, error) {
	return &protos.Msg{
		Msg: "server:" + msg.GetMsg(),
	}, nil
}

func main() {
	lis, err := net.Listen("tcp", ":8080")
	if err != nil {
		log.Fatalf("fail to listen: %v", err)
	}
	s := grpc.NewServer()
	protos.RegisterHelloServiceServer(s, &helloSvr{})
	if err := s.Serve(lis); err != nil {
		log.Fatal("failed to serve: %v", err)
	}
}
