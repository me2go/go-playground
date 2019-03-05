"".ConcurrentReadAndWrite STEXT size=292 args=0x0 locals=0x58
	0x0000 00000 (read_memory.go:9)	TEXT	"".ConcurrentReadAndWrite(SB), $88-0
	0x0000 00000 (read_memory.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (read_memory.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (read_memory.go:9)	JLS	282
	0x0013 00019 (read_memory.go:9)	SUBQ	$88, SP
	0x0017 00023 (read_memory.go:9)	MOVQ	BP, 80(SP)
	0x001c 00028 (read_memory.go:9)	LEAQ	80(SP), BP
	0x0021 00033 (read_memory.go:9)	FUNCDATA	$0, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0021 00033 (read_memory.go:9)	FUNCDATA	$1, gclocals·a957f614eda30b1fd17d1c76fd18aecf(SB)
	0x0021 00033 (read_memory.go:9)	FUNCDATA	$3, gclocals·96839595c383af6ae8227769d90a999e(SB)
	0x0021 00033 (read_memory.go:12)	PCDATA	$2, $1
	0x0021 00033 (read_memory.go:12)	PCDATA	$0, $0
	0x0021 00033 (read_memory.go:12)	LEAQ	type.uint8(SB), AX
	0x0028 00040 (read_memory.go:12)	PCDATA	$2, $0
	0x0028 00040 (read_memory.go:12)	MOVQ	AX, (SP)
	0x002c 00044 (read_memory.go:12)	CALL	runtime.newobject(SB)
	0x0031 00049 (read_memory.go:12)	PCDATA	$2, $1
	0x0031 00049 (read_memory.go:12)	MOVQ	8(SP), AX
	0x0036 00054 (read_memory.go:12)	PCDATA	$2, $0
	0x0036 00054 (read_memory.go:12)	PCDATA	$0, $1
	0x0036 00054 (read_memory.go:12)	MOVQ	AX, "".&c+72(SP)
	0x003b 00059 (read_memory.go:14)	PCDATA	$2, $2
	0x003b 00059 (read_memory.go:14)	LEAQ	type.sync.WaitGroup(SB), CX
	0x0042 00066 (read_memory.go:14)	PCDATA	$2, $0
	0x0042 00066 (read_memory.go:14)	MOVQ	CX, (SP)
	0x0046 00070 (read_memory.go:14)	CALL	runtime.newobject(SB)
	0x004b 00075 (read_memory.go:14)	PCDATA	$2, $1
	0x004b 00075 (read_memory.go:14)	MOVQ	8(SP), AX
	0x0050 00080 (read_memory.go:14)	PCDATA	$0, $2
	0x0050 00080 (read_memory.go:14)	MOVQ	AX, "".&wg+64(SP)
	0x0055 00085 (read_memory.go:15)	PCDATA	$2, $0
	0x0055 00085 (read_memory.go:15)	MOVQ	AX, (SP)
	0x0059 00089 (read_memory.go:15)	MOVQ	$20000, 8(SP)
	0x0062 00098 (read_memory.go:15)	CALL	sync.(*WaitGroup).Add(SB)
	0x0067 00103 (read_memory.go:15)	XORL	AX, AX
	0x0069 00105 (read_memory.go:16)	JMP	174
	0x006b 00107 (read_memory.go:16)	MOVQ	AX, "".i+56(SP)
	0x0070 00112 (read_memory.go:26)	PCDATA	$2, $1
	0x0070 00112 (read_memory.go:26)	MOVQ	"".&wg+64(SP), AX
	0x0075 00117 (read_memory.go:26)	PCDATA	$2, $0
	0x0075 00117 (read_memory.go:26)	MOVQ	AX, 40(SP)
	0x007a 00122 (read_memory.go:26)	MOVB	$17, 16(SP)
	0x007f 00127 (read_memory.go:26)	PCDATA	$2, $2
	0x007f 00127 (read_memory.go:26)	MOVQ	"".&c+72(SP), CX
	0x0084 00132 (read_memory.go:26)	PCDATA	$2, $0
	0x0084 00132 (read_memory.go:26)	MOVQ	CX, 24(SP)
	0x0089 00137 (read_memory.go:26)	MOVB	$34, 32(SP)
	0x008e 00142 (read_memory.go:17)	MOVL	$32, (SP)
	0x0095 00149 (read_memory.go:17)	PCDATA	$2, $3
	0x0095 00149 (read_memory.go:17)	LEAQ	"".ConcurrentReadAndWrite.func1·f(SB), DX
	0x009c 00156 (read_memory.go:17)	PCDATA	$2, $0
	0x009c 00156 (read_memory.go:17)	MOVQ	DX, 8(SP)
	0x00a1 00161 (read_memory.go:17)	CALL	runtime.newproc(SB)
	0x00a6 00166 (read_memory.go:16)	MOVQ	"".i+56(SP), AX
	0x00ab 00171 (read_memory.go:16)	INCQ	AX
	0x00ae 00174 (read_memory.go:16)	CMPQ	AX, $10000
	0x00b4 00180 (read_memory.go:16)	JLT	107
	0x00b6 00182 (read_memory.go:16)	XORL	AX, AX
	0x00b8 00184 (read_memory.go:28)	JMP	250
	0x00ba 00186 (read_memory.go:28)	MOVQ	AX, "".i+48(SP)
	0x00bf 00191 (read_memory.go:36)	PCDATA	$2, $1
	0x00bf 00191 (read_memory.go:36)	MOVQ	"".&wg+64(SP), AX
	0x00c4 00196 (read_memory.go:36)	PCDATA	$2, $0
	0x00c4 00196 (read_memory.go:36)	MOVQ	AX, 32(SP)
	0x00c9 00201 (read_memory.go:36)	PCDATA	$2, $2
	0x00c9 00201 (read_memory.go:36)	MOVQ	"".&c+72(SP), CX
	0x00ce 00206 (read_memory.go:36)	PCDATA	$2, $0
	0x00ce 00206 (read_memory.go:36)	MOVQ	CX, 16(SP)
	0x00d3 00211 (read_memory.go:36)	MOVW	$8721, 24(SP)
	0x00da 00218 (read_memory.go:29)	MOVL	$24, (SP)
	0x00e1 00225 (read_memory.go:29)	PCDATA	$2, $3
	0x00e1 00225 (read_memory.go:29)	LEAQ	"".ConcurrentReadAndWrite.func2·f(SB), DX
	0x00e8 00232 (read_memory.go:29)	PCDATA	$2, $0
	0x00e8 00232 (read_memory.go:29)	MOVQ	DX, 8(SP)
	0x00ed 00237 (read_memory.go:29)	CALL	runtime.newproc(SB)
	0x00f2 00242 (read_memory.go:28)	MOVQ	"".i+48(SP), AX
	0x00f7 00247 (read_memory.go:28)	INCQ	AX
	0x00fa 00250 (read_memory.go:28)	CMPQ	AX, $10000
	0x0100 00256 (read_memory.go:28)	JLT	186
	0x0102 00258 (read_memory.go:38)	PCDATA	$2, $1
	0x0102 00258 (read_memory.go:38)	PCDATA	$0, $0
	0x0102 00258 (read_memory.go:38)	MOVQ	"".&wg+64(SP), AX
	0x0107 00263 (read_memory.go:38)	PCDATA	$2, $0
	0x0107 00263 (read_memory.go:38)	MOVQ	AX, (SP)
	0x010b 00267 (read_memory.go:38)	CALL	sync.(*WaitGroup).Wait(SB)
	0x0110 00272 (read_memory.go:39)	MOVQ	80(SP), BP
	0x0115 00277 (read_memory.go:39)	ADDQ	$88, SP
	0x0119 00281 (read_memory.go:39)	RET
	0x011a 00282 (read_memory.go:39)	NOP
	0x011a 00282 (read_memory.go:9)	PCDATA	$0, $-1
	0x011a 00282 (read_memory.go:9)	PCDATA	$2, $-1
	0x011a 00282 (read_memory.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x011f 00287 (read_memory.go:9)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 07  dH..%....H;a....
	0x0010 01 00 00 48 83 ec 58 48 89 6c 24 50 48 8d 6c 24  ...H..XH.l$PH.l$
	0x0020 50 48 8d 05 00 00 00 00 48 89 04 24 e8 00 00 00  PH......H..$....
	0x0030 00 48 8b 44 24 08 48 89 44 24 48 48 8d 0d 00 00  .H.D$.H.D$HH....
	0x0040 00 00 48 89 0c 24 e8 00 00 00 00 48 8b 44 24 08  ..H..$.....H.D$.
	0x0050 48 89 44 24 40 48 89 04 24 48 c7 44 24 08 20 4e  H.D$@H..$H.D$. N
	0x0060 00 00 e8 00 00 00 00 31 c0 eb 43 48 89 44 24 38  .......1..CH.D$8
	0x0070 48 8b 44 24 40 48 89 44 24 28 c6 44 24 10 11 48  H.D$@H.D$(.D$..H
	0x0080 8b 4c 24 48 48 89 4c 24 18 c6 44 24 20 22 c7 04  .L$HH.L$..D$ "..
	0x0090 24 20 00 00 00 48 8d 15 00 00 00 00 48 89 54 24  $ ...H......H.T$
	0x00a0 08 e8 00 00 00 00 48 8b 44 24 38 48 ff c0 48 3d  ......H.D$8H..H=
	0x00b0 10 27 00 00 7c b5 31 c0 eb 40 48 89 44 24 30 48  .'..|.1..@H.D$0H
	0x00c0 8b 44 24 40 48 89 44 24 20 48 8b 4c 24 48 48 89  .D$@H.D$ H.L$HH.
	0x00d0 4c 24 10 66 c7 44 24 18 11 22 c7 04 24 18 00 00  L$.f.D$.."..$...
	0x00e0 00 48 8d 15 00 00 00 00 48 89 54 24 08 e8 00 00  .H......H.T$....
	0x00f0 00 00 48 8b 44 24 30 48 ff c0 48 3d 10 27 00 00  ..H.D$0H..H=.'..
	0x0100 7c b8 48 8b 44 24 40 48 89 04 24 e8 00 00 00 00  |.H.D$@H..$.....
	0x0110 48 8b 6c 24 50 48 83 c4 58 c3 e8 00 00 00 00 e9  H.l$PH..X.......
	0x0120 dc fe ff ff                                      ....
	rel 5+4 t=16 TLS+0
	rel 36+4 t=15 type.uint8+0
	rel 45+4 t=8 runtime.newobject+0
	rel 62+4 t=15 type.sync.WaitGroup+0
	rel 71+4 t=8 runtime.newobject+0
	rel 99+4 t=8 sync.(*WaitGroup).Add+0
	rel 152+4 t=15 "".ConcurrentReadAndWrite.func1·f+0
	rel 162+4 t=8 runtime.newproc+0
	rel 228+4 t=15 "".ConcurrentReadAndWrite.func2·f+0
	rel 238+4 t=8 runtime.newproc+0
	rel 268+4 t=8 sync.(*WaitGroup).Wait+0
	rel 283+4 t=8 runtime.morestack_noctxt+0
"".ConcurrentReadAndWrite.func1 STEXT size=244 args=0x20 locals=0x28
	0x0000 00000 (read_memory.go:17)	TEXT	"".ConcurrentReadAndWrite.func1(SB), $40-32
	0x0000 00000 (read_memory.go:17)	MOVQ	(TLS), CX
	0x0009 00009 (read_memory.go:17)	CMPQ	SP, 16(CX)
	0x000d 00013 (read_memory.go:17)	JLS	234
	0x0013 00019 (read_memory.go:17)	SUBQ	$40, SP
	0x0017 00023 (read_memory.go:17)	MOVQ	BP, 32(SP)
	0x001c 00028 (read_memory.go:17)	LEAQ	32(SP), BP
	0x0021 00033 (read_memory.go:17)	FUNCDATA	$0, gclocals·7a680c56c7799a8f60d071b2f2541840(SB)
	0x0021 00033 (read_memory.go:17)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (read_memory.go:17)	FUNCDATA	$3, gclocals·ee104e299ed2e4539b82c61c5a4b843d(SB)
	0x0021 00033 (read_memory.go:17)	PCDATA	$2, $0
	0x0021 00033 (read_memory.go:17)	PCDATA	$0, $0
	0x0021 00033 (read_memory.go:17)	XORL	AX, AX
	0x0023 00035 (read_memory.go:18)	JMP	48
	0x0025 00037 (read_memory.go:18)	MOVQ	"".j+24(SP), SI
	0x002a 00042 (read_memory.go:18)	INCQ	SI
	0x002d 00045 (read_memory.go:18)	MOVQ	SI, AX
	0x0030 00048 (read_memory.go:18)	MOVQ	$100000000000, CX
	0x003a 00058 (read_memory.go:18)	CMPQ	AX, CX
	0x003d 00061 (read_memory.go:18)	JGE	210
	0x0043 00067 (read_memory.go:18)	MOVQ	AX, "".j+24(SP)
	0x0048 00072 (read_memory.go:19)	CALL	time.Now(SB)
	0x004d 00077 (read_memory.go:19)	MOVQ	8(SP), AX
	0x0052 00082 (read_memory.go:19)	MOVQ	(SP), CX
	0x0056 00086 (read_memory.go:19)	BTQ	$63, CX
	0x005b 00091 (read_memory.go:19)	JCC	195
	0x005d 00093 (read_memory.go:19)	SHLQ	$1, CX
	0x0060 00096 (read_memory.go:19)	SHRQ	$31, CX
	0x0064 00100 (read_memory.go:19)	MOVQ	$59453308800, AX
	0x006e 00110 (read_memory.go:19)	ADDQ	AX, CX
	0x0071 00113 (read_memory.go:19)	MOVQ	$-62135596800, DX
	0x007b 00123 (read_memory.go:19)	LEAQ	(DX)(CX*1), BX
	0x007f 00127 (read_memory.go:19)	MOVQ	BX, SI
	0x0082 00130 (read_memory.go:19)	SARQ	$63, BX
	0x0086 00134 (read_memory.go:19)	SHRQ	$63, BX
	0x008a 00138 (read_memory.go:19)	ADDQ	BX, CX
	0x008d 00141 (read_memory.go:19)	ADDQ	DX, CX
	0x0090 00144 (read_memory.go:19)	SARQ	$1, CX
	0x0093 00147 (read_memory.go:19)	SHLQ	$1, CX
	0x0096 00150 (read_memory.go:19)	CMPQ	SI, CX
	0x0099 00153 (read_memory.go:19)	JNE	172
	0x009b 00155 (read_memory.go:20)	MOVBLZX	"".a+48(SP), CX
	0x00a0 00160 (read_memory.go:20)	PCDATA	$2, $1
	0x00a0 00160 (read_memory.go:20)	MOVQ	"".&c+56(SP), BX
	0x00a5 00165 (read_memory.go:20)	PCDATA	$2, $0
	0x00a5 00165 (read_memory.go:20)	MOVB	CL, (BX)
	0x00a7 00167 (read_memory.go:20)	JMP	37
	0x00ac 00172 (read_memory.go:22)	MOVBLZX	"".b+64(SP), SI
	0x00b1 00177 (read_memory.go:22)	PCDATA	$2, $1
	0x00b1 00177 (read_memory.go:22)	MOVQ	"".&c+56(SP), BX
	0x00b6 00182 (read_memory.go:22)	PCDATA	$2, $0
	0x00b6 00182 (read_memory.go:22)	MOVB	SIB, (BX)
	0x00b9 00185 (read_memory.go:20)	MOVBLZX	"".a+48(SP), CX
	0x00be 00190 (read_memory.go:22)	JMP	37
	0x00c3 00195 (read_memory.go:19)	MOVQ	AX, CX
	0x00c6 00198 (read_memory.go:19)	MOVQ	$59453308800, AX
	0x00d0 00208 (read_memory.go:19)	JMP	113
	0x00d2 00210 (read_memory.go:25)	PCDATA	$2, $2
	0x00d2 00210 (read_memory.go:25)	PCDATA	$0, $1
	0x00d2 00210 (read_memory.go:25)	MOVQ	"".&wg+72(SP), AX
	0x00d7 00215 (read_memory.go:25)	PCDATA	$2, $0
	0x00d7 00215 (read_memory.go:25)	MOVQ	AX, (SP)
	0x00db 00219 (read_memory.go:25)	CALL	sync.(*WaitGroup).Done(SB)
	0x00e0 00224 (read_memory.go:26)	MOVQ	32(SP), BP
	0x00e5 00229 (read_memory.go:26)	ADDQ	$40, SP
	0x00e9 00233 (read_memory.go:26)	RET
	0x00ea 00234 (read_memory.go:26)	NOP
	0x00ea 00234 (read_memory.go:17)	PCDATA	$0, $-1
	0x00ea 00234 (read_memory.go:17)	PCDATA	$2, $-1
	0x00ea 00234 (read_memory.go:17)	CALL	runtime.morestack_noctxt(SB)
	0x00ef 00239 (read_memory.go:17)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 d7  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 28 48 89 6c 24 20 48 8d 6c 24  ...H..(H.l$ H.l$
	0x0020 20 31 c0 eb 0b 48 8b 74 24 18 48 ff c6 48 89 f0   1...H.t$.H..H..
	0x0030 48 b9 00 e8 76 48 17 00 00 00 48 39 c8 0f 8d 8f  H...vH....H9....
	0x0040 00 00 00 48 89 44 24 18 e8 00 00 00 00 48 8b 44  ...H.D$......H.D
	0x0050 24 08 48 8b 0c 24 48 0f ba e1 3f 73 66 48 d1 e1  $.H..$H...?sfH..
	0x0060 48 c1 e9 1f 48 b8 80 7f b1 d7 0d 00 00 00 48 01  H...H.........H.
	0x0070 c1 48 ba 00 09 6e 88 f1 ff ff ff 48 8d 1c 0a 48  .H...n.....H...H
	0x0080 89 de 48 c1 fb 3f 48 c1 eb 3f 48 01 d9 48 01 d1  ..H..?H..?H..H..
	0x0090 48 d1 f9 48 d1 e1 48 39 ce 75 11 0f b6 4c 24 30  H..H..H9.u...L$0
	0x00a0 48 8b 5c 24 38 88 0b e9 79 ff ff ff 0f b6 74 24  H.\$8...y.....t$
	0x00b0 40 48 8b 5c 24 38 40 88 33 0f b6 4c 24 30 e9 62  @H.\$8@.3..L$0.b
	0x00c0 ff ff ff 48 89 c1 48 b8 80 7f b1 d7 0d 00 00 00  ...H..H.........
	0x00d0 eb 9f 48 8b 44 24 48 48 89 04 24 e8 00 00 00 00  ..H.D$HH..$.....
	0x00e0 48 8b 6c 24 20 48 83 c4 28 c3 e8 00 00 00 00 e9  H.l$ H..(.......
	0x00f0 0c ff ff ff                                      ....
	rel 5+4 t=16 TLS+0
	rel 73+4 t=8 time.Now+0
	rel 220+4 t=8 sync.(*WaitGroup).Done+0
	rel 235+4 t=8 runtime.morestack_noctxt+0
"".ConcurrentReadAndWrite.func2 STEXT size=253 args=0x18 locals=0x60
	0x0000 00000 (read_memory.go:29)	TEXT	"".ConcurrentReadAndWrite.func2(SB), $96-24
	0x0000 00000 (read_memory.go:29)	MOVQ	(TLS), CX
	0x0009 00009 (read_memory.go:29)	CMPQ	SP, 16(CX)
	0x000d 00013 (read_memory.go:29)	JLS	243
	0x0013 00019 (read_memory.go:29)	SUBQ	$96, SP
	0x0017 00023 (read_memory.go:29)	MOVQ	BP, 88(SP)
	0x001c 00028 (read_memory.go:29)	LEAQ	88(SP), BP
	0x0021 00033 (read_memory.go:29)	FUNCDATA	$0, gclocals·09f4c2196049581da7c5c892d5ec195b(SB)
	0x0021 00033 (read_memory.go:29)	FUNCDATA	$1, gclocals·2dd975a5d416a941d0db91113f946ec3(SB)
	0x0021 00033 (read_memory.go:29)	FUNCDATA	$3, gclocals·969bcbbe59717e005634747749dd950c(SB)
	0x0021 00033 (read_memory.go:30)	PCDATA	$2, $0
	0x0021 00033 (read_memory.go:30)	PCDATA	$0, $0
	0x0021 00033 (read_memory.go:30)	MOVBLZX	"".a+112(SP), AX
	0x0026 00038 (read_memory.go:30)	MOVBLZX	"".b+113(SP), CX
	0x002b 00043 (read_memory.go:30)	PCDATA	$2, $1
	0x002b 00043 (read_memory.go:30)	MOVQ	"".&c+104(SP), DX
	0x0030 00048 (read_memory.go:30)	XORL	BX, BX
	0x0032 00050 (read_memory.go:30)	JMP	55
	0x0034 00052 (read_memory.go:30)	INCQ	BX
	0x0037 00055 (read_memory.go:30)	MOVQ	$1000000000000, SI
	0x0041 00065 (read_memory.go:30)	CMPQ	BX, SI
	0x0044 00068 (read_memory.go:30)	JGE	219
	0x004a 00074 (read_memory.go:30)	MOVQ	BX, "".j+64(SP)
	0x004f 00079 (read_memory.go:31)	MOVBLZX	(DX), DI
	0x0052 00082 (read_memory.go:31)	CMPB	AL, DIB
	0x0055 00085 (read_memory.go:31)	JNE	92
	0x0057 00087 (read_memory.go:31)	CMPB	CL, DIB
	0x005a 00090 (read_memory.go:31)	JEQ	52
	0x005c 00092 (read_memory.go:32)	PCDATA	$2, $0
	0x005c 00092 (read_memory.go:32)	PCDATA	$0, $1
	0x005c 00092 (read_memory.go:32)	XORPS	X0, X0
	0x005f 00095 (read_memory.go:32)	MOVUPS	X0, ""..autotmp_5+72(SP)
	0x0064 00100 (read_memory.go:32)	PCDATA	$2, $2
	0x0064 00100 (read_memory.go:32)	LEAQ	type.uint8(SB), AX
	0x006b 00107 (read_memory.go:32)	PCDATA	$2, $0
	0x006b 00107 (read_memory.go:32)	MOVQ	AX, ""..autotmp_5+72(SP)
	0x0070 00112 (read_memory.go:32)	MOVBLZX	DIB, CX
	0x0074 00116 (read_memory.go:32)	PCDATA	$2, $1
	0x0074 00116 (read_memory.go:32)	LEAQ	runtime.staticbytes(SB), DX
	0x007b 00123 (read_memory.go:32)	PCDATA	$2, $3
	0x007b 00123 (read_memory.go:32)	ADDQ	DX, CX
	0x007e 00126 (read_memory.go:32)	PCDATA	$2, $0
	0x007e 00126 (read_memory.go:32)	MOVQ	CX, ""..autotmp_5+80(SP)
	0x0083 00131 (read_memory.go:32)	PCDATA	$2, $3
	0x0083 00131 (read_memory.go:32)	LEAQ	go.string."concurrent race:%v\n"(SB), CX
	0x008a 00138 (read_memory.go:32)	PCDATA	$2, $0
	0x008a 00138 (read_memory.go:32)	MOVQ	CX, (SP)
	0x008e 00142 (read_memory.go:32)	MOVQ	$19, 8(SP)
	0x0097 00151 (read_memory.go:32)	PCDATA	$2, $4
	0x0097 00151 (read_memory.go:32)	LEAQ	""..autotmp_5+72(SP), BX
	0x009c 00156 (read_memory.go:32)	PCDATA	$2, $0
	0x009c 00156 (read_memory.go:32)	MOVQ	BX, 16(SP)
	0x00a1 00161 (read_memory.go:32)	MOVQ	$1, 24(SP)
	0x00aa 00170 (read_memory.go:32)	MOVQ	$1, 32(SP)
	0x00b3 00179 (read_memory.go:32)	CALL	fmt.Printf(SB)
	0x00b8 00184 (read_memory.go:31)	PCDATA	$0, $0
	0x00b8 00184 (read_memory.go:31)	MOVBLZX	"".a+112(SP), AX
	0x00bd 00189 (read_memory.go:31)	MOVBLZX	"".b+113(SP), CX
	0x00c2 00194 (read_memory.go:31)	PCDATA	$2, $1
	0x00c2 00194 (read_memory.go:31)	MOVQ	"".&c+104(SP), DX
	0x00c7 00199 (read_memory.go:30)	MOVQ	"".j+64(SP), BX
	0x00cc 00204 (read_memory.go:30)	MOVQ	$1000000000000, SI
	0x00d6 00214 (read_memory.go:32)	JMP	52
	0x00db 00219 (read_memory.go:35)	PCDATA	$2, $2
	0x00db 00219 (read_memory.go:35)	PCDATA	$0, $2
	0x00db 00219 (read_memory.go:35)	MOVQ	"".&wg+120(SP), AX
	0x00e0 00224 (read_memory.go:35)	PCDATA	$2, $0
	0x00e0 00224 (read_memory.go:35)	MOVQ	AX, (SP)
	0x00e4 00228 (read_memory.go:35)	CALL	sync.(*WaitGroup).Done(SB)
	0x00e9 00233 (read_memory.go:36)	MOVQ	88(SP), BP
	0x00ee 00238 (read_memory.go:36)	ADDQ	$96, SP
	0x00f2 00242 (read_memory.go:36)	RET
	0x00f3 00243 (read_memory.go:36)	NOP
	0x00f3 00243 (read_memory.go:29)	PCDATA	$0, $-1
	0x00f3 00243 (read_memory.go:29)	PCDATA	$2, $-1
	0x00f3 00243 (read_memory.go:29)	CALL	runtime.morestack_noctxt(SB)
	0x00f8 00248 (read_memory.go:29)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 e0  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 60 48 89 6c 24 58 48 8d 6c 24  ...H..`H.l$XH.l$
	0x0020 58 0f b6 44 24 70 0f b6 4c 24 71 48 8b 54 24 68  X..D$p..L$qH.T$h
	0x0030 31 db eb 03 48 ff c3 48 be 00 10 a5 d4 e8 00 00  1...H..H........
	0x0040 00 48 39 f3 0f 8d 91 00 00 00 48 89 5c 24 40 0f  .H9.......H.\$@.
	0x0050 b6 3a 40 38 f8 75 05 40 38 f9 74 d8 0f 57 c0 0f  .:@8.u.@8.t..W..
	0x0060 11 44 24 48 48 8d 05 00 00 00 00 48 89 44 24 48  .D$HH......H.D$H
	0x0070 40 0f b6 cf 48 8d 15 00 00 00 00 48 01 d1 48 89  @...H......H..H.
	0x0080 4c 24 50 48 8d 0d 00 00 00 00 48 89 0c 24 48 c7  L$PH......H..$H.
	0x0090 44 24 08 13 00 00 00 48 8d 5c 24 48 48 89 5c 24  D$.....H.\$HH.\$
	0x00a0 10 48 c7 44 24 18 01 00 00 00 48 c7 44 24 20 01  .H.D$.....H.D$ .
	0x00b0 00 00 00 e8 00 00 00 00 0f b6 44 24 70 0f b6 4c  ..........D$p..L
	0x00c0 24 71 48 8b 54 24 68 48 8b 5c 24 40 48 be 00 10  $qH.T$hH.\$@H...
	0x00d0 a5 d4 e8 00 00 00 e9 59 ff ff ff 48 8b 44 24 78  .......Y...H.D$x
	0x00e0 48 89 04 24 e8 00 00 00 00 48 8b 6c 24 58 48 83  H..$.....H.l$XH.
	0x00f0 c4 60 c3 e8 00 00 00 00 e9 03 ff ff ff           .`...........
	rel 5+4 t=16 TLS+0
	rel 103+4 t=15 type.uint8+0
	rel 119+4 t=15 runtime.staticbytes+0
	rel 134+4 t=15 go.string."concurrent race:%v\n"+0
	rel 180+4 t=8 fmt.Printf+0
	rel 229+4 t=8 sync.(*WaitGroup).Done+0
	rel 244+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=102 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	95
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	MOVBLZX	"".initdone·(SB), AX
	0x0022 00034 (<autogenerated>:1)	CMPB	AL, $1
	0x0025 00037 (<autogenerated>:1)	JLS	48
	0x0027 00039 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0027 00039 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0027 00039 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002b 00043 (<autogenerated>:1)	ADDQ	$8, SP
	0x002f 00047 (<autogenerated>:1)	RET
	0x0030 00048 (<autogenerated>:1)	JNE	57
	0x0032 00050 (<autogenerated>:1)	PCDATA	$2, $0
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $0
	0x0032 00050 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x0037 00055 (<autogenerated>:1)	UNDEF
	0x0039 00057 (<autogenerated>:1)	MOVB	$1, "".initdone·(SB)
	0x0040 00064 (<autogenerated>:1)	CALL	fmt.init(SB)
	0x0045 00069 (<autogenerated>:1)	CALL	sync.init(SB)
	0x004a 00074 (<autogenerated>:1)	CALL	time.init(SB)
	0x004f 00079 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x0056 00086 (<autogenerated>:1)	MOVQ	(SP), BP
	0x005a 00090 (<autogenerated>:1)	ADDQ	$8, SP
	0x005e 00094 (<autogenerated>:1)	RET
	0x005f 00095 (<autogenerated>:1)	NOP
	0x005f 00095 (<autogenerated>:1)	PCDATA	$0, $-1
	0x005f 00095 (<autogenerated>:1)	PCDATA	$2, $-1
	0x005f 00095 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0064 00100 (<autogenerated>:1)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 50 48  dH..%....H;a.vPH
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
	0x0020 00 00 80 f8 01 76 09 48 8b 2c 24 48 83 c4 08 c3  .....v.H.,$H....
	0x0030 75 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 01  u...............
	0x0040 e8 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 c6  ................
	0x0050 05 00 00 00 00 02 48 8b 2c 24 48 83 c4 08 c3 e8  ......H.,$H.....
	0x0060 00 00 00 00 eb 9a                                ......
	rel 5+4 t=16 TLS+0
	rel 30+4 t=15 "".initdone·+0
	rel 51+4 t=8 runtime.throwinit+0
	rel 59+4 t=15 "".initdone·+-1
	rel 65+4 t=8 fmt.init+0
	rel 70+4 t=8 sync.init+0
	rel 75+4 t=8 time.init+0
	rel 81+4 t=15 "".initdone·+-1
	rel 96+4 t=8 runtime.morestack_noctxt+0
go.info.time.Time.Unix$abstract SDWARFINFO dupok size=27
	0x0000 03 74 69 6d 65 2e 54 69 6d 65 2e 55 6e 69 78 00  .time.Time.Unix.
	0x0010 01 01 10 74 00 00 00 00 00 00 00                 ...t.......
	rel 22+4 t=28 go.info.time.Time+0
go.info.time.(*Time).unixSec$abstract SDWARFINFO dupok size=33
	0x0000 03 74 69 6d 65 2e 28 2a 54 69 6d 65 29 2e 75 6e  .time.(*Time).un
	0x0010 69 78 53 65 63 00 01 01 10 74 00 00 00 00 00 00  ixSec....t......
	0x0020 00                                               .
	rel 28+4 t=28 go.info.*time.Time+0
go.info.time.(*Time).sec$abstract SDWARFINFO dupok size=29
	0x0000 03 74 69 6d 65 2e 28 2a 54 69 6d 65 29 2e 73 65  .time.(*Time).se
	0x0010 63 00 01 01 10 74 00 00 00 00 00 00 00           c....t.......
	rel 24+4 t=28 go.info.*time.Time+0
go.loc."".ConcurrentReadAndWrite SDWARFLOC size=284
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 36 00 00 00 00 00 00 00 4b 00 00 00 00 00 00 00  6.......K.......
	0x0020 01 00 50 4b 00 00 00 00 00 00 00 24 01 00 00 00  ..PK.......$....
	0x0030 00 00 00 02 00 91 68 00 00 00 00 00 00 00 00 00  ......h.........
	0x0040 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00  ................
	0x0050 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 67  .......P.......g
	0x0060 00 00 00 00 00 00 00 01 00 50 67 00 00 00 00 00  .........Pg.....
	0x0070 00 00 24 01 00 00 00 00 00 00 02 00 91 60 00 00  ..$..........`..
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff  ................
	0x0090 ff ff ff ff ff ff 00 00 00 00 00 00 00 00 70 00  ..............p.
	0x00a0 00 00 00 00 00 00 b4 00 00 00 00 00 00 00 02 00  ................
	0x00b0 91 58 b4 00 00 00 00 00 00 00 b8 00 00 00 00 00  .X..............
	0x00c0 00 00 01 00 50 00 00 00 00 00 00 00 00 00 00 00  ....P...........
	0x00d0 00 00 00 00 00 ff ff ff ff ff ff ff ff 00 00 00  ................
	0x00e0 00 00 00 00 00 bf 00 00 00 00 00 00 00 00 01 00  ................
	0x00f0 00 00 00 00 00 02 00 91 50 00 01 00 00 00 00 00  ........P.......
	0x0100 00 07 01 00 00 00 00 00 00 01 00 50 00 00 00 00  ...........P....
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00              ............
	rel 8+8 t=1 "".ConcurrentReadAndWrite+0
	rel 79+8 t=1 "".ConcurrentReadAndWrite+0
	rel 150+8 t=1 "".ConcurrentReadAndWrite+0
	rel 221+8 t=1 "".ConcurrentReadAndWrite+0
go.info."".ConcurrentReadAndWrite SDWARFINFO size=138
	0x0000 02 22 22 2e 43 6f 6e 63 75 72 72 65 6e 74 52 65  ."".ConcurrentRe
	0x0010 61 64 41 6e 64 57 72 69 74 65 00 00 00 00 00 00  adAndWrite......
	0x0020 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00  ................
	0x0030 00 01 0a 26 63 00 0c 00 00 00 00 00 00 00 00 0a  ...&c...........
	0x0040 26 77 67 00 0e 00 00 00 00 00 00 00 00 14 00 00  &wg.............
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0a 69  ...............i
	0x0060 00 10 00 00 00 00 00 00 00 00 00 14 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 0a 69 00 1c  .............i..
	0x0080 00 00 00 00 00 00 00 00 00 00                    ..........
	rel 27+8 t=1 "".ConcurrentReadAndWrite+0
	rel 35+8 t=1 "".ConcurrentReadAndWrite+292
	rel 45+4 t=29 gofile../home/shuaibc/go/src/github.com/me2go/go-playground/sync/read_memory.go+0
	rel 55+4 t=28 go.info.*uint8+0
	rel 59+4 t=28 go.loc."".ConcurrentReadAndWrite+0
	rel 69+4 t=28 go.info.*sync.WaitGroup+0
	rel 73+4 t=28 go.loc."".ConcurrentReadAndWrite+71
	rel 78+8 t=1 "".ConcurrentReadAndWrite+105
	rel 86+8 t=1 "".ConcurrentReadAndWrite+184
	rel 98+4 t=28 go.info.int+0
	rel 102+4 t=28 go.loc."".ConcurrentReadAndWrite+142
	rel 108+8 t=1 "".ConcurrentReadAndWrite+184
	rel 116+8 t=1 "".ConcurrentReadAndWrite+258
	rel 128+4 t=28 go.info.int+0
	rel 132+4 t=28 go.loc."".ConcurrentReadAndWrite+213
go.range."".ConcurrentReadAndWrite SDWARFRANGE size=0
go.isstmt."".ConcurrentReadAndWrite SDWARFMISC size=0
	0x0000 04 13 04 0e 03 07 01 13 02 07 01 13 02 04 01 10  ................
	0x0010 02 02 01 05 02 05 01 19 02 07 01 11 02 05 01 03  ................
	0x0020 02 06 01 02 02 02 01 07 02 05 01 16 02 07 01 11  ................
	0x0030 02 05 01 03 02 06 01 02 02 05 01 09 02 14 00     ...............
go.loc."".ConcurrentReadAndWrite.func1 SDWARFLOC size=298
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 23 00 00 00 00 00 00 00 f4 00 00 00 00 00 00 00  #...............
	0x0020 02 00 91 08 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00  ................
	0x0040 00 00 00 00 23 00 00 00 00 00 00 00 f4 00 00 00  ....#...........
	0x0050 00 00 00 00 02 00 91 18 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff  ................
	0x0070 00 00 00 00 00 00 00 00 23 00 00 00 00 00 00 00  ........#.......
	0x0080 f4 00 00 00 00 00 00 00 01 00 9c 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 ff ff ff ff ff  ................
	0x00a0 ff ff ff 00 00 00 00 00 00 00 00 23 00 00 00 00  ...........#....
	0x00b0 00 00 00 f4 00 00 00 00 00 00 00 02 00 91 10 00  ................
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff  ................
	0x00d0 ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 2a  ...............*
	0x00e0 00 00 00 00 00 00 00 3a 00 00 00 00 00 00 00 02  .......:........
	0x00f0 00 91 68 3a 00 00 00 00 00 00 00 4d 00 00 00 00  ..h:.......M....
	0x0100 00 00 00 01 00 50 4d 00 00 00 00 00 00 00 d7 00  .....PM.........
	0x0110 00 00 00 00 00 00 02 00 91 68 00 00 00 00 00 00  .........h......
	0x0120 00 00 00 00 00 00 00 00 00 00                    ..........
	rel 8+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 60+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 112+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 163+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 215+8 t=1 "".ConcurrentReadAndWrite.func1+0
go.info."".ConcurrentReadAndWrite.func1 SDWARFINFO size=189
	0x0000 02 22 22 2e 43 6f 6e 63 75 72 72 65 6e 74 52 65  ."".ConcurrentRe
	0x0010 61 64 41 6e 64 57 72 69 74 65 2e 66 75 6e 63 31  adAndWrite.func1
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 01 9c 00 00 00 00 01 0f 26 63 00 00 11 00 00  .........&c.....
	0x0040 00 00 00 00 00 00 0f 26 77 67 00 00 11 00 00 00  .......&wg......
	0x0050 00 00 00 00 00 0f 61 00 00 14 00 00 00 00 00 00  ......a.........
	0x0060 00 00 0f 62 00 00 16 00 00 00 00 00 00 00 00 13  ...b............
	0x0070 00 00 00 00 0a 6a 00 12 00 00 00 00 00 00 00 00  .....j..........
	0x0080 00 06 00 00 00 00 00 00 00 00 00 00 00 00 13 06  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 d8 08 05 00  ................
	0x00a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 a9 01 00 00 00 00           .............
	rel 33+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 41+8 t=1 "".ConcurrentReadAndWrite.func1+244
	rel 51+4 t=29 gofile../home/shuaibc/go/src/github.com/me2go/go-playground/sync/read_memory.go+0
	rel 62+4 t=28 go.info.*uint8+0
	rel 66+4 t=28 go.loc."".ConcurrentReadAndWrite.func1+0
	rel 77+4 t=28 go.info.*sync.WaitGroup+0
	rel 81+4 t=28 go.loc."".ConcurrentReadAndWrite.func1+52
	rel 90+4 t=28 go.info.uint8+0
	rel 94+4 t=28 go.loc."".ConcurrentReadAndWrite.func1+104
	rel 103+4 t=28 go.info.uint8+0
	rel 107+4 t=28 go.loc."".ConcurrentReadAndWrite.func1+155
	rel 112+4 t=28 go.range."".ConcurrentReadAndWrite.func1+0
	rel 120+4 t=28 go.info.int+0
	rel 124+4 t=28 go.loc."".ConcurrentReadAndWrite.func1+207
	rel 130+4 t=28 go.info.time.Time.Unix$abstract+0
	rel 134+4 t=28 go.range."".ConcurrentReadAndWrite.func1+64
	rel 138+4 t=29 gofile../home/shuaibc/go/src/github.com/me2go/go-playground/sync/read_memory.go+0
	rel 144+4 t=28 go.info.time.(*Time).unixSec$abstract+0
	rel 148+4 t=28 go.range."".ConcurrentReadAndWrite.func1+96
	rel 152+4 t=29 gofile..$GOROOT/src/time/time.go+0
	rel 159+4 t=28 go.info.time.(*Time).sec$abstract+0
	rel 163+8 t=1 "".ConcurrentReadAndWrite.func1+86
	rel 171+8 t=1 "".ConcurrentReadAndWrite.func1+113
	rel 179+4 t=29 gofile..$GOROOT/src/time/time.go+0
go.range."".ConcurrentReadAndWrite.func1 SDWARFRANGE size=160
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 23 00 00 00 00 00 00 00 56 00 00 00 00 00 00 00  #.......V.......
	0x0020 7f 00 00 00 00 00 00 00 c3 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0070 71 00 00 00 00 00 00 00 7f 00 00 00 00 00 00 00  q...............
	0x0080 c3 00 00 00 00 00 00 00 d2 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 8+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 72+8 t=1 "".ConcurrentReadAndWrite.func1+0
	rel 104+8 t=1 "".ConcurrentReadAndWrite.func1+0
go.isstmt."".ConcurrentReadAndWrite.func1 SDWARFMISC size=0
	0x0000 04 13 04 0e 05 02 02 07 01 06 02 0a 01 0e 02 05  ................
	0x0010 01 09 02 05 01 02 02 03 01 11 02 0a 01 04 02 03  ................
	0x0020 01 19 02 05 01 0c 02 05 01 12 02 03 01 0c 02 05  ................
	0x0030 01 09 02 14 00                                   .....
go.string."concurrent race:%v\n" SRODATA dupok size=19
	0x0000 63 6f 6e 63 75 72 72 65 6e 74 20 72 61 63 65 3a  concurrent race:
	0x0010 25 76 0a                                         %v.
go.loc."".ConcurrentReadAndWrite.func2 SDWARFLOC size=298
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 26 00 00 00 00 00 00 00 fd 00 00 00 00 00 00 00  &...............
	0x0020 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 ff ff ff ff ff ff ff ff 00 00 00 00 00  ................
	0x0040 00 00 00 26 00 00 00 00 00 00 00 fd 00 00 00 00  ...&............
	0x0050 00 00 00 02 00 91 10 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 ff ff ff ff ff ff ff ff 00  ................
	0x0070 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00 fd  .......&........
	0x0080 00 00 00 00 00 00 00 02 00 91 08 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 ff ff ff ff ff  ................
	0x00a0 ff ff ff 00 00 00 00 00 00 00 00 26 00 00 00 00  ...........&....
	0x00b0 00 00 00 fd 00 00 00 00 00 00 00 02 00 91 09 00  ................
	0x00c0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff  ................
	0x00d0 ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 37  ...............7
	0x00e0 00 00 00 00 00 00 00 41 00 00 00 00 00 00 00 02  .......A........
	0x00f0 00 91 58 41 00 00 00 00 00 00 00 9c 00 00 00 00  ..XA............
	0x0100 00 00 00 01 00 53 9c 00 00 00 00 00 00 00 e9 00  .....S..........
	0x0110 00 00 00 00 00 00 02 00 91 58 00 00 00 00 00 00  .........X......
	0x0120 00 00 00 00 00 00 00 00 00 00                    ..........
	rel 8+8 t=1 "".ConcurrentReadAndWrite.func2+0
	rel 59+8 t=1 "".ConcurrentReadAndWrite.func2+0
	rel 111+8 t=1 "".ConcurrentReadAndWrite.func2+0
	rel 163+8 t=1 "".ConcurrentReadAndWrite.func2+0
	rel 215+8 t=1 "".ConcurrentReadAndWrite.func2+0
go.info."".ConcurrentReadAndWrite.func2 SDWARFINFO size=142
	0x0000 02 22 22 2e 43 6f 6e 63 75 72 72 65 6e 74 52 65  ."".ConcurrentRe
	0x0010 61 64 41 6e 64 57 72 69 74 65 2e 66 75 6e 63 32  adAndWrite.func2
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 01 9c 00 00 00 00 01 0f 26 63 00 00 1d 00 00  .........&c.....
	0x0040 00 00 00 00 00 00 0f 26 77 67 00 00 1d 00 00 00  .......&wg......
	0x0050 00 00 00 00 00 0f 61 00 00 1f 00 00 00 00 00 00  ......a.........
	0x0060 00 00 0f 62 00 00 1f 00 00 00 00 00 00 00 00 14  ...b............
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 0a 6a 00 1e 00 00 00 00 00 00 00 00 00 00        .j............
	rel 33+8 t=1 "".ConcurrentReadAndWrite.func2+0
	rel 41+8 t=1 "".ConcurrentReadAndWrite.func2+253
	rel 51+4 t=29 gofile../home/shuaibc/go/src/github.com/me2go/go-playground/sync/read_memory.go+0
	rel 62+4 t=28 go.info.*uint8+0
	rel 66+4 t=28 go.loc."".ConcurrentReadAndWrite.func2+0
	rel 77+4 t=28 go.info.*sync.WaitGroup+0
	rel 81+4 t=28 go.loc."".ConcurrentReadAndWrite.func2+51
	rel 90+4 t=28 go.info.uint8+0
	rel 94+4 t=28 go.loc."".ConcurrentReadAndWrite.func2+103
	rel 103+4 t=28 go.info.uint8+0
	rel 107+4 t=28 go.loc."".ConcurrentReadAndWrite.func2+155
	rel 112+8 t=1 "".ConcurrentReadAndWrite.func2+33
	rel 120+8 t=1 "".ConcurrentReadAndWrite.func2+219
	rel 132+4 t=28 go.info.int+0
	rel 136+4 t=28 go.loc."".ConcurrentReadAndWrite.func2+207
go.range."".ConcurrentReadAndWrite.func2 SDWARFRANGE size=0
go.isstmt."".ConcurrentReadAndWrite.func2 SDWARFMISC size=0
	0x0000 04 13 04 0e 03 05 01 0e 02 0d 01 0e 02 03 01 05  ................
	0x0010 02 03 01 02 02 03 01 7c 02 05 01 09 02 14 00     .......|.......
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 02 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+102
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 05 02 09 01 07 02 09 01 1f  ................
	0x0010 02 07 00                                         ...
"".initdone· SNOPTRBSS size=1
"".ConcurrentReadAndWrite.func1·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".ConcurrentReadAndWrite.func1+0
"".ConcurrentReadAndWrite.func2·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".ConcurrentReadAndWrite.func2+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.sync. SRODATA dupok size=7
	0x0000 00 00 04 73 79 6e 63                             ...sync
type..importpath.time. SRODATA dupok size=7
	0x0000 00 00 04 74 69 6d 65                             ...time
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·a957f614eda30b1fd17d1c76fd18aecf SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 02 03                 ...........
gclocals·96839595c383af6ae8227769d90a999e SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 00 01 02 04              ............
gclocals·7a680c56c7799a8f60d071b2f2541840 SRODATA dupok size=10
	0x0000 02 00 00 00 04 00 00 00 0a 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·ee104e299ed2e4539b82c61c5a4b843d SRODATA dupok size=11
	0x0000 03 00 00 00 04 00 00 00 00 08 01                 ...........
gclocals·09f4c2196049581da7c5c892d5ec195b SRODATA dupok size=11
	0x0000 03 00 00 00 03 00 00 00 05 05 00                 ...........
gclocals·2dd975a5d416a941d0db91113f946ec3 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 02 00                 ...........
gclocals·969bcbbe59717e005634747749dd950c SRODATA dupok size=13
	0x0000 05 00 00 00 04 00 00 00 00 04 01 02 08           .............
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
