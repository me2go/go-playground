package bench

import (
	"testing"
)

func BenchmarkSwitchType(b *testing.B) {
	vts := []interface{}{
		uint(8),
		uint8(8),
		uint16(8),
		uint32(8),
		uint64(16),
		float32(1.1),
		float64(1.1),
		int(8),
		int8(8),
		int16(8),
		int32(8),
		int64(8),
	}
	for i := 0; i < b.N; i++ {
		v := vts[i%len(vts)]
		switch v.(type) {
		case uint:
		case uint8:
		case uint16:
		case uint32:
		case uint64:
		case float32:
		case float64:
		case int:
		case int8:
		case int16:
		case int32:
		case int64:
		}
	}
}

func BenchmarkSwitch(b *testing.B) {
	for i := 0; i < b.N; i++ {
		sel := i % 22
		switch sel {
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		case 16:
		case 17:
		case 18:
		case 19:
		case 20:
		case 21:
		case 22:
		case 23:
		case 24:
		case 25:
		case 26:
		case 27:
		case 28:
		case 29:
		case 30:
		case 31:
		}
	}
}
