package main

import (
	"context"
	"log"
	"time"

	"github.com/me2go/go-playground/grpc/protos"
	"google.golang.org/grpc"
)

func main() {
	conn, err := grpc.Dial("127.0.0.1:8080", grpc.WithInsecure(), grpc.WithBlock())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()

	c := protos.NewHelloServiceClient(conn)

	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()

	r, err := c.Hello(ctx, &protos.Msg{
		Msg: "good",
	})
	if err != nil {
		log.Fatal("could not hello: %v", err)
	}
	log.Printf("response: %v\n", r.GetMsg())
}
