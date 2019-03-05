package sync

import (
	"fmt"
	"sync"
	"time"
)

func ConcurrentReadAndWrite() {
	var a uint8 = 0x11
	var b uint8 = 0x22
	var c uint8

	var wg sync.WaitGroup
	wg.Add(2000)
	for i := 0; i < 1000; i++ {
		go func() {
			for j := 0; j < 100000; j++ {
				if time.Now().Unix()%2 == 0 {
					c = a
				} else {
					c = b
				}
			}
			wg.Done()
		}()
	}
	for i := 0; i < 1000; i++ {
		go func() {
			for j := 0; j < 1000000; j++ {
				if c != a && c != b && c != 0 {
					fmt.Printf("concurrent race:%v\n", c)
				}
			}
			wg.Done()
		}()
	}
	wg.Wait()
}
