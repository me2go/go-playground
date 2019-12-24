package main

import (
	"context"
	"fmt"
	"time"
)

func main() {
	//timeCaculate()
	playTick()
}

func timeCaculate() {
	now := time.Now()
	future := now.AddDate(0, 0, 10)

	n1 := time.Date(now.Year(), now.Month(), now.Day()+10, 0, 0, 0, 0, time.UTC)
	n2 := time.Date(future.Year(), future.Month(), future.Day(), 0, 0, 0, 0, time.UTC)

	fmt.Printf("%v", n1.Equal(n2))
}

func playTick() {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()
	tick := time.NewTicker(time.Second)
outter:
	for {
		select {
		case <-tick.C:
			fmt.Printf("1 second passed\n")
		case <-ctx.Done():
			fmt.Printf("timeout: %s\n", ctx.Err())
			break outter
		}
	}
}
