
raytracer.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_ZlsRSoRK6Screen>:
  }
};


// puts out the image as PPM
std::ostream & operator<<(std::ostream & out, const Screen & screen) {
       0:	55                   	push   %rbp
       1:	48 89 e5             	mov    %rsp,%rbp
       4:	53                   	push   %rbx
       5:	48 83 ec 58          	sub    $0x58,%rsp
       9:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
       d:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
      11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
      18:	00 00 
      1a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      1e:	31 c0                	xor    %eax,%eax
  out << "P3" << std::endl;
      20:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
      24:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2b <_ZlsRSoRK6Screen+0x2b>
      2b:	48 89 c7             	mov    %rax,%rdi
      2e:	e8 00 00 00 00       	callq  33 <_ZlsRSoRK6Screen+0x33>
      33:	48 89 c2             	mov    %rax,%rdx
      36:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3d <_ZlsRSoRK6Screen+0x3d>
      3d:	48 89 c6             	mov    %rax,%rsi
      40:	48 89 d7             	mov    %rdx,%rdi
      43:	e8 00 00 00 00       	callq  48 <_ZlsRSoRK6Screen+0x48>
  out << screen.getWidth() << " " << screen.getHeight() << std::endl;
      48:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
      4c:	48 89 c7             	mov    %rax,%rdi
      4f:	e8 00 00 00 00       	callq  54 <_ZlsRSoRK6Screen+0x54>
      54:	48 89 c2             	mov    %rax,%rdx
      57:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
      5b:	48 89 d6             	mov    %rdx,%rsi
      5e:	48 89 c7             	mov    %rax,%rdi
      61:	e8 00 00 00 00       	callq  66 <_ZlsRSoRK6Screen+0x66>
      66:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 6d <_ZlsRSoRK6Screen+0x6d>
      6d:	48 89 c7             	mov    %rax,%rdi
      70:	e8 00 00 00 00       	callq  75 <_ZlsRSoRK6Screen+0x75>
      75:	48 89 c3             	mov    %rax,%rbx
      78:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
      7c:	48 89 c7             	mov    %rax,%rdi
      7f:	e8 00 00 00 00       	callq  84 <_ZlsRSoRK6Screen+0x84>
      84:	48 89 c6             	mov    %rax,%rsi
      87:	48 89 df             	mov    %rbx,%rdi
      8a:	e8 00 00 00 00       	callq  8f <_ZlsRSoRK6Screen+0x8f>
      8f:	48 89 c2             	mov    %rax,%rdx
      92:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 99 <_ZlsRSoRK6Screen+0x99>
      99:	48 89 c6             	mov    %rax,%rsi
      9c:	48 89 d7             	mov    %rdx,%rdi
      9f:	e8 00 00 00 00       	callq  a4 <_ZlsRSoRK6Screen+0xa4>
  out << "255" << std::endl;
      a4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
      a8:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # af <_ZlsRSoRK6Screen+0xaf>
      af:	48 89 c7             	mov    %rax,%rdi
      b2:	e8 00 00 00 00       	callq  b7 <_ZlsRSoRK6Screen+0xb7>
      b7:	48 89 c2             	mov    %rax,%rdx
      ba:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # c1 <_ZlsRSoRK6Screen+0xc1>
      c1:	48 89 c6             	mov    %rax,%rsi
      c4:	48 89 d7             	mov    %rdx,%rdi
      c7:	e8 00 00 00 00       	callq  cc <_ZlsRSoRK6Screen+0xcc>
  for (size_t y = 0u; y < screen.getHeight(); y++) {
      cc:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
      d3:	00 
      d4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
      d8:	48 89 c7             	mov    %rax,%rdi
      db:	e8 00 00 00 00       	callq  e0 <_ZlsRSoRK6Screen+0xe0>
      e0:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
      e4:	0f 92 c0             	setb   %al
      e7:	84 c0                	test   %al,%al
      e9:	0f 84 83 01 00 00    	je     272 <_ZlsRSoRK6Screen+0x272>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
      ef:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
      f6:	00 
      f7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
      fb:	48 89 c7             	mov    %rax,%rdi
      fe:	e8 00 00 00 00       	callq  103 <_ZlsRSoRK6Screen+0x103>
     103:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
     107:	0f 92 c0             	setb   %al
     10a:	84 c0                	test   %al,%al
     10c:	0f 84 40 01 00 00    	je     252 <_ZlsRSoRK6Screen+0x252>
      std::cout << (unsigned short) (screen.getPixel(x,y).getRed() * 255.0) << " "
     112:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     116:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     11a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     11e:	48 89 ce             	mov    %rcx,%rsi
     121:	48 89 c7             	mov    %rax,%rdi
     124:	e8 00 00 00 00       	callq  129 <_ZlsRSoRK6Screen+0x129>
     129:	66 48 0f 7e c0       	movq   %xmm0,%rax
     12e:	0f 28 c1             	movaps %xmm1,%xmm0
     131:	48 89 45 c4          	mov    %rax,-0x3c(%rbp)
     135:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
     13a:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
     13e:	48 89 c7             	mov    %rax,%rdi
     141:	e8 00 00 00 00       	callq  146 <_ZlsRSoRK6Screen+0x146>
     146:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     14a:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 152 <_ZlsRSoRK6Screen+0x152>
     151:	00 
     152:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     156:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     15a:	0f b7 c0             	movzwl %ax,%eax
     15d:	89 c6                	mov    %eax,%esi
     15f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 166 <_ZlsRSoRK6Screen+0x166>
     166:	e8 00 00 00 00       	callq  16b <_ZlsRSoRK6Screen+0x16b>
     16b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 172 <_ZlsRSoRK6Screen+0x172>
     172:	48 89 c7             	mov    %rax,%rdi
     175:	e8 00 00 00 00       	callq  17a <_ZlsRSoRK6Screen+0x17a>
     17a:	48 89 c3             	mov    %rax,%rbx
                << (unsigned short) (screen.getPixel(x,y).getGreen() * 255.0) << " "
     17d:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     181:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     185:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     189:	48 89 ce             	mov    %rcx,%rsi
     18c:	48 89 c7             	mov    %rax,%rdi
     18f:	e8 00 00 00 00       	callq  194 <_ZlsRSoRK6Screen+0x194>
     194:	66 48 0f 7e c0       	movq   %xmm0,%rax
     199:	0f 28 c1             	movaps %xmm1,%xmm0
     19c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     1a0:	f3 0f 11 45 d8       	movss  %xmm0,-0x28(%rbp)
     1a5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
     1a9:	48 89 c7             	mov    %rax,%rdi
     1ac:	e8 00 00 00 00       	callq  1b1 <_ZlsRSoRK6Screen+0x1b1>
     1b1:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     1b5:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 1bd <_ZlsRSoRK6Screen+0x1bd>
     1bc:	00 
     1bd:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     1c1:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     1c5:	0f b7 c0             	movzwl %ax,%eax
     1c8:	89 c6                	mov    %eax,%esi
     1ca:	48 89 df             	mov    %rbx,%rdi
     1cd:	e8 00 00 00 00       	callq  1d2 <_ZlsRSoRK6Screen+0x1d2>
     1d2:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d9 <_ZlsRSoRK6Screen+0x1d9>
     1d9:	48 89 c7             	mov    %rax,%rdi
     1dc:	e8 00 00 00 00       	callq  1e1 <_ZlsRSoRK6Screen+0x1e1>
     1e1:	48 89 c3             	mov    %rax,%rbx
                << (unsigned short) (screen.getPixel(x,y).getBlue() * 255.0) << " ";
     1e4:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     1e8:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     1ec:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     1f0:	48 89 ce             	mov    %rcx,%rsi
     1f3:	48 89 c7             	mov    %rax,%rdi
     1f6:	e8 00 00 00 00       	callq  1fb <_ZlsRSoRK6Screen+0x1fb>
     1fb:	66 48 0f 7e c0       	movq   %xmm0,%rax
     200:	0f 28 c1             	movaps %xmm1,%xmm0
     203:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     207:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
     20c:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     210:	48 89 c7             	mov    %rax,%rdi
     213:	e8 00 00 00 00       	callq  218 <_ZlsRSoRK6Screen+0x218>
     218:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     21c:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 224 <_ZlsRSoRK6Screen+0x224>
     223:	00 
     224:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     228:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     22c:	0f b7 c0             	movzwl %ax,%eax
     22f:	89 c6                	mov    %eax,%esi
     231:	48 89 df             	mov    %rbx,%rdi
     234:	e8 00 00 00 00       	callq  239 <_ZlsRSoRK6Screen+0x239>
     239:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 240 <_ZlsRSoRK6Screen+0x240>
     240:	48 89 c7             	mov    %rax,%rdi
     243:	e8 00 00 00 00       	callq  248 <_ZlsRSoRK6Screen+0x248>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     248:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
     24d:	e9 a5 fe ff ff       	jmpq   f7 <_ZlsRSoRK6Screen+0xf7>
    }
    std::cout << std::endl;
     252:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 259 <_ZlsRSoRK6Screen+0x259>
     259:	48 89 c6             	mov    %rax,%rsi
     25c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 263 <_ZlsRSoRK6Screen+0x263>
     263:	e8 00 00 00 00       	callq  268 <_ZlsRSoRK6Screen+0x268>
  for (size_t y = 0u; y < screen.getHeight(); y++) {
     268:	48 83 45 b0 01       	addq   $0x1,-0x50(%rbp)
     26d:	e9 62 fe ff ff       	jmpq   d4 <_ZlsRSoRK6Screen+0xd4>
  }
  std::cout << std::endl;
     272:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 279 <_ZlsRSoRK6Screen+0x279>
     279:	48 89 c6             	mov    %rax,%rsi
     27c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 283 <_ZlsRSoRK6Screen+0x283>
     283:	e8 00 00 00 00       	callq  288 <_ZlsRSoRK6Screen+0x288>
  return out;
     288:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
}
     28c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     290:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
     297:	00 00 
     299:	74 05                	je     2a0 <_ZlsRSoRK6Screen+0x2a0>
     29b:	e8 00 00 00 00       	callq  2a0 <_ZlsRSoRK6Screen+0x2a0>
     2a0:	48 83 c4 58          	add    $0x58,%rsp
     2a4:	5b                   	pop    %rbx
     2a5:	5d                   	pop    %rbp
     2a6:	c3                   	retq   

00000000000002a7 <_Z9write_bmpRSoRK6Screen>:

// writes out the image as binary BMP (for windows)
void write_bmp(std::ostream & out, const Screen & screen) {
     2a7:	55                   	push   %rbp
     2a8:	48 89 e5             	mov    %rsp,%rbp
     2ab:	53                   	push   %rbx
     2ac:	48 83 ec 58          	sub    $0x58,%rsp
     2b0:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     2b4:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     2b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     2bf:	00 00 
     2c1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     2c5:	31 c0                	xor    %eax,%eax
  unsigned long long size_of_bitmap_data = screen.getWidth() * screen.getHeight() * 4;
     2c7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     2cb:	48 89 c7             	mov    %rax,%rdi
     2ce:	e8 00 00 00 00       	callq  2d3 <_Z9write_bmpRSoRK6Screen+0x2c>
     2d3:	48 89 c3             	mov    %rax,%rbx
     2d6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     2da:	48 89 c7             	mov    %rax,%rdi
     2dd:	e8 00 00 00 00       	callq  2e2 <_Z9write_bmpRSoRK6Screen+0x3b>
     2e2:	48 0f af c3          	imul   %rbx,%rax
     2e6:	48 c1 e0 02          	shl    $0x2,%rax
     2ea:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  out.put(0x42); out.put(0x4D); // "BM"
     2ee:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     2f2:	be 42 00 00 00       	mov    $0x42,%esi
     2f7:	48 89 c7             	mov    %rax,%rdi
     2fa:	e8 00 00 00 00       	callq  2ff <_Z9write_bmpRSoRK6Screen+0x58>
     2ff:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     303:	be 4d 00 00 00       	mov    $0x4d,%esi
     308:	48 89 c7             	mov    %rax,%rdi
     30b:	e8 00 00 00 00       	callq  310 <_Z9write_bmpRSoRK6Screen+0x69>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // size of bmp file
     310:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     314:	be 00 00 00 00       	mov    $0x0,%esi
     319:	48 89 c7             	mov    %rax,%rdi
     31c:	e8 00 00 00 00       	callq  321 <_Z9write_bmpRSoRK6Screen+0x7a>
     321:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     325:	be 00 00 00 00       	mov    $0x0,%esi
     32a:	48 89 c7             	mov    %rax,%rdi
     32d:	e8 00 00 00 00       	callq  332 <_Z9write_bmpRSoRK6Screen+0x8b>
     332:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     336:	be 00 00 00 00       	mov    $0x0,%esi
     33b:	48 89 c7             	mov    %rax,%rdi
     33e:	e8 00 00 00 00       	callq  343 <_Z9write_bmpRSoRK6Screen+0x9c>
     343:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     347:	be 00 00 00 00       	mov    $0x0,%esi
     34c:	48 89 c7             	mov    %rax,%rdi
     34f:	e8 00 00 00 00       	callq  354 <_Z9write_bmpRSoRK6Screen+0xad>
  out.put(0x00); out.put(0x00);
     354:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     358:	be 00 00 00 00       	mov    $0x0,%esi
     35d:	48 89 c7             	mov    %rax,%rdi
     360:	e8 00 00 00 00       	callq  365 <_Z9write_bmpRSoRK6Screen+0xbe>
     365:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     369:	be 00 00 00 00       	mov    $0x0,%esi
     36e:	48 89 c7             	mov    %rax,%rdi
     371:	e8 00 00 00 00       	callq  376 <_Z9write_bmpRSoRK6Screen+0xcf>
  out.put(0x00); out.put(0x00);
     376:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     37a:	be 00 00 00 00       	mov    $0x0,%esi
     37f:	48 89 c7             	mov    %rax,%rdi
     382:	e8 00 00 00 00       	callq  387 <_Z9write_bmpRSoRK6Screen+0xe0>
     387:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     38b:	be 00 00 00 00       	mov    $0x0,%esi
     390:	48 89 c7             	mov    %rax,%rdi
     393:	e8 00 00 00 00       	callq  398 <_Z9write_bmpRSoRK6Screen+0xf1>
  out.put(0x36); out.put(0x00);out.put(0x00); out.put(0x00); // offset to start of pixel array
     398:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     39c:	be 36 00 00 00       	mov    $0x36,%esi
     3a1:	48 89 c7             	mov    %rax,%rdi
     3a4:	e8 00 00 00 00       	callq  3a9 <_Z9write_bmpRSoRK6Screen+0x102>
     3a9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3ad:	be 00 00 00 00       	mov    $0x0,%esi
     3b2:	48 89 c7             	mov    %rax,%rdi
     3b5:	e8 00 00 00 00       	callq  3ba <_Z9write_bmpRSoRK6Screen+0x113>
     3ba:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3be:	be 00 00 00 00       	mov    $0x0,%esi
     3c3:	48 89 c7             	mov    %rax,%rdi
     3c6:	e8 00 00 00 00       	callq  3cb <_Z9write_bmpRSoRK6Screen+0x124>
     3cb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3cf:	be 00 00 00 00       	mov    $0x0,%esi
     3d4:	48 89 c7             	mov    %rax,%rdi
     3d7:	e8 00 00 00 00       	callq  3dc <_Z9write_bmpRSoRK6Screen+0x135>
  // Header
  out.put(0x28); out.put(0x00); out.put(0x00); out.put(0x00);  // 40 bytes Number of bytes in the DIB header (from this point)
     3dc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3e0:	be 28 00 00 00       	mov    $0x28,%esi
     3e5:	48 89 c7             	mov    %rax,%rdi
     3e8:	e8 00 00 00 00       	callq  3ed <_Z9write_bmpRSoRK6Screen+0x146>
     3ed:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3f1:	be 00 00 00 00       	mov    $0x0,%esi
     3f6:	48 89 c7             	mov    %rax,%rdi
     3f9:	e8 00 00 00 00       	callq  3fe <_Z9write_bmpRSoRK6Screen+0x157>
     3fe:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     402:	be 00 00 00 00       	mov    $0x0,%esi
     407:	48 89 c7             	mov    %rax,%rdi
     40a:	e8 00 00 00 00       	callq  40f <_Z9write_bmpRSoRK6Screen+0x168>
     40f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     413:	be 00 00 00 00       	mov    $0x0,%esi
     418:	48 89 c7             	mov    %rax,%rdi
     41b:	e8 00 00 00 00       	callq  420 <_Z9write_bmpRSoRK6Screen+0x179>
  out.put( screen.getWidth() & 0xFF ); out.put( screen.getWidth() >> 8 & 0xFF );
     420:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     424:	48 89 c7             	mov    %rax,%rdi
     427:	e8 00 00 00 00       	callq  42c <_Z9write_bmpRSoRK6Screen+0x185>
     42c:	0f be d0             	movsbl %al,%edx
     42f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     433:	89 d6                	mov    %edx,%esi
     435:	48 89 c7             	mov    %rax,%rdi
     438:	e8 00 00 00 00       	callq  43d <_Z9write_bmpRSoRK6Screen+0x196>
     43d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     441:	48 89 c7             	mov    %rax,%rdi
     444:	e8 00 00 00 00       	callq  449 <_Z9write_bmpRSoRK6Screen+0x1a2>
     449:	48 c1 e8 08          	shr    $0x8,%rax
     44d:	0f be d0             	movsbl %al,%edx
     450:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     454:	89 d6                	mov    %edx,%esi
     456:	48 89 c7             	mov    %rax,%rdi
     459:	e8 00 00 00 00       	callq  45e <_Z9write_bmpRSoRK6Screen+0x1b7>
  out.put(0x00); out.put(0x00); // width in pixel
     45e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     462:	be 00 00 00 00       	mov    $0x0,%esi
     467:	48 89 c7             	mov    %rax,%rdi
     46a:	e8 00 00 00 00       	callq  46f <_Z9write_bmpRSoRK6Screen+0x1c8>
     46f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     473:	be 00 00 00 00       	mov    $0x0,%esi
     478:	48 89 c7             	mov    %rax,%rdi
     47b:	e8 00 00 00 00       	callq  480 <_Z9write_bmpRSoRK6Screen+0x1d9>
  out.put( screen.getHeight() & 0xFF ); out.put( screen.getHeight() >> 8 & 0xFF );
     480:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     484:	48 89 c7             	mov    %rax,%rdi
     487:	e8 00 00 00 00       	callq  48c <_Z9write_bmpRSoRK6Screen+0x1e5>
     48c:	0f be d0             	movsbl %al,%edx
     48f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     493:	89 d6                	mov    %edx,%esi
     495:	48 89 c7             	mov    %rax,%rdi
     498:	e8 00 00 00 00       	callq  49d <_Z9write_bmpRSoRK6Screen+0x1f6>
     49d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     4a1:	48 89 c7             	mov    %rax,%rdi
     4a4:	e8 00 00 00 00       	callq  4a9 <_Z9write_bmpRSoRK6Screen+0x202>
     4a9:	48 c1 e8 08          	shr    $0x8,%rax
     4ad:	0f be d0             	movsbl %al,%edx
     4b0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4b4:	89 d6                	mov    %edx,%esi
     4b6:	48 89 c7             	mov    %rax,%rdi
     4b9:	e8 00 00 00 00       	callq  4be <_Z9write_bmpRSoRK6Screen+0x217>
  out.put(0x00); out.put(0x00); // height in pixel
     4be:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4c2:	be 00 00 00 00       	mov    $0x0,%esi
     4c7:	48 89 c7             	mov    %rax,%rdi
     4ca:	e8 00 00 00 00       	callq  4cf <_Z9write_bmpRSoRK6Screen+0x228>
     4cf:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4d3:	be 00 00 00 00       	mov    $0x0,%esi
     4d8:	48 89 c7             	mov    %rax,%rdi
     4db:	e8 00 00 00 00       	callq  4e0 <_Z9write_bmpRSoRK6Screen+0x239>
  out.put(0x01); out.put(0x00); // 1 = number of color planes used
     4e0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4e4:	be 01 00 00 00       	mov    $0x1,%esi
     4e9:	48 89 c7             	mov    %rax,%rdi
     4ec:	e8 00 00 00 00       	callq  4f1 <_Z9write_bmpRSoRK6Screen+0x24a>
     4f1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4f5:	be 00 00 00 00       	mov    $0x0,%esi
     4fa:	48 89 c7             	mov    %rax,%rdi
     4fd:	e8 00 00 00 00       	callq  502 <_Z9write_bmpRSoRK6Screen+0x25b>
  out.put(0x18); out.put(0x00); // 24 bits per pixel (RGB)
     502:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     506:	be 18 00 00 00       	mov    $0x18,%esi
     50b:	48 89 c7             	mov    %rax,%rdi
     50e:	e8 00 00 00 00       	callq  513 <_Z9write_bmpRSoRK6Screen+0x26c>
     513:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     517:	be 00 00 00 00       	mov    $0x0,%esi
     51c:	48 89 c7             	mov    %rax,%rdi
     51f:	e8 00 00 00 00       	callq  524 <_Z9write_bmpRSoRK6Screen+0x27d>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = no compression
     524:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     528:	be 00 00 00 00       	mov    $0x0,%esi
     52d:	48 89 c7             	mov    %rax,%rdi
     530:	e8 00 00 00 00       	callq  535 <_Z9write_bmpRSoRK6Screen+0x28e>
     535:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     539:	be 00 00 00 00       	mov    $0x0,%esi
     53e:	48 89 c7             	mov    %rax,%rdi
     541:	e8 00 00 00 00       	callq  546 <_Z9write_bmpRSoRK6Screen+0x29f>
     546:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     54a:	be 00 00 00 00       	mov    $0x0,%esi
     54f:	48 89 c7             	mov    %rax,%rdi
     552:	e8 00 00 00 00       	callq  557 <_Z9write_bmpRSoRK6Screen+0x2b0>
     557:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     55b:	be 00 00 00 00       	mov    $0x0,%esi
     560:	48 89 c7             	mov    %rax,%rdi
     563:	e8 00 00 00 00       	callq  568 <_Z9write_bmpRSoRK6Screen+0x2c1>
  // size of raw bitmap data 16 bytes
  out.put(size_of_bitmap_data & 0xFF); 
     568:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     56c:	0f be d0             	movsbl %al,%edx
     56f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     573:	89 d6                	mov    %edx,%esi
     575:	48 89 c7             	mov    %rax,%rdi
     578:	e8 00 00 00 00       	callq  57d <_Z9write_bmpRSoRK6Screen+0x2d6>
  out.put(size_of_bitmap_data >> 8 & 0xFF); 
     57d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     581:	48 c1 e8 08          	shr    $0x8,%rax
     585:	0f be d0             	movsbl %al,%edx
     588:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     58c:	89 d6                	mov    %edx,%esi
     58e:	48 89 c7             	mov    %rax,%rdi
     591:	e8 00 00 00 00       	callq  596 <_Z9write_bmpRSoRK6Screen+0x2ef>
  out.put(size_of_bitmap_data >> 16 & 0xFF); 
     596:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     59a:	48 c1 e8 10          	shr    $0x10,%rax
     59e:	0f be d0             	movsbl %al,%edx
     5a1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5a5:	89 d6                	mov    %edx,%esi
     5a7:	48 89 c7             	mov    %rax,%rdi
     5aa:	e8 00 00 00 00       	callq  5af <_Z9write_bmpRSoRK6Screen+0x308>
  out.put(size_of_bitmap_data >> 32 & 0xFF); 
     5af:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     5b3:	48 c1 e8 20          	shr    $0x20,%rax
     5b7:	0f be d0             	movsbl %al,%edx
     5ba:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5be:	89 d6                	mov    %edx,%esi
     5c0:	48 89 c7             	mov    %rax,%rdi
     5c3:	e8 00 00 00 00       	callq  5c8 <_Z9write_bmpRSoRK6Screen+0x321>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); // 72 DPI resolution for printing
     5c8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5cc:	be 13 00 00 00       	mov    $0x13,%esi
     5d1:	48 89 c7             	mov    %rax,%rdi
     5d4:	e8 00 00 00 00       	callq  5d9 <_Z9write_bmpRSoRK6Screen+0x332>
     5d9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5dd:	be 0b 00 00 00       	mov    $0xb,%esi
     5e2:	48 89 c7             	mov    %rax,%rdi
     5e5:	e8 00 00 00 00       	callq  5ea <_Z9write_bmpRSoRK6Screen+0x343>
     5ea:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5ee:	be 00 00 00 00       	mov    $0x0,%esi
     5f3:	48 89 c7             	mov    %rax,%rdi
     5f6:	e8 00 00 00 00       	callq  5fb <_Z9write_bmpRSoRK6Screen+0x354>
     5fb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5ff:	be 00 00 00 00       	mov    $0x0,%esi
     604:	48 89 c7             	mov    %rax,%rdi
     607:	e8 00 00 00 00       	callq  60c <_Z9write_bmpRSoRK6Screen+0x365>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); //           "
     60c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     610:	be 13 00 00 00       	mov    $0x13,%esi
     615:	48 89 c7             	mov    %rax,%rdi
     618:	e8 00 00 00 00       	callq  61d <_Z9write_bmpRSoRK6Screen+0x376>
     61d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     621:	be 0b 00 00 00       	mov    $0xb,%esi
     626:	48 89 c7             	mov    %rax,%rdi
     629:	e8 00 00 00 00       	callq  62e <_Z9write_bmpRSoRK6Screen+0x387>
     62e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     632:	be 00 00 00 00       	mov    $0x0,%esi
     637:	48 89 c7             	mov    %rax,%rdi
     63a:	e8 00 00 00 00       	callq  63f <_Z9write_bmpRSoRK6Screen+0x398>
     63f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     643:	be 00 00 00 00       	mov    $0x0,%esi
     648:	48 89 c7             	mov    %rax,%rdi
     64b:	e8 00 00 00 00       	callq  650 <_Z9write_bmpRSoRK6Screen+0x3a9>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 colors in the palette
     650:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     654:	be 00 00 00 00       	mov    $0x0,%esi
     659:	48 89 c7             	mov    %rax,%rdi
     65c:	e8 00 00 00 00       	callq  661 <_Z9write_bmpRSoRK6Screen+0x3ba>
     661:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     665:	be 00 00 00 00       	mov    $0x0,%esi
     66a:	48 89 c7             	mov    %rax,%rdi
     66d:	e8 00 00 00 00       	callq  672 <_Z9write_bmpRSoRK6Screen+0x3cb>
     672:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     676:	be 00 00 00 00       	mov    $0x0,%esi
     67b:	48 89 c7             	mov    %rax,%rdi
     67e:	e8 00 00 00 00       	callq  683 <_Z9write_bmpRSoRK6Screen+0x3dc>
     683:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     687:	be 00 00 00 00       	mov    $0x0,%esi
     68c:	48 89 c7             	mov    %rax,%rdi
     68f:	e8 00 00 00 00       	callq  694 <_Z9write_bmpRSoRK6Screen+0x3ed>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = all colors are important
     694:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     698:	be 00 00 00 00       	mov    $0x0,%esi
     69d:	48 89 c7             	mov    %rax,%rdi
     6a0:	e8 00 00 00 00       	callq  6a5 <_Z9write_bmpRSoRK6Screen+0x3fe>
     6a5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6a9:	be 00 00 00 00       	mov    $0x0,%esi
     6ae:	48 89 c7             	mov    %rax,%rdi
     6b1:	e8 00 00 00 00       	callq  6b6 <_Z9write_bmpRSoRK6Screen+0x40f>
     6b6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6ba:	be 00 00 00 00       	mov    $0x0,%esi
     6bf:	48 89 c7             	mov    %rax,%rdi
     6c2:	e8 00 00 00 00       	callq  6c7 <_Z9write_bmpRSoRK6Screen+0x420>
     6c7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6cb:	be 00 00 00 00       	mov    $0x0,%esi
     6d0:	48 89 c7             	mov    %rax,%rdi
     6d3:	e8 00 00 00 00       	callq  6d8 <_Z9write_bmpRSoRK6Screen+0x431>
  // start of pixel map array, 4 byte alignment padding at end of line if nedded
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     6d8:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
     6df:	00 
     6e0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     6e4:	48 89 c7             	mov    %rax,%rdi
     6e7:	e8 00 00 00 00       	callq  6ec <_Z9write_bmpRSoRK6Screen+0x445>
     6ec:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
     6f0:	0f 92 c0             	setb   %al
     6f3:	84 c0                	test   %al,%al
     6f5:	0f 84 ac 01 00 00    	je     8a7 <_Z9write_bmpRSoRK6Screen+0x600>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     6fb:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     702:	00 
     703:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     707:	48 89 c7             	mov    %rax,%rdi
     70a:	e8 00 00 00 00       	callq  70f <_Z9write_bmpRSoRK6Screen+0x468>
     70f:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
     713:	0f 92 c0             	setb   %al
     716:	84 c0                	test   %al,%al
     718:	0f 84 45 01 00 00    	je     863 <_Z9write_bmpRSoRK6Screen+0x5bc>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getRed() * 255.0) ) & 0xFF );
     71e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     722:	48 89 c7             	mov    %rax,%rdi
     725:	e8 00 00 00 00       	callq  72a <_Z9write_bmpRSoRK6Screen+0x483>
     72a:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     72e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     732:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     736:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     73a:	48 89 ce             	mov    %rcx,%rsi
     73d:	48 89 c7             	mov    %rax,%rdi
     740:	e8 00 00 00 00       	callq  745 <_Z9write_bmpRSoRK6Screen+0x49e>
     745:	66 48 0f 7e c0       	movq   %xmm0,%rax
     74a:	0f 28 c1             	movaps %xmm1,%xmm0
     74d:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     751:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
     756:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     75a:	48 89 c7             	mov    %rax,%rdi
     75d:	e8 00 00 00 00       	callq  762 <_Z9write_bmpRSoRK6Screen+0x4bb>
     762:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     766:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 76e <_Z9write_bmpRSoRK6Screen+0x4c7>
     76d:	00 
     76e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     772:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     776:	0f be d0             	movsbl %al,%edx
     779:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     77d:	89 d6                	mov    %edx,%esi
     77f:	48 89 c7             	mov    %rax,%rdi
     782:	e8 00 00 00 00       	callq  787 <_Z9write_bmpRSoRK6Screen+0x4e0>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     787:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     78b:	48 89 c7             	mov    %rax,%rdi
     78e:	e8 00 00 00 00       	callq  793 <_Z9write_bmpRSoRK6Screen+0x4ec>
     793:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     797:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     79b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     79f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7a3:	48 89 ce             	mov    %rcx,%rsi
     7a6:	48 89 c7             	mov    %rax,%rdi
     7a9:	e8 00 00 00 00       	callq  7ae <_Z9write_bmpRSoRK6Screen+0x507>
     7ae:	66 48 0f 7e c0       	movq   %xmm0,%rax
     7b3:	0f 28 c1             	movaps %xmm1,%xmm0
     7b6:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     7ba:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
     7bf:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     7c3:	48 89 c7             	mov    %rax,%rdi
     7c6:	e8 00 00 00 00       	callq  7cb <_Z9write_bmpRSoRK6Screen+0x524>
     7cb:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     7cf:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 7d7 <_Z9write_bmpRSoRK6Screen+0x530>
     7d6:	00 
     7d7:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     7db:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     7df:	0f be d0             	movsbl %al,%edx
     7e2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     7e6:	89 d6                	mov    %edx,%esi
     7e8:	48 89 c7             	mov    %rax,%rdi
     7eb:	e8 00 00 00 00       	callq  7f0 <_Z9write_bmpRSoRK6Screen+0x549>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     7f0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7f4:	48 89 c7             	mov    %rax,%rdi
     7f7:	e8 00 00 00 00       	callq  7fc <_Z9write_bmpRSoRK6Screen+0x555>
     7fc:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     800:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     804:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     808:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     80c:	48 89 ce             	mov    %rcx,%rsi
     80f:	48 89 c7             	mov    %rax,%rdi
     812:	e8 00 00 00 00       	callq  817 <_Z9write_bmpRSoRK6Screen+0x570>
     817:	66 48 0f 7e c0       	movq   %xmm0,%rax
     81c:	0f 28 c1             	movaps %xmm1,%xmm0
     81f:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     823:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
     828:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     82c:	48 89 c7             	mov    %rax,%rdi
     82f:	e8 00 00 00 00       	callq  834 <_Z9write_bmpRSoRK6Screen+0x58d>
     834:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
     838:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 840 <_Z9write_bmpRSoRK6Screen+0x599>
     83f:	00 
     840:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     844:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
     848:	0f be d0             	movsbl %al,%edx
     84b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     84f:	89 d6                	mov    %edx,%esi
     851:	48 89 c7             	mov    %rax,%rdi
     854:	e8 00 00 00 00       	callq  859 <_Z9write_bmpRSoRK6Screen+0x5b2>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     859:	48 83 45 c0 01       	addq   $0x1,-0x40(%rbp)
     85e:	e9 a0 fe ff ff       	jmpq   703 <_Z9write_bmpRSoRK6Screen+0x45c>
    }
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     863:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     86a:	00 
     86b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     86f:	48 89 c7             	mov    %rax,%rdi
     872:	e8 00 00 00 00       	callq  877 <_Z9write_bmpRSoRK6Screen+0x5d0>
     877:	83 e0 03             	and    $0x3,%eax
     87a:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
     87e:	0f 92 c0             	setb   %al
     881:	84 c0                	test   %al,%al
     883:	74 18                	je     89d <_Z9write_bmpRSoRK6Screen+0x5f6>
      out.put( 0x00 );
     885:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     889:	be 00 00 00 00       	mov    $0x0,%esi
     88e:	48 89 c7             	mov    %rax,%rdi
     891:	e8 00 00 00 00       	callq  896 <_Z9write_bmpRSoRK6Screen+0x5ef>
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     896:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
     89b:	eb ce                	jmp    86b <_Z9write_bmpRSoRK6Screen+0x5c4>
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     89d:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
     8a2:	e9 39 fe ff ff       	jmpq   6e0 <_Z9write_bmpRSoRK6Screen+0x439>
    }
  } 
}
     8a7:	90                   	nop
     8a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     8b3:	00 00 
     8b5:	74 05                	je     8bc <_Z9write_bmpRSoRK6Screen+0x615>
     8b7:	e8 00 00 00 00       	callq  8bc <_Z9write_bmpRSoRK6Screen+0x615>
     8bc:	48 83 c4 58          	add    $0x58,%rsp
     8c0:	5b                   	pop    %rbx
     8c1:	5d                   	pop    %rbp
     8c2:	c3                   	retq   

00000000000008c3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene>:

// Reads in 3d scene from Wavefront.obj
// only triangles are read in, no polygones, no normals
// only lines starting with v (vertexes) and f (faces) are read in
// other lines are ignored
void read_wavefront(std::ifstream & in, Scene & scene) {
     8c3:	55                   	push   %rbp
     8c4:	48 89 e5             	mov    %rsp,%rbp
     8c7:	41 57                	push   %r15
     8c9:	41 56                	push   %r14
     8cb:	41 55                	push   %r13
     8cd:	41 54                	push   %r12
     8cf:	53                   	push   %rbx
     8d0:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
     8d7:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
     8de:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
     8e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     8ec:	00 00 
     8ee:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     8f2:	31 c0                	xor    %eax,%eax
  std::vector< Vector<FLOAT, 3> > vertices;
     8f4:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     8fb:	48 89 c7             	mov    %rax,%rdi
     8fe:	e8 00 00 00 00       	callq  903 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x40>
  std::vector< Vector<FLOAT, 3> > normals;
     903:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     90a:	48 89 c7             	mov    %rax,%rdi
     90d:	e8 00 00 00 00       	callq  912 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4f>
  size_t no_of_triangles = 0u;
     912:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
     919:	00 00 00 00 
  Vector<FLOAT, 3> vertice;
     91d:	48 8d 85 5c ff ff ff 	lea    -0xa4(%rbp),%rax
     924:	48 89 c7             	mov    %rax,%rdi
     927:	e8 00 00 00 00       	callq  92c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x69>
  Vector<FLOAT, 3> normal;
     92c:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
     933:	48 89 c7             	mov    %rax,%rdi
     936:	e8 00 00 00 00       	callq  93b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x78>
  char c;
  while (in >> c) {
     93b:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     942:	48 8d 95 e7 fe ff ff 	lea    -0x119(%rbp),%rdx
     949:	48 89 d6             	mov    %rdx,%rsi
     94c:	48 89 c7             	mov    %rax,%rdi
     94f:	e8 00 00 00 00       	callq  954 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x91>
     954:	48 8b 10             	mov    (%rax),%rdx
     957:	48 83 ea 18          	sub    $0x18,%rdx
     95b:	48 8b 12             	mov    (%rdx),%rdx
     95e:	48 01 d0             	add    %rdx,%rax
     961:	48 89 c7             	mov    %rax,%rdi
     964:	e8 00 00 00 00       	callq  969 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa6>
     969:	84 c0                	test   %al,%al
     96b:	0f 84 77 07 00 00    	je     10e8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x825>
    if (c == 'v' && in.peek() == ' ') {
     971:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     978:	3c 76                	cmp    $0x76,%al
     97a:	75 1b                	jne    997 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd4>
     97c:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     983:	48 89 c7             	mov    %rax,%rdi
     986:	e8 00 00 00 00       	callq  98b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
     98b:	83 f8 20             	cmp    $0x20,%eax
     98e:	75 07                	jne    997 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd4>
     990:	b8 01 00 00 00       	mov    $0x1,%eax
     995:	eb 05                	jmp    99c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9>
     997:	b8 00 00 00 00       	mov    $0x0,%eax
     99c:	84 c0                	test   %al,%al
     99e:	0f 84 e9 00 00 00    	je     a8d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1ca>
       FLOAT x, y, z;
       in >> x;
     9a4:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9ab:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     9b2:	48 89 d6             	mov    %rdx,%rsi
     9b5:	48 89 c7             	mov    %rax,%rdi
     9b8:	e8 00 00 00 00       	callq  9bd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xfa>
       in >> y;
     9bd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9c4:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
     9cb:	48 89 d6             	mov    %rdx,%rsi
     9ce:	48 89 c7             	mov    %rax,%rdi
     9d1:	e8 00 00 00 00       	callq  9d6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x113>
       in >> z;
     9d6:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9dd:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     9e4:	48 89 d6             	mov    %rdx,%rsi
     9e7:	48 89 c7             	mov    %rax,%rdi
     9ea:	e8 00 00 00 00       	callq  9ef <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x12c>
       vertice = Vector<FLOAT, 3>( {x, y, z} );
     9ef:	f3 0f 10 85 00 ff ff 	movss  -0x100(%rbp),%xmm0
     9f6:	ff 
     9f7:	f3 0f 11 85 74 ff ff 	movss  %xmm0,-0x8c(%rbp)
     9fe:	ff 
     9ff:	f3 0f 10 85 08 ff ff 	movss  -0xf8(%rbp),%xmm0
     a06:	ff 
     a07:	f3 0f 11 85 78 ff ff 	movss  %xmm0,-0x88(%rbp)
     a0e:	ff 
     a0f:	f3 0f 10 85 10 ff ff 	movss  -0xf0(%rbp),%xmm0
     a16:	ff 
     a17:	f3 0f 11 85 7c ff ff 	movss  %xmm0,-0x84(%rbp)
     a1e:	ff 
     a1f:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
     a26:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
     a2d:	48 c7 85 b8 fe ff ff 	movq   $0x3,-0x148(%rbp)
     a34:	03 00 00 00 
     a38:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
     a3f:	48 8b 95 b8 fe ff ff 	mov    -0x148(%rbp),%rdx
     a46:	48 89 c1             	mov    %rax,%rcx
     a49:	48 89 d3             	mov    %rdx,%rbx
     a4c:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     a50:	48 89 ce             	mov    %rcx,%rsi
     a53:	48 89 c7             	mov    %rax,%rdi
     a56:	e8 00 00 00 00       	callq  a5b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x198>
     a5b:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     a5f:	48 89 85 5c ff ff ff 	mov    %rax,-0xa4(%rbp)
     a66:	8b 45 88             	mov    -0x78(%rbp),%eax
     a69:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
       vertices.push_back( vertice ); 
     a6f:	48 8d 95 5c ff ff ff 	lea    -0xa4(%rbp),%rdx
     a76:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     a7d:	48 89 d6             	mov    %rdx,%rsi
     a80:	48 89 c7             	mov    %rax,%rdi
     a83:	e8 00 00 00 00       	callq  a88 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1c5>
     a88:	e9 3a 06 00 00       	jmpq   10c7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
    } else if (c == 'f' && in.peek() == ' ') {
     a8d:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     a94:	3c 66                	cmp    $0x66,%al
     a96:	75 1b                	jne    ab3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f0>
     a98:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     a9f:	48 89 c7             	mov    %rax,%rdi
     aa2:	e8 00 00 00 00       	callq  aa7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1e4>
     aa7:	83 f8 20             	cmp    $0x20,%eax
     aaa:	75 07                	jne    ab3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f0>
     aac:	b8 01 00 00 00       	mov    $0x1,%eax
     ab1:	eb 05                	jmp    ab8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f5>
     ab3:	b8 00 00 00 00       	mov    $0x0,%eax
     ab8:	84 c0                	test   %al,%al
     aba:	0f 84 ba 04 00 00    	je     f7a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6b7>

       size_t xv, yv, zv;
       size_t xn = 0, yn, zn;
     ac0:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
     ac7:	00 00 00 00 
       in >> xv;
     acb:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     ad2:	48 8d 95 e8 fe ff ff 	lea    -0x118(%rbp),%rdx
     ad9:	48 89 d6             	mov    %rdx,%rsi
     adc:	48 89 c7             	mov    %rax,%rdi
     adf:	e8 00 00 00 00       	callq  ae4 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x221>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     ae4:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     aeb:	48 89 c7             	mov    %rax,%rdi
     aee:	e8 00 00 00 00       	callq  af3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x230>
     af3:	83 f8 2f             	cmp    $0x2f,%eax
     af6:	0f 94 c0             	sete   %al
     af9:	84 c0                	test   %al,%al
     afb:	74 0f                	je     b0c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x249>
     afd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b04:	48 89 c7             	mov    %rax,%rdi
     b07:	e8 00 00 00 00       	callq  b0c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x249>
       if (in.peek() == '/') { in.ignore(); in >> xn;}
     b0c:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b13:	48 89 c7             	mov    %rax,%rdi
     b16:	e8 00 00 00 00       	callq  b1b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x258>
     b1b:	83 f8 2f             	cmp    $0x2f,%eax
     b1e:	0f 94 c0             	sete   %al
     b21:	84 c0                	test   %al,%al
     b23:	74 28                	je     b4d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x28a>
     b25:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b2c:	48 89 c7             	mov    %rax,%rdi
     b2f:	e8 00 00 00 00       	callq  b34 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x271>
     b34:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b3b:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     b42:	48 89 d6             	mov    %rdx,%rsi
     b45:	48 89 c7             	mov    %rax,%rdi
     b48:	e8 00 00 00 00       	callq  b4d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x28a>
       in >> yv;
     b4d:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b54:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
     b5b:	48 89 d6             	mov    %rdx,%rsi
     b5e:	48 89 c7             	mov    %rax,%rdi
     b61:	e8 00 00 00 00       	callq  b66 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2a3>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     b66:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b6d:	48 89 c7             	mov    %rax,%rdi
     b70:	e8 00 00 00 00       	callq  b75 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2b2>
     b75:	83 f8 2f             	cmp    $0x2f,%eax
     b78:	0f 94 c0             	sete   %al
     b7b:	84 c0                	test   %al,%al
     b7d:	74 0f                	je     b8e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2cb>
     b7f:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b86:	48 89 c7             	mov    %rax,%rdi
     b89:	e8 00 00 00 00       	callq  b8e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2cb>
       if (in.peek() == '/') { in.ignore(); in >> yn;}
     b8e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b95:	48 89 c7             	mov    %rax,%rdi
     b98:	e8 00 00 00 00       	callq  b9d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2da>
     b9d:	83 f8 2f             	cmp    $0x2f,%eax
     ba0:	0f 94 c0             	sete   %al
     ba3:	84 c0                	test   %al,%al
     ba5:	74 28                	je     bcf <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x30c>
     ba7:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bae:	48 89 c7             	mov    %rax,%rdi
     bb1:	e8 00 00 00 00       	callq  bb6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2f3>
     bb6:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bbd:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
     bc4:	48 89 d6             	mov    %rdx,%rsi
     bc7:	48 89 c7             	mov    %rax,%rdi
     bca:	e8 00 00 00 00       	callq  bcf <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x30c>
       in >> zv;
     bcf:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bd6:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
     bdd:	48 89 d6             	mov    %rdx,%rsi
     be0:	48 89 c7             	mov    %rax,%rdi
     be3:	e8 00 00 00 00       	callq  be8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x325>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     be8:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bef:	48 89 c7             	mov    %rax,%rdi
     bf2:	e8 00 00 00 00       	callq  bf7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x334>
     bf7:	83 f8 2f             	cmp    $0x2f,%eax
     bfa:	0f 94 c0             	sete   %al
     bfd:	84 c0                	test   %al,%al
     bff:	74 0f                	je     c10 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x34d>
     c01:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c08:	48 89 c7             	mov    %rax,%rdi
     c0b:	e8 00 00 00 00       	callq  c10 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x34d>
       if (in.peek() == '/') { in.ignore(); in >> zn;}
     c10:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c17:	48 89 c7             	mov    %rax,%rdi
     c1a:	e8 00 00 00 00       	callq  c1f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x35c>
     c1f:	83 f8 2f             	cmp    $0x2f,%eax
     c22:	0f 94 c0             	sete   %al
     c25:	84 c0                	test   %al,%al
     c27:	74 28                	je     c51 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
     c29:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c30:	48 89 c7             	mov    %rax,%rdi
     c33:	e8 00 00 00 00       	callq  c38 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x375>
     c38:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c3f:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     c46:	48 89 d6             	mov    %rdx,%rsi
     c49:	48 89 c7             	mov    %rax,%rdi
     c4c:	e8 00 00 00 00       	callq  c51 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
       
       if (reverse_vertice_order) {
     c51:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # c58 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x395>
     c58:	84 c0                	test   %al,%al
     c5a:	74 32                	je     c8e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3cb>
         std::swap(yv, zv);
     c5c:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
     c63:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
     c6a:	48 89 d6             	mov    %rdx,%rsi
     c6d:	48 89 c7             	mov    %rax,%rdi
     c70:	e8 00 00 00 00       	callq  c75 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3b2>
         std::swap(yn, zn);
     c75:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     c7c:	48 8d 85 08 ff ff ff 	lea    -0xf8(%rbp),%rax
     c83:	48 89 d6             	mov    %rdx,%rsi
     c86:	48 89 c7             	mov    %rax,%rdi
     c89:	e8 00 00 00 00       	callq  c8e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3cb>
       }
       if (xn == 0) { // no normals 
     c8e:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
     c95:	48 85 c0             	test   %rax,%rax
     c98:	0f 85 10 01 00 00    	jne    dae <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4eb>
         scene.add(Triangle<FLOAT> ( {vertices[xv - 1], vertices[yv - 1], vertices[zv - 1]} ));
     c9e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     ca5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     ca9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cb0:	48 89 d6             	mov    %rdx,%rsi
     cb3:	48 89 c7             	mov    %rax,%rdi
     cb6:	e8 00 00 00 00       	callq  cbb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3f8>
     cbb:	48 89 c3             	mov    %rax,%rbx
     cbe:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     cc5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     cc9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cd0:	48 89 d6             	mov    %rdx,%rsi
     cd3:	48 89 c7             	mov    %rax,%rdi
     cd6:	e8 00 00 00 00       	callq  cdb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x418>
     cdb:	49 89 c4             	mov    %rax,%r12
     cde:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     ce5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     ce9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cf0:	48 89 d6             	mov    %rdx,%rsi
     cf3:	48 89 c7             	mov    %rax,%rdi
     cf6:	e8 00 00 00 00       	callq  cfb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x438>
     cfb:	4c 8b 08             	mov    (%rax),%r9
     cfe:	44 8b 40 08          	mov    0x8(%rax),%r8d
     d02:	49 8b 3c 24          	mov    (%r12),%rdi
     d06:	41 8b 74 24 08       	mov    0x8(%r12),%esi
     d0b:	48 8b 0b             	mov    (%rbx),%rcx
     d0e:	8b 53 08             	mov    0x8(%rbx),%edx
     d11:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     d15:	4c 89 8d a8 fe ff ff 	mov    %r9,-0x158(%rbp)
     d1c:	f3 0f 7e a5 a8 fe ff 	movq   -0x158(%rbp),%xmm4
     d23:	ff 
     d24:	4c 89 85 a8 fe ff ff 	mov    %r8,-0x158(%rbp)
     d2b:	f3 0f 7e ad a8 fe ff 	movq   -0x158(%rbp),%xmm5
     d32:	ff 
     d33:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
     d3a:	f3 0f 7e 95 a8 fe ff 	movq   -0x158(%rbp),%xmm2
     d41:	ff 
     d42:	48 89 b5 a8 fe ff ff 	mov    %rsi,-0x158(%rbp)
     d49:	f3 0f 7e 9d a8 fe ff 	movq   -0x158(%rbp),%xmm3
     d50:	ff 
     d51:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
     d58:	f3 0f 7e 85 a8 fe ff 	movq   -0x158(%rbp),%xmm0
     d5f:	ff 
     d60:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
     d67:	f3 0f 7e 8d a8 fe ff 	movq   -0x158(%rbp),%xmm1
     d6e:	ff 
     d6f:	48 89 c7             	mov    %rax,%rdi
     d72:	e8 00 00 00 00       	callq  d77 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4b4>
     d77:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     d7e:	48 83 ec 08          	sub    $0x8,%rsp
     d82:	ff 75 c0             	pushq  -0x40(%rbp)
     d85:	ff 75 b8             	pushq  -0x48(%rbp)
     d88:	ff 75 b0             	pushq  -0x50(%rbp)
     d8b:	ff 75 a8             	pushq  -0x58(%rbp)
     d8e:	ff 75 a0             	pushq  -0x60(%rbp)
     d91:	ff 75 98             	pushq  -0x68(%rbp)
     d94:	ff 75 90             	pushq  -0x70(%rbp)
     d97:	ff 75 88             	pushq  -0x78(%rbp)
     d9a:	ff 75 80             	pushq  -0x80(%rbp)
     d9d:	48 89 c7             	mov    %rax,%rdi
     da0:	e8 00 00 00 00       	callq  da5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4e2>
     da5:	48 83 c4 50          	add    $0x50,%rsp
     da9:	e9 bf 01 00 00       	jmpq   f6d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6aa>
       } else {
         scene.add(Triangle<FLOAT> ( {vertices[xv - 1], vertices[yv - 1], vertices[zv - 1], normals[xn - 1], normals[yn - 1], normals[zn - 1]} ));
     dae:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     db5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     db9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     dc0:	48 89 d6             	mov    %rdx,%rsi
     dc3:	48 89 c7             	mov    %rax,%rdi
     dc6:	e8 00 00 00 00       	callq  dcb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x508>
     dcb:	48 89 c3             	mov    %rax,%rbx
     dce:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     dd5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     dd9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     de0:	48 89 d6             	mov    %rdx,%rsi
     de3:	48 89 c7             	mov    %rax,%rdi
     de6:	e8 00 00 00 00       	callq  deb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x528>
     deb:	49 89 c4             	mov    %rax,%r12
     dee:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     df5:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     df9:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     e00:	48 89 d6             	mov    %rdx,%rsi
     e03:	48 89 c7             	mov    %rax,%rdi
     e06:	e8 00 00 00 00       	callq  e0b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x548>
     e0b:	49 89 c5             	mov    %rax,%r13
     e0e:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
     e15:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e19:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e20:	48 89 d6             	mov    %rdx,%rsi
     e23:	48 89 c7             	mov    %rax,%rdi
     e26:	e8 00 00 00 00       	callq  e2b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x568>
     e2b:	49 89 c6             	mov    %rax,%r14
     e2e:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
     e35:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e39:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e40:	48 89 d6             	mov    %rdx,%rsi
     e43:	48 89 c7             	mov    %rax,%rdi
     e46:	e8 00 00 00 00       	callq  e4b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x588>
     e4b:	49 89 c7             	mov    %rax,%r15
     e4e:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
     e55:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e59:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e60:	48 89 d6             	mov    %rdx,%rsi
     e63:	48 89 c7             	mov    %rax,%rdi
     e66:	e8 00 00 00 00       	callq  e6b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x5a8>
     e6b:	48 89 c1             	mov    %rax,%rcx
     e6e:	49 8b 06             	mov    (%r14),%rax
     e71:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
     e78:	41 8b 46 08          	mov    0x8(%r14),%eax
     e7c:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
     e83:	4d 8b 75 00          	mov    0x0(%r13),%r14
     e87:	45 8b 5d 08          	mov    0x8(%r13),%r11d
     e8b:	4d 8b 14 24          	mov    (%r12),%r10
     e8f:	45 8b 4c 24 08       	mov    0x8(%r12),%r9d
     e94:	4c 8b 03             	mov    (%rbx),%r8
     e97:	8b 7b 08             	mov    0x8(%rbx),%edi
     e9a:	48 8d 75 80          	lea    -0x80(%rbp),%rsi
     e9e:	48 83 ec 10          	sub    $0x10,%rsp
     ea2:	48 89 e2             	mov    %rsp,%rdx
     ea5:	48 8b 01             	mov    (%rcx),%rax
     ea8:	48 89 02             	mov    %rax,(%rdx)
     eab:	8b 41 08             	mov    0x8(%rcx),%eax
     eae:	89 42 08             	mov    %eax,0x8(%rdx)
     eb1:	48 83 ec 10          	sub    $0x10,%rsp
     eb5:	48 89 e2             	mov    %rsp,%rdx
     eb8:	49 8b 07             	mov    (%r15),%rax
     ebb:	48 89 02             	mov    %rax,(%rdx)
     ebe:	41 8b 47 08          	mov    0x8(%r15),%eax
     ec2:	89 42 08             	mov    %eax,0x8(%rdx)
     ec5:	f3 0f 7e b5 a8 fe ff 	movq   -0x158(%rbp),%xmm6
     ecc:	ff 
     ecd:	f3 0f 7e bd a0 fe ff 	movq   -0x160(%rbp),%xmm7
     ed4:	ff 
     ed5:	4c 89 b5 a8 fe ff ff 	mov    %r14,-0x158(%rbp)
     edc:	f3 0f 7e a5 a8 fe ff 	movq   -0x158(%rbp),%xmm4
     ee3:	ff 
     ee4:	4c 89 9d a8 fe ff ff 	mov    %r11,-0x158(%rbp)
     eeb:	f3 0f 7e ad a8 fe ff 	movq   -0x158(%rbp),%xmm5
     ef2:	ff 
     ef3:	4c 89 95 a8 fe ff ff 	mov    %r10,-0x158(%rbp)
     efa:	f3 0f 7e 95 a8 fe ff 	movq   -0x158(%rbp),%xmm2
     f01:	ff 
     f02:	4c 89 8d a8 fe ff ff 	mov    %r9,-0x158(%rbp)
     f09:	f3 0f 7e 9d a8 fe ff 	movq   -0x158(%rbp),%xmm3
     f10:	ff 
     f11:	4c 89 85 a8 fe ff ff 	mov    %r8,-0x158(%rbp)
     f18:	f3 0f 7e 85 a8 fe ff 	movq   -0x158(%rbp),%xmm0
     f1f:	ff 
     f20:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
     f27:	f3 0f 7e 8d a8 fe ff 	movq   -0x158(%rbp),%xmm1
     f2e:	ff 
     f2f:	48 89 f7             	mov    %rsi,%rdi
     f32:	e8 00 00 00 00       	callq  f37 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x674>
     f37:	48 83 c4 20          	add    $0x20,%rsp
     f3b:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     f42:	48 83 ec 08          	sub    $0x8,%rsp
     f46:	ff 75 c0             	pushq  -0x40(%rbp)
     f49:	ff 75 b8             	pushq  -0x48(%rbp)
     f4c:	ff 75 b0             	pushq  -0x50(%rbp)
     f4f:	ff 75 a8             	pushq  -0x58(%rbp)
     f52:	ff 75 a0             	pushq  -0x60(%rbp)
     f55:	ff 75 98             	pushq  -0x68(%rbp)
     f58:	ff 75 90             	pushq  -0x70(%rbp)
     f5b:	ff 75 88             	pushq  -0x78(%rbp)
     f5e:	ff 75 80             	pushq  -0x80(%rbp)
     f61:	48 89 c7             	mov    %rax,%rdi
     f64:	e8 00 00 00 00       	callq  f69 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6a6>
     f69:	48 83 c4 50          	add    $0x50,%rsp
       }
       no_of_triangles++;
     f6d:	48 83 85 18 ff ff ff 	addq   $0x1,-0xe8(%rbp)
     f74:	01 
     f75:	e9 4d 01 00 00       	jmpq   10c7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
    } else if (c == 'v' && in.peek() == 'n') {
     f7a:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     f81:	3c 76                	cmp    $0x76,%al
     f83:	75 1b                	jne    fa0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6dd>
     f85:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     f8c:	48 89 c7             	mov    %rax,%rdi
     f8f:	e8 00 00 00 00       	callq  f94 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6d1>
     f94:	83 f8 6e             	cmp    $0x6e,%eax
     f97:	75 07                	jne    fa0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6dd>
     f99:	b8 01 00 00 00       	mov    $0x1,%eax
     f9e:	eb 05                	jmp    fa5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6e2>
     fa0:	b8 00 00 00 00       	mov    $0x0,%eax
     fa5:	84 c0                	test   %al,%al
     fa7:	0f 84 1a 01 00 00    	je     10c7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
       in >> c;
     fad:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     fb4:	48 8d 95 e7 fe ff ff 	lea    -0x119(%rbp),%rdx
     fbb:	48 89 d6             	mov    %rdx,%rsi
     fbe:	48 89 c7             	mov    %rax,%rdi
     fc1:	e8 00 00 00 00       	callq  fc6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x703>
       if ( in.peek() == ' ' ) {
     fc6:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     fcd:	48 89 c7             	mov    %rax,%rdi
     fd0:	e8 00 00 00 00       	callq  fd5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x712>
     fd5:	83 f8 20             	cmp    $0x20,%eax
     fd8:	0f 94 c0             	sete   %al
     fdb:	84 c0                	test   %al,%al
     fdd:	0f 84 e4 00 00 00    	je     10c7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
         FLOAT nx, ny, nz;
         in >> nx;
     fe3:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     fea:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     ff1:	48 89 d6             	mov    %rdx,%rsi
     ff4:	48 89 c7             	mov    %rax,%rdi
     ff7:	e8 00 00 00 00       	callq  ffc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x739>
         in >> ny;
     ffc:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1003:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
    100a:	48 89 d6             	mov    %rdx,%rsi
    100d:	48 89 c7             	mov    %rax,%rdi
    1010:	e8 00 00 00 00       	callq  1015 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x752>
         in >> nz;
    1015:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    101c:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
    1023:	48 89 d6             	mov    %rdx,%rsi
    1026:	48 89 c7             	mov    %rax,%rdi
    1029:	e8 00 00 00 00       	callq  102e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x76b>
         normal = Vector<FLOAT, 3>( {nx, ny, nz} );
    102e:	f3 0f 10 85 00 ff ff 	movss  -0x100(%rbp),%xmm0
    1035:	ff 
    1036:	f3 0f 11 85 74 ff ff 	movss  %xmm0,-0x8c(%rbp)
    103d:	ff 
    103e:	f3 0f 10 85 08 ff ff 	movss  -0xf8(%rbp),%xmm0
    1045:	ff 
    1046:	f3 0f 11 85 78 ff ff 	movss  %xmm0,-0x88(%rbp)
    104d:	ff 
    104e:	f3 0f 10 85 10 ff ff 	movss  -0xf0(%rbp),%xmm0
    1055:	ff 
    1056:	f3 0f 11 85 7c ff ff 	movss  %xmm0,-0x84(%rbp)
    105d:	ff 
    105e:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
    1065:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    106c:	48 c7 85 c8 fe ff ff 	movq   $0x3,-0x138(%rbp)
    1073:	03 00 00 00 
    1077:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    107e:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
    1085:	48 89 c1             	mov    %rax,%rcx
    1088:	48 89 d3             	mov    %rdx,%rbx
    108b:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    108f:	48 89 ce             	mov    %rcx,%rsi
    1092:	48 89 c7             	mov    %rax,%rdi
    1095:	e8 00 00 00 00       	callq  109a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x7d7>
    109a:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    109e:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    10a5:	8b 45 88             	mov    -0x78(%rbp),%eax
    10a8:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
         normals.push_back( normal );         
    10ae:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    10b5:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    10bc:	48 89 d6             	mov    %rdx,%rsi
    10bf:	48 89 c7             	mov    %rax,%rdi
    10c2:	e8 00 00 00 00       	callq  10c7 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
       }
    }
    // read to end of line
    in.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    10c7:	48 8b 9d d8 fe ff ff 	mov    -0x128(%rbp),%rbx
    10ce:	e8 00 00 00 00       	callq  10d3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x810>
    10d3:	ba 0a 00 00 00       	mov    $0xa,%edx
    10d8:	48 89 c6             	mov    %rax,%rsi
    10db:	48 89 df             	mov    %rbx,%rdi
    10de:	e8 00 00 00 00       	callq  10e3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x820>
  while (in >> c) {
    10e3:	e9 53 f8 ff ff       	jmpq   93b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x78>
  }

  std::cerr << "no of triangles : " << no_of_triangles << std::endl;
    10e8:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 10ef <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x82c>
    10ef:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 10f6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x833>
    10f6:	e8 00 00 00 00       	callq  10fb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x838>
    10fb:	48 89 c2             	mov    %rax,%rdx
    10fe:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    1105:	48 89 c6             	mov    %rax,%rsi
    1108:	48 89 d7             	mov    %rdx,%rdi
    110b:	e8 00 00 00 00       	callq  1110 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x84d>
    1110:	48 89 c2             	mov    %rax,%rdx
    1113:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 111a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x857>
    111a:	48 89 c6             	mov    %rax,%rsi
    111d:	48 89 d7             	mov    %rdx,%rdi
    1120:	e8 00 00 00 00       	callq  1125 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x862>
  std::cerr << "no of vertices : " << vertices.size() << std::endl;
    1125:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 112c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x869>
    112c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1133 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x870>
    1133:	e8 00 00 00 00       	callq  1138 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x875>
    1138:	48 89 c3             	mov    %rax,%rbx
    113b:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1142:	48 89 c7             	mov    %rax,%rdi
    1145:	e8 00 00 00 00       	callq  114a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x887>
    114a:	48 89 c6             	mov    %rax,%rsi
    114d:	48 89 df             	mov    %rbx,%rdi
    1150:	e8 00 00 00 00       	callq  1155 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x892>
    1155:	48 89 c2             	mov    %rax,%rdx
    1158:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 115f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x89c>
    115f:	48 89 c6             	mov    %rax,%rsi
    1162:	48 89 d7             	mov    %rdx,%rdi
    1165:	e8 00 00 00 00       	callq  116a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8a7>
  std::cerr << "no of normals : " << normals.size() << std::endl;
    116a:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1171 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ae>
    1171:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1178 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8b5>
    1178:	e8 00 00 00 00       	callq  117d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ba>
    117d:	48 89 c3             	mov    %rax,%rbx
    1180:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    1187:	48 89 c7             	mov    %rax,%rdi
    118a:	e8 00 00 00 00       	callq  118f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8cc>
    118f:	48 89 c6             	mov    %rax,%rsi
    1192:	48 89 df             	mov    %rbx,%rdi
    1195:	e8 00 00 00 00       	callq  119a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8d7>
    119a:	48 89 c2             	mov    %rax,%rdx
    119d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11a4 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8e1>
    11a4:	48 89 c6             	mov    %rax,%rsi
    11a7:	48 89 d7             	mov    %rdx,%rdi
    11aa:	e8 00 00 00 00       	callq  11af <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ec>
  std::cerr << "memory used for all triangles [byte] : " << no_of_triangles * sizeof(Triangle<FLOAT>) << std::endl;   
    11af:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 11b6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8f3>
    11b6:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 11bd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8fa>
    11bd:	e8 00 00 00 00       	callq  11c2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ff>
    11c2:	48 89 c1             	mov    %rax,%rcx
    11c5:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
    11cc:	48 89 d0             	mov    %rdx,%rax
    11cf:	48 c1 e0 03          	shl    $0x3,%rax
    11d3:	48 01 d0             	add    %rdx,%rax
    11d6:	48 c1 e0 03          	shl    $0x3,%rax
    11da:	48 89 c6             	mov    %rax,%rsi
    11dd:	48 89 cf             	mov    %rcx,%rdi
    11e0:	e8 00 00 00 00       	callq  11e5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x922>
    11e5:	48 89 c2             	mov    %rax,%rdx
    11e8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11ef <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x92c>
    11ef:	48 89 c6             	mov    %rax,%rsi
    11f2:	48 89 d7             	mov    %rdx,%rdi
    11f5:	e8 00 00 00 00       	callq  11fa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x937>
  std::vector< Vector<FLOAT, 3> > normals;
    11fa:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    1201:	48 89 c7             	mov    %rax,%rdi
    1204:	e8 00 00 00 00       	callq  1209 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x946>
  std::vector< Vector<FLOAT, 3> > vertices;
    1209:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1210:	48 89 c7             	mov    %rax,%rdi
    1213:	e8 00 00 00 00       	callq  1218 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x955>
}
    1218:	90                   	nop
    1219:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    121d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1224:	00 00 
    1226:	74 33                	je     125b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x998>
    1228:	eb 2c                	jmp    1256 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x993>
    122a:	48 89 c3             	mov    %rax,%rbx
  std::vector< Vector<FLOAT, 3> > normals;
    122d:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    1234:	48 89 c7             	mov    %rax,%rdi
    1237:	e8 00 00 00 00       	callq  123c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x979>
  std::vector< Vector<FLOAT, 3> > vertices;
    123c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1243:	48 89 c7             	mov    %rax,%rdi
    1246:	e8 00 00 00 00       	callq  124b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x988>
    124b:	48 89 d8             	mov    %rbx,%rax
    124e:	48 89 c7             	mov    %rax,%rdi
    1251:	e8 00 00 00 00       	callq  1256 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x993>
}
    1256:	e8 00 00 00 00       	callq  125b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x998>
    125b:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    125f:	5b                   	pop    %rbx
    1260:	41 5c                	pop    %r12
    1262:	41 5d                	pop    %r13
    1264:	41 5e                	pop    %r14
    1266:	41 5f                	pop    %r15
    1268:	5d                   	pop    %rbp
    1269:	c3                   	retq   

000000000000126a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree>:


// the raytrace algorithm but without refraction and reflection
void raytrace(Camera &camera, Scene & scene, Screen & screen, KDTree *tree = nullptr) {
    126a:	55                   	push   %rbp
    126b:	48 89 e5             	mov    %rsp,%rbp
    126e:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    1275:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    127c:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
    1283:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
    128a:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    1291:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1298:	00 00 
    129a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    129e:	31 c0                	xor    %eax,%eax
  screen.clear();
    12a0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    12a4:	66 0f ef d2          	pxor   %xmm2,%xmm2
    12a8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    12ac:	66 0f ef c0          	pxor   %xmm0,%xmm0
    12b0:	48 89 c7             	mov    %rax,%rdi
    12b3:	e8 00 00 00 00       	callq  12b8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x4e>
    12b8:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    12bc:	f3 0f 10 4d c8       	movss  -0x38(%rbp),%xmm1
    12c1:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    12c8:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    12cf:	f3 0f 7e 85 58 ff ff 	movq   -0xa8(%rbp),%xmm0
    12d6:	ff 
    12d7:	48 89 c7             	mov    %rax,%rdi
    12da:	e8 00 00 00 00       	callq  12df <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x75>
  Material material;
    12df:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    12e3:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 12eb <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x81>
    12ea:	00 
    12eb:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 12f3 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x89>
    12f2:	00 
    12f3:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 12fb <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x91>
    12fa:	00 
    12fb:	48 89 c7             	mov    %rax,%rdi
    12fe:	e8 00 00 00 00       	callq  1303 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x99>
    1303:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1307:	f3 0f 10 4d b8       	movss  -0x48(%rbp),%xmm1
    130c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1310:	66 0f ef ed          	pxor   %xmm5,%xmm5
    1314:	66 0f ef e4          	pxor   %xmm4,%xmm4
    1318:	f3 0f 10 1d 00 00 00 	movss  0x0(%rip),%xmm3        # 1320 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb6>
    131f:	00 
    1320:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 1328 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xbe>
    1327:	00 
    1328:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    132f:	f3 0f 7e 85 58 ff ff 	movq   -0xa8(%rbp),%xmm0
    1336:	ff 
    1337:	48 89 c7             	mov    %rax,%rdi
    133a:	e8 00 00 00 00       	callq  133f <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xd5>
  Color color;
    133f:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
    1343:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1347:	66 0f ef c9          	pxor   %xmm1,%xmm1
    134b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 00 00 00 00       	callq  1357 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xed>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    1357:	66 0f ef c0          	pxor   %xmm0,%xmm0
    135b:	f3 0f 11 45 9c       	movss  %xmm0,-0x64(%rbp)
    1360:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1367:	48 89 c7             	mov    %rax,%rdi
    136a:	e8 00 00 00 00       	callq  136f <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x105>
    136f:	48 85 c0             	test   %rax,%rax
    1372:	78 07                	js     137b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x111>
    1374:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    1379:	eb 15                	jmp    1390 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x126>
    137b:	48 89 c2             	mov    %rax,%rdx
    137e:	48 d1 ea             	shr    %rdx
    1381:	83 e0 01             	and    $0x1,%eax
    1384:	48 09 c2             	or     %rax,%rdx
    1387:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    138c:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    1390:	0f 2e 45 9c          	ucomiss -0x64(%rbp),%xmm0
    1394:	0f 97 c0             	seta   %al
    1397:	84 c0                	test   %al,%al
    1399:	0f 84 7c 02 00 00    	je     161b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3b1>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
    139f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13a3:	f3 0f 11 45 a0       	movss  %xmm0,-0x60(%rbp)
    13a8:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    13af:	48 89 c7             	mov    %rax,%rdi
    13b2:	e8 00 00 00 00       	callq  13b7 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x14d>
    13b7:	48 85 c0             	test   %rax,%rax
    13ba:	78 07                	js     13c3 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x159>
    13bc:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
    13c1:	eb 15                	jmp    13d8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x16e>
    13c3:	48 89 c2             	mov    %rax,%rdx
    13c6:	48 d1 ea             	shr    %rdx
    13c9:	83 e0 01             	and    $0x1,%eax
    13cc:	48 09 c2             	or     %rax,%rdx
    13cf:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
    13d4:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    13d8:	0f 2e 45 a0          	ucomiss -0x60(%rbp),%xmm0
    13dc:	0f 97 c0             	seta   %al
    13df:	84 c0                	test   %al,%al
    13e1:	0f 84 19 02 00 00    	je     1600 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x396>
      color = Color(0.0, 0.0, 0.0);
    13e7:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    13eb:	66 0f ef d2          	pxor   %xmm2,%xmm2
    13ef:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13f3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    13f7:	48 89 c7             	mov    %rax,%rdi
    13fa:	e8 00 00 00 00       	callq  13ff <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x195>
    13ff:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1403:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
    1407:	8b 45 b8             	mov    -0x48(%rbp),%eax
    140a:	89 45 ac             	mov    %eax,-0x54(%rbp)
      const Ray<FLOAT> ray = camera.getRay(x,y);
    140d:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    1412:	0f 2e 05 00 00 00 00 	ucomiss 0x0(%rip),%xmm0        # 1419 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1af>
    1419:	73 0c                	jae    1427 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1bd>
    141b:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    1420:	f3 48 0f 2c d0       	cvttss2si %xmm0,%rdx
    1425:	eb 23                	jmp    144a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1e0>
    1427:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    142c:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 1434 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1ca>
    1433:	00 
    1434:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1438:	f3 48 0f 2c d0       	cvttss2si %xmm0,%rdx
    143d:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1444:	00 00 80 
    1447:	48 31 c2             	xor    %rax,%rdx
    144a:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    144f:	0f 2e 05 00 00 00 00 	ucomiss 0x0(%rip),%xmm0        # 1456 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1ec>
    1456:	73 0c                	jae    1464 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1fa>
    1458:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    145d:	f3 48 0f 2c c0       	cvttss2si %xmm0,%rax
    1462:	eb 23                	jmp    1487 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x21d>
    1464:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    1469:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 1471 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x207>
    1470:	00 
    1471:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1475:	f3 48 0f 2c c0       	cvttss2si %xmm0,%rax
    147a:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    1481:	00 00 80 
    1484:	48 31 c8             	xor    %rcx,%rax
    1487:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    148b:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    1492:	48 89 d1             	mov    %rdx,%rcx
    1495:	48 89 c2             	mov    %rax,%rdx
    1498:	e8 00 00 00 00       	callq  149d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x233>
      Triangle<FLOAT> *nearest_triangle = nullptr;
    149d:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    14a4:	00 
      FLOAT t = INFINITY, u = 0, v = 0;
    14a5:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 14ad <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x243>
    14ac:	00 
    14ad:	f3 0f 11 45 90       	movss  %xmm0,-0x70(%rbp)
    14b2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14b6:	f3 0f 11 45 94       	movss  %xmm0,-0x6c(%rbp)
    14bb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14bf:	f3 0f 11 45 98       	movss  %xmm0,-0x68(%rbp)
#ifndef USE_KDTREE
      bool hasNearestTriangle = scene.hasNearestTriangle(ray, nearest_triangle, t, u, v);
    14c4:	4c 8d 45 98          	lea    -0x68(%rbp),%r8
    14c8:	48 8d 7d 94          	lea    -0x6c(%rbp),%rdi
    14cc:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
    14d0:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    14d4:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    14d8:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    14df:	48 83 ec 08          	sub    $0x8,%rsp
    14e3:	6a 01                	pushq  $0x1
    14e5:	4d 89 c1             	mov    %r8,%r9
    14e8:	49 89 f8             	mov    %rdi,%r8
    14eb:	48 89 c7             	mov    %rax,%rdi
    14ee:	e8 00 00 00 00       	callq  14f3 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x289>
    14f3:	48 83 c4 10          	add    $0x10,%rsp
    14f7:	88 45 8f             	mov    %al,-0x71(%rbp)
#else
      bool hasNearestTriangle = tree->hasNearestTriangle(ray.getOrigin(), ray.getDirection(),  nearest_triangle, t, u, v);
#endif
      if ( hasNearestTriangle ) {
    14fa:	80 7d 8f 00          	cmpb   $0x0,-0x71(%rbp)
    14fe:	74 41                	je     1541 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2d7>
        // no reflection and refraction
        color = scene.shade(ray, *nearest_triangle, material, t, u, v);
    1500:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1504:	4c 8d 4d 94          	lea    -0x6c(%rbp),%r9
    1508:	4c 8d 45 90          	lea    -0x70(%rbp),%r8
    150c:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    1510:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    1514:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    151b:	48 83 ec 08          	sub    $0x8,%rsp
    151f:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    1523:	57                   	push   %rdi
    1524:	48 89 c7             	mov    %rax,%rdi
    1527:	e8 00 00 00 00       	callq  152c <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2c2>
    152c:	48 83 c4 10          	add    $0x10,%rsp
    1530:	66 48 0f 7e c0       	movq   %xmm0,%rax
    1535:	0f 28 c1             	movaps %xmm1,%xmm0
    1538:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
    153c:	f3 0f 11 45 ac       	movss  %xmm0,-0x54(%rbp)
      }
      screen.setPixel(x, y, color);
    1541:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    1546:	0f 2e 05 00 00 00 00 	ucomiss 0x0(%rip),%xmm0        # 154d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2e3>
    154d:	73 0c                	jae    155b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2f1>
    154f:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    1554:	f3 48 0f 2c d0       	cvttss2si %xmm0,%rdx
    1559:	eb 23                	jmp    157e <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x314>
    155b:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
    1560:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 1568 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2fe>
    1567:	00 
    1568:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    156c:	f3 48 0f 2c d0       	cvttss2si %xmm0,%rdx
    1571:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1578:	00 00 80 
    157b:	48 31 c2             	xor    %rax,%rdx
    157e:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    1583:	0f 2e 05 00 00 00 00 	ucomiss 0x0(%rip),%xmm0        # 158a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x320>
    158a:	73 0c                	jae    1598 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x32e>
    158c:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    1591:	f3 48 0f 2c c0       	cvttss2si %xmm0,%rax
    1596:	eb 23                	jmp    15bb <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x351>
    1598:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
    159d:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 15a5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x33b>
    15a4:	00 
    15a5:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    15a9:	f3 48 0f 2c c0       	cvttss2si %xmm0,%rax
    15ae:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    15b5:	00 00 80 
    15b8:	48 31 c8             	xor    %rcx,%rax
    15bb:	48 8b 75 a4          	mov    -0x5c(%rbp),%rsi
    15bf:	f3 0f 10 4d ac       	movss  -0x54(%rbp),%xmm1
    15c4:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
    15cb:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    15d2:	f3 0f 7e 85 58 ff ff 	movq   -0xa8(%rbp),%xmm0
    15d9:	ff 
    15da:	48 89 c6             	mov    %rax,%rsi
    15dd:	48 89 cf             	mov    %rcx,%rdi
    15e0:	e8 00 00 00 00       	callq  15e5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x37b>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
    15e5:	f3 0f 10 4d a0       	movss  -0x60(%rbp),%xmm1
    15ea:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 15f2 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x388>
    15f1:	00 
    15f2:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    15f6:	f3 0f 11 45 a0       	movss  %xmm0,-0x60(%rbp)
    15fb:	e9 a8 fd ff ff       	jmpq   13a8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x13e>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    1600:	f3 0f 10 4d 9c       	movss  -0x64(%rbp),%xmm1
    1605:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 160d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3a3>
    160c:	00 
    160d:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1611:	f3 0f 11 45 9c       	movss  %xmm0,-0x64(%rbp)
    1616:	e9 45 fd ff ff       	jmpq   1360 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf6>
    }
  }
}
    161b:	90                   	nop
    161c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1620:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1627:	00 00 
    1629:	74 05                	je     1630 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3c6>
    162b:	e8 00 00 00 00       	callq  1630 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3c6>
    1630:	c9                   	leaveq 
    1631:	c3                   	retq   

0000000000001632 <_Z15parse_argumentsiPPc>:




void parse_arguments(int argc, char *argv[]) {
    1632:	55                   	push   %rbp
    1633:	48 89 e5             	mov    %rsp,%rbp
    1636:	53                   	push   %rbx
    1637:	48 83 ec 58          	sub    $0x58,%rsp
    163b:	89 7d ac             	mov    %edi,-0x54(%rbp)
    163e:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    1642:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1649:	00 00 
    164b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    164f:	31 c0                	xor    %eax,%eax
   {"no_ppm", optional_argument, 0, 'n'},
  };
  int c;
  int option_index;

  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    1651:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    1655:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
    1659:	8b 45 ac             	mov    -0x54(%rbp),%eax
    165c:	49 89 d0             	mov    %rdx,%r8
    165f:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1666 <_Z15parse_argumentsiPPc+0x34>
    1666:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 166d <_Z15parse_argumentsiPPc+0x3b>
    166d:	89 c7                	mov    %eax,%edi
    166f:	e8 00 00 00 00       	callq  1674 <_Z15parse_argumentsiPPc+0x42>
    1674:	89 45 bc             	mov    %eax,-0x44(%rbp)
    1677:	83 7d bc ff          	cmpl   $0xffffffff,-0x44(%rbp)
    167b:	0f 95 c0             	setne  %al
    167e:	84 c0                	test   %al,%al
    1680:	0f 84 23 03 00 00    	je     19a9 <_Z15parse_argumentsiPPc+0x377>
    switch (c) {
    1686:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1689:	83 e8 66             	sub    $0x66,%eax
    168c:	83 f8 11             	cmp    $0x11,%eax
    168f:	77 c0                	ja     1651 <_Z15parse_argumentsiPPc+0x1f>
    1691:	89 c0                	mov    %eax,%eax
    1693:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    169a:	00 
    169b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16a2 <_Z15parse_argumentsiPPc+0x70>
    16a2:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    16a5:	48 63 d0             	movslq %eax,%rdx
    16a8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16af <_Z15parse_argumentsiPPc+0x7d>
    16af:	48 01 d0             	add    %rdx,%rax
    16b2:	ff e0                	jmpq   *%rax
    case 'f': input_file_name = std::string(optarg);
    16b4:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    16b8:	48 89 c7             	mov    %rax,%rdi
    16bb:	e8 00 00 00 00       	callq  16c0 <_Z15parse_argumentsiPPc+0x8e>
    16c0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 16c7 <_Z15parse_argumentsiPPc+0x95>
    16c7:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    16cb:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16cf:	48 89 ce             	mov    %rcx,%rsi
    16d2:	48 89 c7             	mov    %rax,%rdi
    16d5:	e8 00 00 00 00       	callq  16da <_Z15parse_argumentsiPPc+0xa8>
    16da:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16de:	48 89 c6             	mov    %rax,%rsi
    16e1:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 16e8 <_Z15parse_argumentsiPPc+0xb6>
    16e8:	e8 00 00 00 00       	callq  16ed <_Z15parse_argumentsiPPc+0xbb>
    16ed:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16f1:	48 89 c7             	mov    %rax,%rdi
    16f4:	e8 00 00 00 00       	callq  16f9 <_Z15parse_argumentsiPPc+0xc7>
    16f9:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    16fd:	48 89 c7             	mov    %rax,%rdi
    1700:	e8 00 00 00 00       	callq  1705 <_Z15parse_argumentsiPPc+0xd3>
              break;
    1705:	e9 9a 02 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'r': reverse_vertice_order = true;
    170a:	c6 05 00 00 00 00 01 	movb   $0x1,0x0(%rip)        # 1711 <_Z15parse_argumentsiPPc+0xdf>
              break;
    1711:	e9 8e 02 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'w': resolution_x = std::stoi(optarg);
    1716:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    171a:	48 89 c7             	mov    %rax,%rdi
    171d:	e8 00 00 00 00       	callq  1722 <_Z15parse_argumentsiPPc+0xf0>
    1722:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1729 <_Z15parse_argumentsiPPc+0xf7>
    1729:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    172d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1731:	48 89 ce             	mov    %rcx,%rsi
    1734:	48 89 c7             	mov    %rax,%rdi
    1737:	e8 00 00 00 00       	callq  173c <_Z15parse_argumentsiPPc+0x10a>
    173c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1740:	ba 0a 00 00 00       	mov    $0xa,%edx
    1745:	be 00 00 00 00       	mov    $0x0,%esi
    174a:	48 89 c7             	mov    %rax,%rdi
    174d:	e8 00 00 00 00       	callq  1752 <_Z15parse_argumentsiPPc+0x120>
    1752:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 1758 <_Z15parse_argumentsiPPc+0x126>
    1758:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    175c:	48 89 c7             	mov    %rax,%rdi
    175f:	e8 00 00 00 00       	callq  1764 <_Z15parse_argumentsiPPc+0x132>
    1764:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1768:	48 89 c7             	mov    %rax,%rdi
    176b:	e8 00 00 00 00       	callq  1770 <_Z15parse_argumentsiPPc+0x13e>
              break;
    1770:	e9 2f 02 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'h': resolution_y = std::stoi(optarg);
    1775:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1779:	48 89 c7             	mov    %rax,%rdi
    177c:	e8 00 00 00 00       	callq  1781 <_Z15parse_argumentsiPPc+0x14f>
    1781:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1788 <_Z15parse_argumentsiPPc+0x156>
    1788:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    178c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1790:	48 89 ce             	mov    %rcx,%rsi
    1793:	48 89 c7             	mov    %rax,%rdi
    1796:	e8 00 00 00 00       	callq  179b <_Z15parse_argumentsiPPc+0x169>
    179b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    179f:	ba 0a 00 00 00       	mov    $0xa,%edx
    17a4:	be 00 00 00 00       	mov    $0x0,%esi
    17a9:	48 89 c7             	mov    %rax,%rdi
    17ac:	e8 00 00 00 00       	callq  17b1 <_Z15parse_argumentsiPPc+0x17f>
    17b1:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 17b7 <_Z15parse_argumentsiPPc+0x185>
    17b7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17bb:	48 89 c7             	mov    %rax,%rdi
    17be:	e8 00 00 00 00       	callq  17c3 <_Z15parse_argumentsiPPc+0x191>
    17c3:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    17c7:	48 89 c7             	mov    %rax,%rdi
    17ca:	e8 00 00 00 00       	callq  17cf <_Z15parse_argumentsiPPc+0x19d>
              break;
    17cf:	e9 d0 01 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'o': output_bmp_file_name = std::string(optarg);
    17d4:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    17d8:	48 89 c7             	mov    %rax,%rdi
    17db:	e8 00 00 00 00       	callq  17e0 <_Z15parse_argumentsiPPc+0x1ae>
    17e0:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 17e7 <_Z15parse_argumentsiPPc+0x1b5>
    17e7:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    17eb:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17ef:	48 89 ce             	mov    %rcx,%rsi
    17f2:	48 89 c7             	mov    %rax,%rdi
    17f5:	e8 00 00 00 00       	callq  17fa <_Z15parse_argumentsiPPc+0x1c8>
    17fa:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17fe:	48 89 c6             	mov    %rax,%rsi
    1801:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1808 <_Z15parse_argumentsiPPc+0x1d6>
    1808:	e8 00 00 00 00       	callq  180d <_Z15parse_argumentsiPPc+0x1db>
    180d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1811:	48 89 c7             	mov    %rax,%rdi
    1814:	e8 00 00 00 00       	callq  1819 <_Z15parse_argumentsiPPc+0x1e7>
    1819:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    181d:	48 89 c7             	mov    %rax,%rdi
    1820:	e8 00 00 00 00       	callq  1825 <_Z15parse_argumentsiPPc+0x1f3>
              break;
    1825:	e9 7a 01 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'n': write_ppm_to_stdout = false;
    182a:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 1831 <_Z15parse_argumentsiPPc+0x1ff>
              break;
    1831:	e9 6e 01 00 00       	jmpq   19a4 <_Z15parse_argumentsiPPc+0x372>
    case 'u': std::cout << "Aufruf: " << argv[0] << " [options]" << std::endl;
    1836:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 183d <_Z15parse_argumentsiPPc+0x20b>
    183d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1844 <_Z15parse_argumentsiPPc+0x212>
    1844:	e8 00 00 00 00       	callq  1849 <_Z15parse_argumentsiPPc+0x217>
    1849:	48 89 c2             	mov    %rax,%rdx
    184c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1850:	48 8b 00             	mov    (%rax),%rax
    1853:	48 89 c6             	mov    %rax,%rsi
    1856:	48 89 d7             	mov    %rdx,%rdi
    1859:	e8 00 00 00 00       	callq  185e <_Z15parse_argumentsiPPc+0x22c>
    185e:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1865 <_Z15parse_argumentsiPPc+0x233>
    1865:	48 89 c7             	mov    %rax,%rdi
    1868:	e8 00 00 00 00       	callq  186d <_Z15parse_argumentsiPPc+0x23b>
    186d:	48 89 c2             	mov    %rax,%rdx
    1870:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1877 <_Z15parse_argumentsiPPc+0x245>
    1877:	48 89 c6             	mov    %rax,%rsi
    187a:	48 89 d7             	mov    %rdx,%rdi
    187d:	e8 00 00 00 00       	callq  1882 <_Z15parse_argumentsiPPc+0x250>
              std::cout << "  --file FILE          wavefront obj input file ('example/teapot.obj')" << std::endl;
    1882:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1889 <_Z15parse_argumentsiPPc+0x257>
    1889:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1890 <_Z15parse_argumentsiPPc+0x25e>
    1890:	e8 00 00 00 00       	callq  1895 <_Z15parse_argumentsiPPc+0x263>
    1895:	48 89 c2             	mov    %rax,%rdx
    1898:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 189f <_Z15parse_argumentsiPPc+0x26d>
    189f:	48 89 c6             	mov    %rax,%rsi
    18a2:	48 89 d7             	mov    %rdx,%rdi
    18a5:	e8 00 00 00 00       	callq  18aa <_Z15parse_argumentsiPPc+0x278>
              std::cout << "  --width WIDTH        horizontal resolution (256)" << std::endl;
    18aa:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 18b1 <_Z15parse_argumentsiPPc+0x27f>
    18b1:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 18b8 <_Z15parse_argumentsiPPc+0x286>
    18b8:	e8 00 00 00 00       	callq  18bd <_Z15parse_argumentsiPPc+0x28b>
    18bd:	48 89 c2             	mov    %rax,%rdx
    18c0:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18c7 <_Z15parse_argumentsiPPc+0x295>
    18c7:	48 89 c6             	mov    %rax,%rsi
    18ca:	48 89 d7             	mov    %rdx,%rdi
    18cd:	e8 00 00 00 00       	callq  18d2 <_Z15parse_argumentsiPPc+0x2a0>
              std::cout << "  --height HEIGHT      vertical resolution (256)" << std::endl;
    18d2:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 18d9 <_Z15parse_argumentsiPPc+0x2a7>
    18d9:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 18e0 <_Z15parse_argumentsiPPc+0x2ae>
    18e0:	e8 00 00 00 00       	callq  18e5 <_Z15parse_argumentsiPPc+0x2b3>
    18e5:	48 89 c2             	mov    %rax,%rdx
    18e8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18ef <_Z15parse_argumentsiPPc+0x2bd>
    18ef:	48 89 c6             	mov    %rax,%rsi
    18f2:	48 89 d7             	mov    %rdx,%rdi
    18f5:	e8 00 00 00 00       	callq  18fa <_Z15parse_argumentsiPPc+0x2c8>
              std::cout << "  --help               this help text" << std::endl;
    18fa:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1901 <_Z15parse_argumentsiPPc+0x2cf>
    1901:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1908 <_Z15parse_argumentsiPPc+0x2d6>
    1908:	e8 00 00 00 00       	callq  190d <_Z15parse_argumentsiPPc+0x2db>
    190d:	48 89 c2             	mov    %rax,%rdx
    1910:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1917 <_Z15parse_argumentsiPPc+0x2e5>
    1917:	48 89 c6             	mov    %rax,%rsi
    191a:	48 89 d7             	mov    %rdx,%rdi
    191d:	e8 00 00 00 00       	callq  1922 <_Z15parse_argumentsiPPc+0x2f0>
              std::cout << "  --no_ppm             no PPM output is generated" << std::endl;
    1922:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1929 <_Z15parse_argumentsiPPc+0x2f7>
    1929:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1930 <_Z15parse_argumentsiPPc+0x2fe>
    1930:	e8 00 00 00 00       	callq  1935 <_Z15parse_argumentsiPPc+0x303>
    1935:	48 89 c2             	mov    %rax,%rdx
    1938:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 193f <_Z15parse_argumentsiPPc+0x30d>
    193f:	48 89 c6             	mov    %rax,%rsi
    1942:	48 89 d7             	mov    %rdx,%rdi
    1945:	e8 00 00 00 00       	callq  194a <_Z15parse_argumentsiPPc+0x318>
              std::cout << "  -o BMP               BMP output file ('output.bmp')" << std::endl;
    194a:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1951 <_Z15parse_argumentsiPPc+0x31f>
    1951:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1958 <_Z15parse_argumentsiPPc+0x326>
    1958:	e8 00 00 00 00       	callq  195d <_Z15parse_argumentsiPPc+0x32b>
    195d:	48 89 c2             	mov    %rax,%rdx
    1960:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1967 <_Z15parse_argumentsiPPc+0x335>
    1967:	48 89 c6             	mov    %rax,%rsi
    196a:	48 89 d7             	mov    %rdx,%rdi
    196d:	e8 00 00 00 00       	callq  1972 <_Z15parse_argumentsiPPc+0x340>
              std::cout << "  -r                   reverse vertice order of triangles in input file" << std::endl;
    1972:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1979 <_Z15parse_argumentsiPPc+0x347>
    1979:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1980 <_Z15parse_argumentsiPPc+0x34e>
    1980:	e8 00 00 00 00       	callq  1985 <_Z15parse_argumentsiPPc+0x353>
    1985:	48 89 c2             	mov    %rax,%rdx
    1988:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 198f <_Z15parse_argumentsiPPc+0x35d>
    198f:	48 89 c6             	mov    %rax,%rsi
    1992:	48 89 d7             	mov    %rdx,%rdi
    1995:	e8 00 00 00 00       	callq  199a <_Z15parse_argumentsiPPc+0x368>
              exit(0);
    199a:	bf 00 00 00 00       	mov    $0x0,%edi
    199f:	e8 00 00 00 00       	callq  19a4 <_Z15parse_argumentsiPPc+0x372>
  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    19a4:	e9 a8 fc ff ff       	jmpq   1651 <_Z15parse_argumentsiPPc+0x1f>
    } 
  }

  std::cerr << "reading from       : " << input_file_name << std::endl;
    19a9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19b0 <_Z15parse_argumentsiPPc+0x37e>
    19b0:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 19b7 <_Z15parse_argumentsiPPc+0x385>
    19b7:	e8 00 00 00 00       	callq  19bc <_Z15parse_argumentsiPPc+0x38a>
    19bc:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19c3 <_Z15parse_argumentsiPPc+0x391>
    19c3:	48 89 c7             	mov    %rax,%rdi
    19c6:	e8 00 00 00 00       	callq  19cb <_Z15parse_argumentsiPPc+0x399>
    19cb:	48 89 c2             	mov    %rax,%rdx
    19ce:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 19d5 <_Z15parse_argumentsiPPc+0x3a3>
    19d5:	48 89 c6             	mov    %rax,%rsi
    19d8:	48 89 d7             	mov    %rdx,%rdi
    19db:	e8 00 00 00 00       	callq  19e0 <_Z15parse_argumentsiPPc+0x3ae>
  std::cerr << "writing bmp to     : " << output_bmp_file_name << std::endl;
    19e0:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19e7 <_Z15parse_argumentsiPPc+0x3b5>
    19e7:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 19ee <_Z15parse_argumentsiPPc+0x3bc>
    19ee:	e8 00 00 00 00       	callq  19f3 <_Z15parse_argumentsiPPc+0x3c1>
    19f3:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19fa <_Z15parse_argumentsiPPc+0x3c8>
    19fa:	48 89 c7             	mov    %rax,%rdi
    19fd:	e8 00 00 00 00       	callq  1a02 <_Z15parse_argumentsiPPc+0x3d0>
    1a02:	48 89 c2             	mov    %rax,%rdx
    1a05:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a0c <_Z15parse_argumentsiPPc+0x3da>
    1a0c:	48 89 c6             	mov    %rax,%rsi
    1a0f:	48 89 d7             	mov    %rdx,%rdi
    1a12:	e8 00 00 00 00       	callq  1a17 <_Z15parse_argumentsiPPc+0x3e5>
  std::cerr << "resolution x set to: " << resolution_x << std::endl;
    1a17:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a1e <_Z15parse_argumentsiPPc+0x3ec>
    1a1e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1a25 <_Z15parse_argumentsiPPc+0x3f3>
    1a25:	e8 00 00 00 00       	callq  1a2a <_Z15parse_argumentsiPPc+0x3f8>
    1a2a:	48 89 c2             	mov    %rax,%rdx
    1a2d:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1a33 <_Z15parse_argumentsiPPc+0x401>
    1a33:	89 c6                	mov    %eax,%esi
    1a35:	48 89 d7             	mov    %rdx,%rdi
    1a38:	e8 00 00 00 00       	callq  1a3d <_Z15parse_argumentsiPPc+0x40b>
    1a3d:	48 89 c2             	mov    %rax,%rdx
    1a40:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a47 <_Z15parse_argumentsiPPc+0x415>
    1a47:	48 89 c6             	mov    %rax,%rsi
    1a4a:	48 89 d7             	mov    %rdx,%rdi
    1a4d:	e8 00 00 00 00       	callq  1a52 <_Z15parse_argumentsiPPc+0x420>
  std::cerr << "resolution y set to: " << resolution_y << std::endl;
    1a52:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a59 <_Z15parse_argumentsiPPc+0x427>
    1a59:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1a60 <_Z15parse_argumentsiPPc+0x42e>
    1a60:	e8 00 00 00 00       	callq  1a65 <_Z15parse_argumentsiPPc+0x433>
    1a65:	48 89 c2             	mov    %rax,%rdx
    1a68:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1a6e <_Z15parse_argumentsiPPc+0x43c>
    1a6e:	89 c6                	mov    %eax,%esi
    1a70:	48 89 d7             	mov    %rdx,%rdi
    1a73:	e8 00 00 00 00       	callq  1a78 <_Z15parse_argumentsiPPc+0x446>
    1a78:	48 89 c2             	mov    %rax,%rdx
    1a7b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a82 <_Z15parse_argumentsiPPc+0x450>
    1a82:	48 89 c6             	mov    %rax,%rsi
    1a85:	48 89 d7             	mov    %rdx,%rdi
    1a88:	e8 00 00 00 00       	callq  1a8d <_Z15parse_argumentsiPPc+0x45b>
  std::cerr << "vertices reversed  : " << reverse_vertice_order << std::endl;
    1a8d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a94 <_Z15parse_argumentsiPPc+0x462>
    1a94:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1a9b <_Z15parse_argumentsiPPc+0x469>
    1a9b:	e8 00 00 00 00       	callq  1aa0 <_Z15parse_argumentsiPPc+0x46e>
    1aa0:	48 89 c2             	mov    %rax,%rdx
    1aa3:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1aaa <_Z15parse_argumentsiPPc+0x478>
    1aaa:	0f b6 c0             	movzbl %al,%eax
    1aad:	89 c6                	mov    %eax,%esi
    1aaf:	48 89 d7             	mov    %rdx,%rdi
    1ab2:	e8 00 00 00 00       	callq  1ab7 <_Z15parse_argumentsiPPc+0x485>
    1ab7:	48 89 c2             	mov    %rax,%rdx
    1aba:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ac1 <_Z15parse_argumentsiPPc+0x48f>
    1ac1:	48 89 c6             	mov    %rax,%rsi
    1ac4:	48 89 d7             	mov    %rdx,%rdi
    1ac7:	e8 00 00 00 00       	callq  1acc <_Z15parse_argumentsiPPc+0x49a>
  std::cerr << "write ppm          : " << write_ppm_to_stdout << std::endl;
    1acc:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1ad3 <_Z15parse_argumentsiPPc+0x4a1>
    1ad3:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1ada <_Z15parse_argumentsiPPc+0x4a8>
    1ada:	e8 00 00 00 00       	callq  1adf <_Z15parse_argumentsiPPc+0x4ad>
    1adf:	48 89 c2             	mov    %rax,%rdx
    1ae2:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1ae9 <_Z15parse_argumentsiPPc+0x4b7>
    1ae9:	0f b6 c0             	movzbl %al,%eax
    1aec:	89 c6                	mov    %eax,%esi
    1aee:	48 89 d7             	mov    %rdx,%rdi
    1af1:	e8 00 00 00 00       	callq  1af6 <_Z15parse_argumentsiPPc+0x4c4>
    1af6:	48 89 c2             	mov    %rax,%rdx
    1af9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b00 <_Z15parse_argumentsiPPc+0x4ce>
    1b00:	48 89 c6             	mov    %rax,%rsi
    1b03:	48 89 d7             	mov    %rdx,%rdi
    1b06:	e8 00 00 00 00       	callq  1b0b <_Z15parse_argumentsiPPc+0x4d9>
}
    1b0b:	90                   	nop
    1b0c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b10:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b17:	00 00 
    1b19:	0f 84 94 00 00 00    	je     1bb3 <_Z15parse_argumentsiPPc+0x581>
    1b1f:	e9 8a 00 00 00       	jmpq   1bae <_Z15parse_argumentsiPPc+0x57c>
    1b24:	48 89 c3             	mov    %rax,%rbx
    case 'f': input_file_name = std::string(optarg);
    1b27:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b2b:	48 89 c7             	mov    %rax,%rdi
    1b2e:	e8 00 00 00 00       	callq  1b33 <_Z15parse_argumentsiPPc+0x501>
    1b33:	48 89 d8             	mov    %rbx,%rax
    1b36:	48 89 c7             	mov    %rax,%rdi
    1b39:	e8 00 00 00 00       	callq  1b3e <_Z15parse_argumentsiPPc+0x50c>
    1b3e:	48 89 c3             	mov    %rax,%rbx
    case 'w': resolution_x = std::stoi(optarg);
    1b41:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1b45:	48 89 c7             	mov    %rax,%rdi
    1b48:	e8 00 00 00 00       	callq  1b4d <_Z15parse_argumentsiPPc+0x51b>
    1b4d:	eb 03                	jmp    1b52 <_Z15parse_argumentsiPPc+0x520>
    1b4f:	48 89 c3             	mov    %rax,%rbx
    1b52:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b56:	48 89 c7             	mov    %rax,%rdi
    1b59:	e8 00 00 00 00       	callq  1b5e <_Z15parse_argumentsiPPc+0x52c>
    1b5e:	48 89 d8             	mov    %rbx,%rax
    1b61:	48 89 c7             	mov    %rax,%rdi
    1b64:	e8 00 00 00 00       	callq  1b69 <_Z15parse_argumentsiPPc+0x537>
    1b69:	48 89 c3             	mov    %rax,%rbx
    case 'h': resolution_y = std::stoi(optarg);
    1b6c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1b70:	48 89 c7             	mov    %rax,%rdi
    1b73:	e8 00 00 00 00       	callq  1b78 <_Z15parse_argumentsiPPc+0x546>
    1b78:	eb 03                	jmp    1b7d <_Z15parse_argumentsiPPc+0x54b>
    1b7a:	48 89 c3             	mov    %rax,%rbx
    1b7d:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b81:	48 89 c7             	mov    %rax,%rdi
    1b84:	e8 00 00 00 00       	callq  1b89 <_Z15parse_argumentsiPPc+0x557>
    1b89:	48 89 d8             	mov    %rbx,%rax
    1b8c:	48 89 c7             	mov    %rax,%rdi
    1b8f:	e8 00 00 00 00       	callq  1b94 <_Z15parse_argumentsiPPc+0x562>
    1b94:	48 89 c3             	mov    %rax,%rbx
    case 'o': output_bmp_file_name = std::string(optarg);
    1b97:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b9b:	48 89 c7             	mov    %rax,%rdi
    1b9e:	e8 00 00 00 00       	callq  1ba3 <_Z15parse_argumentsiPPc+0x571>
    1ba3:	48 89 d8             	mov    %rbx,%rax
    1ba6:	48 89 c7             	mov    %rax,%rdi
    1ba9:	e8 00 00 00 00       	callq  1bae <_Z15parse_argumentsiPPc+0x57c>
}
    1bae:	e8 00 00 00 00       	callq  1bb3 <_Z15parse_argumentsiPPc+0x581>
    1bb3:	48 83 c4 58          	add    $0x58,%rsp
    1bb7:	5b                   	pop    %rbx
    1bb8:	5d                   	pop    %rbp
    1bb9:	c3                   	retq   

0000000000001bba <main>:

int main(int argc, char *argv[]) {
    1bba:	55                   	push   %rbp
    1bbb:	48 89 e5             	mov    %rsp,%rbp
    1bbe:	41 57                	push   %r15
    1bc0:	41 56                	push   %r14
    1bc2:	41 55                	push   %r13
    1bc4:	41 54                	push   %r12
    1bc6:	53                   	push   %rbx
    1bc7:	48 81 ec 38 05 00 00 	sub    $0x538,%rsp
    1bce:	89 bd dc fa ff ff    	mov    %edi,-0x524(%rbp)
    1bd4:	48 89 b5 d0 fa ff ff 	mov    %rsi,-0x530(%rbp)
    1bdb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1be2:	00 00 
    1be4:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1be8:	31 c0                	xor    %eax,%eax
  parse_arguments(argc, argv);
    1bea:	48 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%rdx
    1bf1:	8b 85 dc fa ff ff    	mov    -0x524(%rbp),%eax
    1bf7:	48 89 d6             	mov    %rdx,%rsi
    1bfa:	89 c7                	mov    %eax,%edi
    1bfc:	e8 00 00 00 00       	callq  1c01 <main+0x47>
  Scene scene;
    1c01:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    1c08:	48 89 c7             	mov    %rax,%rdi
    1c0b:	e8 00 00 00 00       	callq  1c10 <main+0x56>
  scene.addLight( Light( Vector<FLOAT,3>{500.0, 500.0, 1000.0}) );
    1c10:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1c17:	f3 0f 10 15 00 00 00 	movss  0x0(%rip),%xmm2        # 1c1f <main+0x65>
    1c1e:	00 
    1c1f:	f3 0f 10 0d 00 00 00 	movss  0x0(%rip),%xmm1        # 1c27 <main+0x6d>
    1c26:	00 
    1c27:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 1c2f <main+0x75>
    1c2e:	00 
    1c2f:	48 89 c7             	mov    %rax,%rdi
    1c32:	e8 00 00 00 00       	callq  1c37 <main+0x7d>
    1c37:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1c3e <main+0x84>
    1c3e:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
    1c45:	48 c7 85 a8 fa ff ff 	movq   $0x3,-0x558(%rbp)
    1c4c:	03 00 00 00 
    1c50:	48 8b 85 a0 fa ff ff 	mov    -0x560(%rbp),%rax
    1c57:	48 8b 95 a8 fa ff ff 	mov    -0x558(%rbp),%rdx
    1c5e:	48 89 c1             	mov    %rax,%rcx
    1c61:	48 89 d3             	mov    %rdx,%rbx
    1c64:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1c6b:	48 89 ce             	mov    %rcx,%rsi
    1c6e:	48 89 c7             	mov    %rax,%rdi
    1c71:	e8 00 00 00 00       	callq  1c76 <main+0xbc>
    1c76:	48 8b b5 00 fb ff ff 	mov    -0x500(%rbp),%rsi
    1c7d:	f3 0f 10 85 08 fb ff 	movss  -0x4f8(%rbp),%xmm0
    1c84:	ff 
    1c85:	48 8b 8d c0 fb ff ff 	mov    -0x440(%rbp),%rcx
    1c8c:	8b 95 c8 fb ff ff    	mov    -0x438(%rbp),%edx
    1c92:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1c99:	48 89 b5 a0 fa ff ff 	mov    %rsi,-0x560(%rbp)
    1ca0:	f3 0f 7e 95 a0 fa ff 	movq   -0x560(%rbp),%xmm2
    1ca7:	ff 
    1ca8:	0f 28 d8             	movaps %xmm0,%xmm3
    1cab:	48 89 8d a0 fa ff ff 	mov    %rcx,-0x560(%rbp)
    1cb2:	f3 0f 7e 85 a0 fa ff 	movq   -0x560(%rbp),%xmm0
    1cb9:	ff 
    1cba:	48 89 95 a0 fa ff ff 	mov    %rdx,-0x560(%rbp)
    1cc1:	f3 0f 7e 8d a0 fa ff 	movq   -0x560(%rbp),%xmm1
    1cc8:	ff 
    1cc9:	48 89 c7             	mov    %rax,%rdi
    1ccc:	e8 00 00 00 00       	callq  1cd1 <main+0x117>
    1cd1:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    1cd8:	48 83 ec 08          	sub    $0x8,%rsp
    1cdc:	ff b5 d0 fd ff ff    	pushq  -0x230(%rbp)
    1ce2:	ff b5 c8 fd ff ff    	pushq  -0x238(%rbp)
    1ce8:	ff b5 c0 fd ff ff    	pushq  -0x240(%rbp)
    1cee:	48 89 c7             	mov    %rax,%rdi
    1cf1:	e8 00 00 00 00       	callq  1cf6 <main+0x13c>
    1cf6:	48 83 c4 20          	add    $0x20,%rsp
  std::ifstream input(input_file_name);
    1cfa:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1d01:	ba 08 00 00 00       	mov    $0x8,%edx
    1d06:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d0d <main+0x153>
    1d0d:	48 89 c7             	mov    %rax,%rdi
    1d10:	e8 00 00 00 00       	callq  1d15 <main+0x15b>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    1d15:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1d1c:	ba 04 00 00 00       	mov    $0x4,%edx
    1d21:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d28 <main+0x16e>
    1d28:	48 89 c7             	mov    %rax,%rdi
    1d2b:	e8 00 00 00 00       	callq  1d30 <main+0x176>
  read_wavefront(input, scene);
    1d30:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    1d37:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1d3e:	48 89 d6             	mov    %rdx,%rsi
    1d41:	48 89 c7             	mov    %rax,%rdi
    1d44:	e8 00 00 00 00       	callq  1d49 <main+0x18f>
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    1d49:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    1d50:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    1d57:	48 89 d6             	mov    %rdx,%rsi
    1d5a:	48 89 c7             	mov    %rax,%rdi
    1d5d:	e8 00 00 00 00       	callq  1d62 <main+0x1a8>
  Screen screen(resolution_x, resolution_y);
    1d62:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1d68 <main+0x1ae>
    1d68:	48 63 d0             	movslq %eax,%rdx
    1d6b:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1d71 <main+0x1b7>
    1d71:	48 63 c8             	movslq %eax,%rcx
    1d74:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1d7b:	48 89 ce             	mov    %rcx,%rsi
    1d7e:	48 89 c7             	mov    %rax,%rdi
    1d81:	e8 00 00 00 00       	callq  1d86 <main+0x1cc>
  // camera for teapot_large.obj
  Camera camera( Vector<FLOAT, 3>( {  0.05, 1.0, 200.0} ),
                 Vector<FLOAT, 3>( {  0.05, 1.0, 100.0} ),
                 Vector<FLOAT, 3>( {  0.0, 1.6, 0.0} ),
                 Vector<FLOAT, 3>( {  1.6, 0.0,  0.0} ),
                 screen );
    1d86:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1d8d <main+0x1d3>
    1d8d:	48 89 85 b0 fa ff ff 	mov    %rax,-0x550(%rbp)
    1d94:	48 c7 85 b8 fa ff ff 	movq   $0x3,-0x548(%rbp)
    1d9b:	03 00 00 00 
    1d9f:	48 8b 85 b0 fa ff ff 	mov    -0x550(%rbp),%rax
    1da6:	48 8b 95 b8 fa ff ff 	mov    -0x548(%rbp),%rdx
    1dad:	48 89 c1             	mov    %rax,%rcx
    1db0:	48 89 d3             	mov    %rdx,%rbx
    1db3:	48 8d 85 74 fb ff ff 	lea    -0x48c(%rbp),%rax
    1dba:	48 89 ce             	mov    %rcx,%rsi
    1dbd:	48 89 c7             	mov    %rax,%rdi
    1dc0:	e8 00 00 00 00       	callq  1dc5 <main+0x20b>
    1dc5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1dcc <main+0x212>
    1dcc:	48 89 85 c0 fa ff ff 	mov    %rax,-0x540(%rbp)
    1dd3:	48 c7 85 c8 fa ff ff 	movq   $0x3,-0x538(%rbp)
    1dda:	03 00 00 00 
    1dde:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
    1de5:	48 8b 95 c8 fa ff ff 	mov    -0x538(%rbp),%rdx
    1dec:	48 89 c1             	mov    %rax,%rcx
    1def:	48 89 d3             	mov    %rdx,%rbx
    1df2:	48 8d 85 68 fb ff ff 	lea    -0x498(%rbp),%rax
    1df9:	48 89 ce             	mov    %rcx,%rsi
    1dfc:	48 89 c7             	mov    %rax,%rdi
    1dff:	e8 00 00 00 00       	callq  1e04 <main+0x24a>
    1e04:	4c 8d 35 00 00 00 00 	lea    0x0(%rip),%r14        # 1e0b <main+0x251>
    1e0b:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    1e11:	4c 89 f1             	mov    %r14,%rcx
    1e14:	4c 89 fb             	mov    %r15,%rbx
    1e17:	4c 89 f0             	mov    %r14,%rax
    1e1a:	4c 89 fa             	mov    %r15,%rdx
    1e1d:	48 8d 85 5c fb ff ff 	lea    -0x4a4(%rbp),%rax
    1e24:	48 89 ce             	mov    %rcx,%rsi
    1e27:	48 89 c7             	mov    %rax,%rdi
    1e2a:	e8 00 00 00 00       	callq  1e2f <main+0x275>
    1e2f:	4c 8d 25 00 00 00 00 	lea    0x0(%rip),%r12        # 1e36 <main+0x27c>
    1e36:	41 bd 03 00 00 00    	mov    $0x3,%r13d
    1e3c:	4c 89 e1             	mov    %r12,%rcx
    1e3f:	4c 89 eb             	mov    %r13,%rbx
    1e42:	4c 89 e0             	mov    %r12,%rax
    1e45:	4c 89 ea             	mov    %r13,%rdx
    1e48:	48 8d 85 50 fb ff ff 	lea    -0x4b0(%rbp),%rax
    1e4f:	48 89 ce             	mov    %rcx,%rsi
    1e52:	48 89 c7             	mov    %rax,%rdi
    1e55:	e8 00 00 00 00       	callq  1e5a <main+0x2a0>
    1e5a:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1e61:	4c 8b a5 74 fb ff ff 	mov    -0x48c(%rbp),%r12
    1e68:	8b 9d 7c fb ff ff    	mov    -0x484(%rbp),%ebx
    1e6e:	4c 8b 9d 68 fb ff ff 	mov    -0x498(%rbp),%r11
    1e75:	44 8b 95 70 fb ff ff 	mov    -0x490(%rbp),%r10d
    1e7c:	4c 8b 8d 5c fb ff ff 	mov    -0x4a4(%rbp),%r9
    1e83:	44 8b 85 64 fb ff ff 	mov    -0x49c(%rbp),%r8d
    1e8a:	48 8b bd 50 fb ff ff 	mov    -0x4b0(%rbp),%rdi
    1e91:	8b 8d 58 fb ff ff    	mov    -0x4a8(%rbp),%ecx
    1e97:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    1e9e:	48 89 d6             	mov    %rdx,%rsi
    1ea1:	4c 89 a5 c0 fa ff ff 	mov    %r12,-0x540(%rbp)
    1ea8:	f3 0f 7e b5 c0 fa ff 	movq   -0x540(%rbp),%xmm6
    1eaf:	ff 
    1eb0:	48 89 9d c0 fa ff ff 	mov    %rbx,-0x540(%rbp)
    1eb7:	f3 0f 7e bd c0 fa ff 	movq   -0x540(%rbp),%xmm7
    1ebe:	ff 
    1ebf:	4c 89 9d c0 fa ff ff 	mov    %r11,-0x540(%rbp)
    1ec6:	f3 0f 7e a5 c0 fa ff 	movq   -0x540(%rbp),%xmm4
    1ecd:	ff 
    1ece:	4c 89 95 c0 fa ff ff 	mov    %r10,-0x540(%rbp)
    1ed5:	f3 0f 7e ad c0 fa ff 	movq   -0x540(%rbp),%xmm5
    1edc:	ff 
    1edd:	4c 89 8d c0 fa ff ff 	mov    %r9,-0x540(%rbp)
    1ee4:	f3 0f 7e 95 c0 fa ff 	movq   -0x540(%rbp),%xmm2
    1eeb:	ff 
    1eec:	4c 89 85 c0 fa ff ff 	mov    %r8,-0x540(%rbp)
    1ef3:	f3 0f 7e 9d c0 fa ff 	movq   -0x540(%rbp),%xmm3
    1efa:	ff 
    1efb:	48 89 bd c0 fa ff ff 	mov    %rdi,-0x540(%rbp)
    1f02:	f3 0f 7e 85 c0 fa ff 	movq   -0x540(%rbp),%xmm0
    1f09:	ff 
    1f0a:	48 89 8d c0 fa ff ff 	mov    %rcx,-0x540(%rbp)
    1f11:	f3 0f 7e 8d c0 fa ff 	movq   -0x540(%rbp),%xmm1
    1f18:	ff 
    1f19:	48 89 c7             	mov    %rax,%rdi
    1f1c:	e8 00 00 00 00       	callq  1f21 <main+0x367>

  stats.time_start();
    1f21:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f28 <main+0x36e>
    1f28:	e8 00 00 00 00       	callq  1f2d <main+0x373>
#ifndef USE_KDTREE
  raytrace(camera, scene, screen);
    1f2d:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1f34:	48 8d b5 20 fb ff ff 	lea    -0x4e0(%rbp),%rsi
    1f3b:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    1f42:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f47:	48 89 c7             	mov    %rax,%rdi
    1f4a:	e8 00 00 00 00       	callq  1f4f <main+0x395>
#else
  std::unique_ptr<KDTree> tree =  std::unique_ptr<KDTree>( KDTree::buildTree( triangles ) );
  raytrace(camera, scene, screen, tree.get());
#endif
  stats.time_stop();
    1f4f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f56 <main+0x39c>
    1f56:	e8 00 00 00 00       	callq  1f5b <main+0x3a1>
  if (write_ppm_to_stdout) {
    1f5b:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1f62 <main+0x3a8>
    1f62:	84 c0                	test   %al,%al
    1f64:	74 16                	je     1f7c <main+0x3c2>
    std::cout << screen; // write image in PPM format to the standard output
    1f66:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1f6d:	48 89 c6             	mov    %rax,%rsi
    1f70:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f77 <main+0x3bd>
    1f77:	e8 00 00 00 00       	callq  1f7c <main+0x3c2>
  }
  write_bmp(output, screen);
    1f7c:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1f83:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1f8a:	48 89 d6             	mov    %rdx,%rsi
    1f8d:	48 89 c7             	mov    %rax,%rdi
    1f90:	e8 00 00 00 00       	callq  1f95 <main+0x3db>
  output.close();
    1f95:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1f9c:	48 89 c7             	mov    %rax,%rdi
    1f9f:	e8 00 00 00 00       	callq  1fa4 <main+0x3ea>
  stats.print();
    1fa4:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1fab <main+0x3f1>
    1fab:	e8 00 00 00 00       	callq  1fb0 <main+0x3f6>

  return 0;
    1fb0:	bb 00 00 00 00       	mov    $0x0,%ebx
  Screen screen(resolution_x, resolution_y);
    1fb5:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1fbc:	48 89 c7             	mov    %rax,%rdi
    1fbf:	e8 00 00 00 00       	callq  1fc4 <main+0x40a>
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    1fc4:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    1fcb:	48 89 c7             	mov    %rax,%rdi
    1fce:	e8 00 00 00 00       	callq  1fd3 <main+0x419>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    1fd3:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1fda:	48 89 c7             	mov    %rax,%rdi
    1fdd:	e8 00 00 00 00       	callq  1fe2 <main+0x428>
  std::ifstream input(input_file_name);
    1fe2:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1fe9:	48 89 c7             	mov    %rax,%rdi
    1fec:	e8 00 00 00 00       	callq  1ff1 <main+0x437>
  Scene scene;
    1ff1:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    1ff8:	48 89 c7             	mov    %rax,%rdi
    1ffb:	e8 00 00 00 00       	callq  2000 <main+0x446>
    2000:	89 d8                	mov    %ebx,%eax
}
    2002:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    2006:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    200d:	00 00 
    200f:	74 74                	je     2085 <main+0x4cb>
    2011:	eb 6d                	jmp    2080 <main+0x4c6>
    2013:	48 89 c3             	mov    %rax,%rbx
  Screen screen(resolution_x, resolution_y);
    2016:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    201d:	48 89 c7             	mov    %rax,%rdi
    2020:	e8 00 00 00 00       	callq  2025 <main+0x46b>
    2025:	eb 03                	jmp    202a <main+0x470>
    2027:	48 89 c3             	mov    %rax,%rbx
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    202a:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    2031:	48 89 c7             	mov    %rax,%rdi
    2034:	e8 00 00 00 00       	callq  2039 <main+0x47f>
    2039:	eb 03                	jmp    203e <main+0x484>
    203b:	48 89 c3             	mov    %rax,%rbx
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    203e:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    2045:	48 89 c7             	mov    %rax,%rdi
    2048:	e8 00 00 00 00       	callq  204d <main+0x493>
    204d:	eb 03                	jmp    2052 <main+0x498>
    204f:	48 89 c3             	mov    %rax,%rbx
  std::ifstream input(input_file_name);
    2052:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    2059:	48 89 c7             	mov    %rax,%rdi
    205c:	e8 00 00 00 00       	callq  2061 <main+0x4a7>
    2061:	eb 03                	jmp    2066 <main+0x4ac>
    2063:	48 89 c3             	mov    %rax,%rbx
  Scene scene;
    2066:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    206d:	48 89 c7             	mov    %rax,%rdi
    2070:	e8 00 00 00 00       	callq  2075 <main+0x4bb>
    2075:	48 89 d8             	mov    %rbx,%rax
    2078:	48 89 c7             	mov    %rax,%rdi
    207b:	e8 00 00 00 00       	callq  2080 <main+0x4c6>
}
    2080:	e8 00 00 00 00       	callq  2085 <main+0x4cb>
    2085:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    2089:	5b                   	pop    %rbx
    208a:	41 5c                	pop    %r12
    208c:	41 5d                	pop    %r13
    208e:	41 5e                	pop    %r14
    2090:	41 5f                	pop    %r15
    2092:	5d                   	pop    %rbp
    2093:	c3                   	retq   

0000000000002094 <_Z41__static_initialization_and_destruction_0ii>:
    2094:	55                   	push   %rbp
    2095:	48 89 e5             	mov    %rsp,%rbp
    2098:	53                   	push   %rbx
    2099:	48 83 ec 28          	sub    $0x28,%rsp
    209d:	89 7d dc             	mov    %edi,-0x24(%rbp)
    20a0:	89 75 d8             	mov    %esi,-0x28(%rbp)
    20a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20aa:	00 00 
    20ac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    20b0:	31 c0                	xor    %eax,%eax
    20b2:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
    20b6:	0f 85 0a 01 00 00    	jne    21c6 <_Z41__static_initialization_and_destruction_0ii+0x132>
    20bc:	81 7d d8 ff ff 00 00 	cmpl   $0xffff,-0x28(%rbp)
    20c3:	0f 85 fd 00 00 00    	jne    21c6 <_Z41__static_initialization_and_destruction_0ii+0x132>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    20c9:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 20d0 <_Z41__static_initialization_and_destruction_0ii+0x3c>
    20d0:	e8 00 00 00 00       	callq  20d5 <_Z41__static_initialization_and_destruction_0ii+0x41>
    20d5:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 20dc <_Z41__static_initialization_and_destruction_0ii+0x48>
    20dc:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 20e3 <_Z41__static_initialization_and_destruction_0ii+0x4f>
    20e3:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 20ea <_Z41__static_initialization_and_destruction_0ii+0x56>
    20ea:	48 89 c7             	mov    %rax,%rdi
    20ed:	e8 00 00 00 00       	callq  20f2 <_Z41__static_initialization_and_destruction_0ii+0x5e>
static std::string input_file_name = "examples/teapot.obj";
    20f2:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    20f6:	48 89 c7             	mov    %rax,%rdi
    20f9:	e8 00 00 00 00       	callq  20fe <_Z41__static_initialization_and_destruction_0ii+0x6a>
    20fe:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2102:	48 89 c2             	mov    %rax,%rdx
    2105:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 210c <_Z41__static_initialization_and_destruction_0ii+0x78>
    210c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 2113 <_Z41__static_initialization_and_destruction_0ii+0x7f>
    2113:	e8 00 00 00 00       	callq  2118 <_Z41__static_initialization_and_destruction_0ii+0x84>
    2118:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    211c:	48 89 c7             	mov    %rax,%rdi
    211f:	e8 00 00 00 00       	callq  2124 <_Z41__static_initialization_and_destruction_0ii+0x90>
    2124:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 212b <_Z41__static_initialization_and_destruction_0ii+0x97>
    212b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2132 <_Z41__static_initialization_and_destruction_0ii+0x9e>
    2132:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2139 <_Z41__static_initialization_and_destruction_0ii+0xa5>
    2139:	48 89 c7             	mov    %rax,%rdi
    213c:	e8 00 00 00 00       	callq  2141 <_Z41__static_initialization_and_destruction_0ii+0xad>
static std::string output_bmp_file_name = "output.bmp";
    2141:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2145:	48 89 c7             	mov    %rax,%rdi
    2148:	e8 00 00 00 00       	callq  214d <_Z41__static_initialization_and_destruction_0ii+0xb9>
    214d:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2151:	48 89 c2             	mov    %rax,%rdx
    2154:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 215b <_Z41__static_initialization_and_destruction_0ii+0xc7>
    215b:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 2162 <_Z41__static_initialization_and_destruction_0ii+0xce>
    2162:	e8 00 00 00 00       	callq  2167 <_Z41__static_initialization_and_destruction_0ii+0xd3>
    2167:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    216b:	48 89 c7             	mov    %rax,%rdi
    216e:	e8 00 00 00 00       	callq  2173 <_Z41__static_initialization_and_destruction_0ii+0xdf>
    2173:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 217a <_Z41__static_initialization_and_destruction_0ii+0xe6>
    217a:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2181 <_Z41__static_initialization_and_destruction_0ii+0xed>
    2181:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2188 <_Z41__static_initialization_and_destruction_0ii+0xf4>
    2188:	48 89 c7             	mov    %rax,%rdi
    218b:	e8 00 00 00 00       	callq  2190 <_Z41__static_initialization_and_destruction_0ii+0xfc>
}
    2190:	eb 34                	jmp    21c6 <_Z41__static_initialization_and_destruction_0ii+0x132>
    2192:	48 89 c3             	mov    %rax,%rbx
static std::string input_file_name = "examples/teapot.obj";
    2195:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2199:	48 89 c7             	mov    %rax,%rdi
    219c:	e8 00 00 00 00       	callq  21a1 <_Z41__static_initialization_and_destruction_0ii+0x10d>
    21a1:	48 89 d8             	mov    %rbx,%rax
    21a4:	48 89 c7             	mov    %rax,%rdi
    21a7:	e8 00 00 00 00       	callq  21ac <_Z41__static_initialization_and_destruction_0ii+0x118>
    21ac:	48 89 c3             	mov    %rax,%rbx
static std::string output_bmp_file_name = "output.bmp";
    21af:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    21b3:	48 89 c7             	mov    %rax,%rdi
    21b6:	e8 00 00 00 00       	callq  21bb <_Z41__static_initialization_and_destruction_0ii+0x127>
    21bb:	48 89 d8             	mov    %rbx,%rax
    21be:	48 89 c7             	mov    %rax,%rdi
    21c1:	e8 00 00 00 00       	callq  21c6 <_Z41__static_initialization_and_destruction_0ii+0x132>
}
    21c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21ca:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    21d1:	00 00 
    21d3:	74 05                	je     21da <_Z41__static_initialization_and_destruction_0ii+0x146>
    21d5:	e8 00 00 00 00       	callq  21da <_Z41__static_initialization_and_destruction_0ii+0x146>
    21da:	48 83 c4 28          	add    $0x28,%rsp
    21de:	5b                   	pop    %rbx
    21df:	5d                   	pop    %rbp
    21e0:	c3                   	retq   

00000000000021e1 <_GLOBAL__sub_I__ZlsRSoRK6Screen>:
    21e1:	55                   	push   %rbp
    21e2:	48 89 e5             	mov    %rsp,%rbp
    21e5:	be ff ff 00 00       	mov    $0xffff,%esi
    21ea:	bf 01 00 00 00       	mov    $0x1,%edi
    21ef:	e8 a0 fe ff ff       	callq  2094 <_Z41__static_initialization_and_destruction_0ii>
    21f4:	5d                   	pop    %rbp
    21f5:	c3                   	retq   

Disassembly of section .text._ZnwmPv:

0000000000000000 <_ZnwmPv>:
#endif // __cpp_sized_deallocation
#endif // __cpp_aligned_new

// Default placement versions of operator new.
inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:

0000000000000000 <_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi>:

#if _GLIBCXX_USE_C99_STDLIB
  // 21.4 Numeric Conversions [string.conversions].
  inline int
  stoi(const string& __str, size_t* __idx = 0, int __base = 10)
  { return __gnu_cxx::__stoa<long, int>(&std::strtol, "stoi", __str.c_str(),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	89 55 ec             	mov    %edx,-0x14(%rbp)
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 c7             	mov    %rax,%rdi
  1a:	e8 00 00 00 00       	callq  1f <_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi+0x1f>
  1f:	48 89 c6             	mov    %rax,%rsi
					__idx, __base); }
  22:	8b 55 ec             	mov    -0x14(%rbp),%edx
  25:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  29:	41 89 d0             	mov    %edx,%r8d
  2c:	48 89 c1             	mov    %rax,%rcx
  2f:	48 89 f2             	mov    %rsi,%rdx
  32:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 39 <_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi+0x39>
  39:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 40 <_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi+0x40>
  40:	48 89 c7             	mov    %rax,%rdi
  43:	e8 00 00 00 00       	callq  48 <_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi+0x48>
  48:	c9                   	leaveq 
  49:	c3                   	retq   

Disassembly of section .text._ZNSt14numeric_limitsIlE3maxEv:

0000000000000000 <_ZNSt14numeric_limitsIlE3maxEv>:

      static _GLIBCXX_CONSTEXPR long
      min() _GLIBCXX_USE_NOEXCEPT { return -__LONG_MAX__ - 1; }

      static _GLIBCXX_CONSTEXPR long
      max() _GLIBCXX_USE_NOEXCEPT { return __LONG_MAX__; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
   b:	ff ff 7f 
   e:	5d                   	pop    %rbp
   f:	c3                   	retq   

Disassembly of section .text._ZN5ColorC2Efff:

0000000000000000 <_ZN5ColorC1Efff>:
  Color(FLOAT red = 0.0, FLOAT green = 0.0, FLOAT blue = 0.0)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
   d:	f3 0f 11 4d f0       	movss  %xmm1,-0x10(%rbp)
  12:	f3 0f 11 55 ec       	movss  %xmm2,-0x14(%rbp)
     : red(red), green(green), blue(blue)
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  20:	f3 0f 11 00          	movss  %xmm0,(%rax)
  24:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  28:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
  2d:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
  32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  36:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
  3b:	f3 0f 11 40 08       	movss  %xmm0,0x8(%rax)
  }
  40:	90                   	nop
  41:	5d                   	pop    %rbp
  42:	c3                   	retq   

Disassembly of section .text._ZNK5Color6getRedEv:

0000000000000000 <_ZNK5Color6getRedEv>:
  FLOAT getRed() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return red;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	f3 0f 10 00          	movss  (%rax),%xmm0
  }
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZNK5Color8getGreenEv:

0000000000000000 <_ZNK5Color8getGreenEv>:
  FLOAT getGreen() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return green;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  }
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZNK5Color7getBlueEv:

0000000000000000 <_ZNK5Color7getBlueEv>:
  FLOAT getBlue() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return blue;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	f3 0f 10 40 08       	movss  0x8(%rax),%xmm0
  }
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZNK5ColorplES_:

0000000000000000 <_ZNK5ColorplES_>:
  Color operator+(Color addend) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	0f 28 c1             	movaps %xmm1,%xmm0
  14:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  18:	f3 0f 11 45 d0       	movss  %xmm0,-0x30(%rbp)
  1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  24:	00 00 
  26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2a:	31 c0                	xor    %eax,%eax
    return Color(red + addend.red, green + addend.green, blue + addend.blue);
  2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  30:	f3 0f 10 48 08       	movss  0x8(%rax),%xmm1
  35:	f3 0f 10 45 d0       	movss  -0x30(%rbp),%xmm0
  3a:	0f 28 d1             	movaps %xmm1,%xmm2
  3d:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  45:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
  4a:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
  4f:	0f 28 d9             	movaps %xmm1,%xmm3
  52:	f3 0f 58 d8          	addss  %xmm0,%xmm3
  56:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  5a:	f3 0f 10 08          	movss  (%rax),%xmm1
  5e:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
  63:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  67:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6b:	0f 28 cb             	movaps %xmm3,%xmm1
  6e:	48 89 c7             	mov    %rax,%rdi
  71:	e8 00 00 00 00       	callq  76 <_ZNK5ColorplES_+0x76>
  76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  7a:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  7e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  81:	89 45 f4             	mov    %eax,-0xc(%rbp)
  84:	48 8b 45 ec          	mov    -0x14(%rbp),%rax
  88:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  8d:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  90:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  94:	f3 0f 7e 45 a8       	movq   -0x58(%rbp),%xmm0
  99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  9d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  a4:	00 00 
  a6:	74 05                	je     ad <_ZNK5ColorplES_+0xad>
  a8:	e8 00 00 00 00       	callq  ad <_ZNK5ColorplES_+0xad>
  ad:	c9                   	leaveq 
  ae:	c3                   	retq   

Disassembly of section .text._ZNK5ColormlES_:

0000000000000000 <_ZNK5ColormlES_>:
  Color operator*(Color factor) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	0f 28 c1             	movaps %xmm1,%xmm0
  14:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  18:	f3 0f 11 45 d0       	movss  %xmm0,-0x30(%rbp)
  1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  24:	00 00 
  26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2a:	31 c0                	xor    %eax,%eax
    return Color(red * factor.red, green * factor.green, blue * factor.blue);
  2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  30:	f3 0f 10 48 08       	movss  0x8(%rax),%xmm1
  35:	f3 0f 10 45 d0       	movss  -0x30(%rbp),%xmm0
  3a:	0f 28 d1             	movaps %xmm1,%xmm2
  3d:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
  41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  45:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
  4a:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
  4f:	0f 28 d9             	movaps %xmm1,%xmm3
  52:	f3 0f 59 d8          	mulss  %xmm0,%xmm3
  56:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  5a:	f3 0f 10 08          	movss  (%rax),%xmm1
  5e:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
  63:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  67:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6b:	0f 28 cb             	movaps %xmm3,%xmm1
  6e:	48 89 c7             	mov    %rax,%rdi
  71:	e8 00 00 00 00       	callq  76 <_ZNK5ColormlES_+0x76>
  76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  7a:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  7e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  81:	89 45 f4             	mov    %eax,-0xc(%rbp)
  84:	48 8b 45 ec          	mov    -0x14(%rbp),%rax
  88:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  8d:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  90:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  94:	f3 0f 7e 45 a8       	movq   -0x58(%rbp),%xmm0
  99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  9d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  a4:	00 00 
  a6:	74 05                	je     ad <_ZNK5ColormlES_+0xad>
  a8:	e8 00 00 00 00       	callq  ad <_ZNK5ColormlES_+0xad>
  ad:	c9                   	leaveq 
  ae:	c3                   	retq   

Disassembly of section .text._Zmlf5Color:

0000000000000000 <_Zmlf5Color>:
  friend Color operator*(const FLOAT factor, Color color)  {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
   d:	66 48 0f 7e c8       	movq   %xmm1,%rax
  12:	0f 28 c2             	movaps %xmm2,%xmm0
  15:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  19:	f3 0f 11 45 d0       	movss  %xmm0,-0x30(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2b:	31 c0                	xor    %eax,%eax
    return Color(factor * color.red, factor * color.green, factor * color.blue);
  2d:	f3 0f 10 45 d0       	movss  -0x30(%rbp),%xmm0
  32:	0f 28 d0             	movaps %xmm0,%xmm2
  35:	f3 0f 59 55 dc       	mulss  -0x24(%rbp),%xmm2
  3a:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
  3f:	0f 28 c8             	movaps %xmm0,%xmm1
  42:	f3 0f 59 4d dc       	mulss  -0x24(%rbp),%xmm1
  47:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
  4c:	f3 0f 59 45 dc       	mulss  -0x24(%rbp),%xmm0
  51:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  55:	48 89 c7             	mov    %rax,%rdi
  58:	e8 00 00 00 00       	callq  5d <_Zmlf5Color+0x5d>
  5d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  61:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  65:	8b 45 e8             	mov    -0x18(%rbp),%eax
  68:	89 45 f4             	mov    %eax,-0xc(%rbp)
  6b:	48 8b 45 ec          	mov    -0x14(%rbp),%rax
  6f:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  74:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  77:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  7b:	f3 0f 7e 45 a8       	movq   -0x58(%rbp),%xmm0
  80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  84:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  8b:	00 00 
  8d:	74 05                	je     94 <_Zmlf5Color+0x94>
  8f:	e8 00 00 00 00       	callq  94 <_Zmlf5Color+0x94>
  94:	c9                   	leaveq 
  95:	c3                   	retq   

Disassembly of section .text._ZN8MaterialC2E5Colorffff:

0000000000000000 <_ZN8MaterialC1E5Colorffff>:
  Material(Color color = Color(1.0, 0.7, 0.8),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   d:	0f 28 c1             	movaps %xmm1,%xmm0
  10:	f3 0f 11 55 e4       	movss  %xmm2,-0x1c(%rbp)
  15:	f3 0f 11 5d e0       	movss  %xmm3,-0x20(%rbp)
  1a:	f3 0f 11 65 dc       	movss  %xmm4,-0x24(%rbp)
  1f:	f3 0f 11 6d d8       	movss  %xmm5,-0x28(%rbp)
  24:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  28:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
    : color(color), ambient(ambient), diffuse(diffuse), reflection(reflection), transmission(transmission) {
  2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  31:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  35:	48 89 10             	mov    %rdx,(%rax)
  38:	8b 55 f0             	mov    -0x10(%rbp),%edx
  3b:	89 50 08             	mov    %edx,0x8(%rax)
  3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  42:	f3 0f 10 45 e4       	movss  -0x1c(%rbp),%xmm0
  47:	f3 0f 11 40 0c       	movss  %xmm0,0xc(%rax)
  4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  50:	f3 0f 10 45 e0       	movss  -0x20(%rbp),%xmm0
  55:	f3 0f 11 40 10       	movss  %xmm0,0x10(%rax)
  5a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5e:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
  63:	f3 0f 11 40 14       	movss  %xmm0,0x14(%rax)
  68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6c:	f3 0f 10 45 d8       	movss  -0x28(%rbp),%xmm0
  71:	f3 0f 11 40 18       	movss  %xmm0,0x18(%rax)
  }
  76:	90                   	nop
  77:	5d                   	pop    %rbp
  78:	c3                   	retq   

Disassembly of section .text._ZNK8Material8getColorEv:

0000000000000000 <_ZNK8Material8getColorEv>:
  Color getColor() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    return color;
   8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   c:	48 8b 10             	mov    (%rax),%rdx
   f:	48 89 55 f4          	mov    %rdx,-0xc(%rbp)
  13:	8b 40 08             	mov    0x8(%rax),%eax
  16:	89 45 fc             	mov    %eax,-0x4(%rbp)
  19:	48 8b 45 f4          	mov    -0xc(%rbp),%rax
  1d:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  22:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  25:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  29:	f3 0f 7e 45 c8       	movq   -0x38(%rbp),%xmm0
  2e:	5d                   	pop    %rbp
  2f:	c3                   	retq   

Disassembly of section .text._ZNK8Material10getAmbientEv:

0000000000000000 <_ZNK8Material10getAmbientEv>:
  FLOAT getAmbient() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return ambient;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	f3 0f 10 40 0c       	movss  0xc(%rax),%xmm0
  }
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZNK8Material10getDiffuseEv:

0000000000000000 <_ZNK8Material10getDiffuseEv>:
  FLOAT getDiffuse() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return diffuse;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	f3 0f 10 40 10       	movss  0x10(%rax),%xmm0
  }
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZN6ScreenC2Emm:

0000000000000000 <_ZN6ScreenC1Emm>:
  Screen(size_t width, size_t  height)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 56                	push   %r14
   6:	41 55                	push   %r13
   8:	41 54                	push   %r12
   a:	53                   	push   %rbx
   b:	48 83 ec 20          	sub    $0x20,%rsp
   f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  13:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  17:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      : width(width), height(height), buffer(std::unique_ptr<Color []>( new Color[width * height] ))
  1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  23:	48 89 10             	mov    %rdx,(%rax)
  26:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  2a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  2e:	48 89 50 08          	mov    %rdx,0x8(%rax)
  32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  36:	4c 8d 70 10          	lea    0x10(%rax),%r14
  3a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  3e:	48 0f af 45 c8       	imul   -0x38(%rbp),%rax
  43:	48 89 c3             	mov    %rax,%rbx
  46:	48 b8 aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaa,%rax
  4d:	aa aa 0a 
  50:	48 39 c3             	cmp    %rax,%rbx
  53:	77 27                	ja     7c <_ZN6ScreenC1Emm+0x7c>
  55:	48 89 d8             	mov    %rbx,%rax
  58:	48 01 c0             	add    %rax,%rax
  5b:	48 01 d8             	add    %rbx,%rax
  5e:	48 c1 e0 02          	shl    $0x2,%rax
  62:	48 89 c7             	mov    %rax,%rdi
  65:	e8 00 00 00 00       	callq  6a <_ZN6ScreenC1Emm+0x6a>
  6a:	49 89 c5             	mov    %rax,%r13
  6d:	4c 89 ea             	mov    %r13,%rdx
  70:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
  74:	48 89 c3             	mov    %rax,%rbx
  77:	49 89 d4             	mov    %rdx,%r12
  7a:	eb 05                	jmp    81 <_ZN6ScreenC1Emm+0x81>
  7c:	e8 00 00 00 00       	callq  81 <_ZN6ScreenC1Emm+0x81>
  81:	48 85 db             	test   %rbx,%rbx
  84:	78 1e                	js     a4 <_ZN6ScreenC1Emm+0xa4>
  86:	66 0f ef d2          	pxor   %xmm2,%xmm2
  8a:	66 0f ef c9          	pxor   %xmm1,%xmm1
  8e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  92:	4c 89 e7             	mov    %r12,%rdi
  95:	e8 00 00 00 00       	callq  9a <_ZN6ScreenC1Emm+0x9a>
  9a:	49 83 c4 0c          	add    $0xc,%r12
  9e:	48 83 eb 01          	sub    $0x1,%rbx
  a2:	eb dd                	jmp    81 <_ZN6ScreenC1Emm+0x81>
  a4:	4c 89 ee             	mov    %r13,%rsi
  a7:	4c 89 f7             	mov    %r14,%rdi
  aa:	e8 00 00 00 00       	callq  af <_ZN6ScreenC1Emm+0xaf>
  }
  af:	90                   	nop
  b0:	48 83 c4 20          	add    $0x20,%rsp
  b4:	5b                   	pop    %rbx
  b5:	41 5c                	pop    %r12
  b7:	41 5d                	pop    %r13
  b9:	41 5e                	pop    %r14
  bb:	5d                   	pop    %rbp
  bc:	c3                   	retq   

Disassembly of section .text._ZN6Screen8setPixelEmm5Color:

0000000000000000 <_ZN6Screen8setPixelEmm5Color>:
  void setPixel(size_t x, size_t y, Color color) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  14:	66 48 0f 7e c0       	movq   %xmm0,%rax
  19:	0f 28 c1             	movaps %xmm1,%xmm0
  1c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  20:	f3 0f 11 45 e0       	movss  %xmm0,-0x20(%rbp)
    buffer[x + y * width] = color;
  25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  29:	48 8b 00             	mov    (%rax),%rax
  2c:	48 0f af 45 e8       	imul   -0x18(%rbp),%rax
  31:	48 89 c2             	mov    %rax,%rdx
  34:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  38:	48 01 c2             	add    %rax,%rdx
  3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  3f:	48 83 c0 10          	add    $0x10,%rax
  43:	48 89 d6             	mov    %rdx,%rsi
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZN6Screen8setPixelEmm5Color+0x4e>
  4e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  52:	48 89 10             	mov    %rdx,(%rax)
  55:	8b 55 e0             	mov    -0x20(%rbp),%edx
  58:	89 50 08             	mov    %edx,0x8(%rax)
  }
  5b:	90                   	nop
  5c:	c9                   	leaveq 
  5d:	c3                   	retq   

Disassembly of section .text._ZN6Screen5clearE5Color:

0000000000000000 <_ZN6Screen5clearE5Color>:
  void clear(Color color = Color(0.0, 0.0, 0.0) ) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	0f 28 c1             	movaps %xmm1,%xmm0
  14:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  18:	f3 0f 11 45 e0       	movss  %xmm0,-0x20(%rbp)
    for (size_t x = 0u; x < getWidth(); x++) {
  1d:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  24:	00 
  25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  29:	48 89 c7             	mov    %rax,%rdi
  2c:	e8 00 00 00 00       	callq  31 <_ZN6Screen5clearE5Color+0x31>
  31:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  35:	0f 92 c0             	setb   %al
  38:	84 c0                	test   %al,%al
  3a:	74 56                	je     92 <_ZN6Screen5clearE5Color+0x92>
      for (size_t y = 0u; y < getHeight(); y++) {
  3c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  43:	00 
  44:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  48:	48 89 c7             	mov    %rax,%rdi
  4b:	e8 00 00 00 00       	callq  50 <_ZN6Screen5clearE5Color+0x50>
  50:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  54:	0f 92 c0             	setb   %al
  57:	84 c0                	test   %al,%al
  59:	74 30                	je     8b <_ZN6Screen5clearE5Color+0x8b>
         setPixel(x, y, color );
  5b:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  5f:	f3 0f 10 4d e0       	movss  -0x20(%rbp),%xmm1
  64:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  68:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  70:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  74:	f3 0f 7e 45 d0       	movq   -0x30(%rbp),%xmm0
  79:	48 89 ce             	mov    %rcx,%rsi
  7c:	48 89 c7             	mov    %rax,%rdi
  7f:	e8 00 00 00 00       	callq  84 <_ZN6Screen5clearE5Color+0x84>
      for (size_t y = 0u; y < getHeight(); y++) {
  84:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  89:	eb b9                	jmp    44 <_ZN6Screen5clearE5Color+0x44>
    for (size_t x = 0u; x < getWidth(); x++) {
  8b:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  90:	eb 93                	jmp    25 <_ZN6Screen5clearE5Color+0x25>
  }
  92:	90                   	nop
  93:	c9                   	leaveq 
  94:	c3                   	retq   

Disassembly of section .text._ZNK6Screen8getWidthEv:

0000000000000000 <_ZNK6Screen8getWidthEv>:
  size_t getWidth() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return this->width;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
  }
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNK6Screen9getHeightEv:

0000000000000000 <_ZNK6Screen9getHeightEv>:
  size_t getHeight() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return this->height;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  }
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZNK6Screen8getPixelEmm:

0000000000000000 <_ZNK6Screen8getPixelEmm>:
  Color getPixel(size_t x, size_t y) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    return buffer[x + y * width];
  14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  18:	48 8b 00             	mov    (%rax),%rax
  1b:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
  20:	48 89 c2             	mov    %rax,%rdx
  23:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  27:	48 01 c2             	add    %rax,%rdx
  2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2e:	48 83 c0 10          	add    $0x10,%rax
  32:	48 89 d6             	mov    %rdx,%rsi
  35:	48 89 c7             	mov    %rax,%rdi
  38:	e8 00 00 00 00       	callq  3d <_ZNK6Screen8getPixelEmm+0x3d>
  3d:	48 8b 10             	mov    (%rax),%rdx
  40:	48 89 55 f4          	mov    %rdx,-0xc(%rbp)
  44:	8b 40 08             	mov    0x8(%rax),%eax
  47:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4a:	48 8b 45 f4          	mov    -0xc(%rbp),%rax
  4e:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  53:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  56:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  5a:	f3 0f 7e 45 b8       	movq   -0x48(%rbp),%xmm0
  5f:	c9                   	leaveq 
  60:	c3                   	retq   

Disassembly of section .text._ZN6CameraC2E6VectorIfLm3EES1_S1_S1_ff:

0000000000000000 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff>:
  Camera(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> center, Vector<FLOAT, 3>up, Vector<FLOAT, 3> right, FLOAT pixelWidth = 1.0, FLOAT pixelHeight = 1.0 )
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 78          	sub    $0x78,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	66 48 0f 7e c0       	movq   %xmm0,%rax
  12:	66 49 0f 7e ca       	movq   %xmm1,%r10
  17:	66 48 0f 7e d6       	movq   %xmm2,%rsi
  1c:	66 49 0f 7e d9       	movq   %xmm3,%r9
  21:	66 48 0f 7e e1       	movq   %xmm4,%rcx
  26:	66 49 0f 7e e8       	movq   %xmm5,%r8
  2b:	66 48 0f 7e f2       	movq   %xmm6,%rdx
  30:	66 48 0f 7e ff       	movq   %xmm7,%rdi
  35:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  39:	8b 45 c0             	mov    -0x40(%rbp),%eax
  3c:	83 e0 00             	and    $0x0,%eax
  3f:	44 09 d0             	or     %r10d,%eax
  42:	89 45 c0             	mov    %eax,-0x40(%rbp)
  45:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
  49:	8b 45 b0             	mov    -0x50(%rbp),%eax
  4c:	83 e0 00             	and    $0x0,%eax
  4f:	44 09 c8             	or     %r9d,%eax
  52:	89 45 b0             	mov    %eax,-0x50(%rbp)
  55:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  59:	8b 45 a0             	mov    -0x60(%rbp),%eax
  5c:	83 e0 00             	and    $0x0,%eax
  5f:	44 09 c0             	or     %r8d,%eax
  62:	89 45 a0             	mov    %eax,-0x60(%rbp)
  65:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  69:	8b 45 90             	mov    -0x70(%rbp),%eax
  6c:	83 e0 00             	and    $0x0,%eax
  6f:	09 f8                	or     %edi,%eax
  71:	89 45 90             	mov    %eax,-0x70(%rbp)
  74:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  7b:	00 00 
  7d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  81:	31 c0                	xor    %eax,%eax
    : eye(eye), upper_left(center - right + up), down(-2.0 * up), right(2.0 * right), pixelWidth(pixelWidth), pixelHeight(pixelHeight) {
  83:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  87:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  8b:	48 89 10             	mov    %rdx,(%rax)
  8e:	8b 55 c0             	mov    -0x40(%rbp),%edx
  91:	89 50 08             	mov    %edx,0x8(%rax)
  94:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  98:	8b 55 90             	mov    -0x70(%rbp),%edx
  9b:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  9f:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  a3:	f3 0f 7e 45 80       	movq   -0x80(%rbp),%xmm0
  a8:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  ac:	f3 0f 7e 4d 80       	movq   -0x80(%rbp),%xmm1
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0xb9>
  b9:	66 48 0f 7e c0       	movq   %xmm0,%rax
  be:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  c3:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  c7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  ca:	83 e0 00             	and    $0x0,%eax
  cd:	09 d0                	or     %edx,%eax
  cf:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  d2:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  d6:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  da:	8b 55 a0             	mov    -0x60(%rbp),%edx
  dd:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
  e1:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
  e5:	f3 0f 7e 45 80       	movq   -0x80(%rbp),%xmm0
  ea:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  ee:	f3 0f 7e 4d 80       	movq   -0x80(%rbp),%xmm1
  f3:	48 89 c7             	mov    %rax,%rdi
  f6:	e8 00 00 00 00       	callq  fb <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0xfb>
  fb:	66 48 0f 7e c0       	movq   %xmm0,%rax
 100:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 105:	48 89 43 0c          	mov    %rax,0xc(%rbx)
 109:	8b 43 14             	mov    0x14(%rbx),%eax
 10c:	83 e0 00             	and    $0x0,%eax
 10f:	09 d0                	or     %edx,%eax
 111:	89 43 14             	mov    %eax,0x14(%rbx)
 114:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 118:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
 11c:	8b 45 a0             	mov    -0x60(%rbp),%eax
 11f:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
 123:	f3 0f 7e 4d 80       	movq   -0x80(%rbp),%xmm1
 128:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 12c:	f3 0f 7e 55 80       	movq   -0x80(%rbp),%xmm2
 131:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 139 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x139>
 138:	00 
 139:	e8 00 00 00 00       	callq  13e <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x13e>
 13e:	66 48 0f 7e c0       	movq   %xmm0,%rax
 143:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 148:	48 89 43 18          	mov    %rax,0x18(%rbx)
 14c:	8b 43 20             	mov    0x20(%rbx),%eax
 14f:	83 e0 00             	and    $0x0,%eax
 152:	09 d0                	or     %edx,%eax
 154:	89 43 20             	mov    %eax,0x20(%rbx)
 157:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 15b:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
 15f:	8b 45 90             	mov    -0x70(%rbp),%eax
 162:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
 166:	f3 0f 7e 4d 80       	movq   -0x80(%rbp),%xmm1
 16b:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 16f:	f3 0f 7e 55 80       	movq   -0x80(%rbp),%xmm2
 174:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 17c <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x17c>
 17b:	00 
 17c:	e8 00 00 00 00       	callq  181 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x181>
 181:	66 48 0f 7e c0       	movq   %xmm0,%rax
 186:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 18b:	48 89 43 24          	mov    %rax,0x24(%rbx)
 18f:	8b 43 2c             	mov    0x2c(%rbx),%eax
 192:	83 e0 00             	and    $0x0,%eax
 195:	09 d0                	or     %edx,%eax
 197:	89 43 2c             	mov    %eax,0x2c(%rbx)
 19a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 19e:	f3 0f 10 45 10       	movss  0x10(%rbp),%xmm0
 1a3:	f3 0f 11 40 30       	movss  %xmm0,0x30(%rax)
 1a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1ac:	f3 0f 10 45 18       	movss  0x18(%rbp),%xmm0
 1b1:	f3 0f 11 40 34       	movss  %xmm0,0x34(%rax)
     this->right.normalize();
 1b6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1ba:	48 83 c0 24          	add    $0x24,%rax
 1be:	48 89 c7             	mov    %rax,%rdi
 1c1:	e8 00 00 00 00       	callq  1c6 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x1c6>
     this->down.normalize();
 1c6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1ca:	48 83 c0 18          	add    $0x18,%rax
 1ce:	48 89 c7             	mov    %rax,%rdi
 1d1:	e8 00 00 00 00       	callq  1d6 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x1d6>
  }
 1d6:	90                   	nop
 1d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1db:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1e2:	00 00 
 1e4:	74 05                	je     1eb <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x1eb>
 1e6:	e8 00 00 00 00       	callq  1eb <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x1eb>
 1eb:	48 83 c4 78          	add    $0x78,%rsp
 1ef:	5b                   	pop    %rbx
 1f0:	5d                   	pop    %rbp
 1f1:	c3                   	retq   

Disassembly of section .text._ZN6CameraC2E6VectorIfLm3EES1_S1_S1_R6Screen:

0000000000000000 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen>:
  Camera(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> center, Vector<FLOAT, 3> up, Vector<FLOAT, 3> right, Screen & screen )
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	66 49 0f 7e cb       	movq   %xmm1,%r11
  16:	66 48 0f 7e d7       	movq   %xmm2,%rdi
  1b:	66 49 0f 7e da       	movq   %xmm3,%r10
  20:	66 48 0f 7e e1       	movq   %xmm4,%rcx
  25:	66 49 0f 7e e9       	movq   %xmm5,%r9
  2a:	66 48 0f 7e f2       	movq   %xmm6,%rdx
  2f:	66 49 0f 7e f8       	movq   %xmm7,%r8
  34:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  38:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3c:	8b 45 f0             	mov    -0x10(%rbp),%eax
  3f:	83 e0 00             	and    $0x0,%eax
  42:	44 09 d8             	or     %r11d,%eax
  45:	89 45 f0             	mov    %eax,-0x10(%rbp)
  48:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4c:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4f:	83 e0 00             	and    $0x0,%eax
  52:	44 09 d0             	or     %r10d,%eax
  55:	89 45 e0             	mov    %eax,-0x20(%rbp)
  58:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  5c:	8b 45 d0             	mov    -0x30(%rbp),%eax
  5f:	83 e0 00             	and    $0x0,%eax
  62:	44 09 c8             	or     %r9d,%eax
  65:	89 45 d0             	mov    %eax,-0x30(%rbp)
  68:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  6c:	8b 45 c0             	mov    -0x40(%rbp),%eax
  6f:	83 e0 00             	and    $0x0,%eax
  72:	44 09 c0             	or     %r8d,%eax
  75:	89 45 c0             	mov    %eax,-0x40(%rbp)
             2.0 * ( up.length() / screen.getHeight() ) ) {
  78:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  7c:	48 89 c7             	mov    %rax,%rdi
  7f:	e8 00 00 00 00       	callq  84 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x84>
  84:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
  89:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  8d:	48 89 c7             	mov    %rax,%rdi
  90:	e8 00 00 00 00       	callq  95 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x95>
  95:	48 85 c0             	test   %rax,%rax
  98:	78 07                	js     a1 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xa1>
  9a:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  9f:	eb 15                	jmp    b6 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xb6>
  a1:	48 89 c2             	mov    %rax,%rdx
  a4:	48 d1 ea             	shr    %rdx
  a7:	83 e0 01             	and    $0x1,%eax
  aa:	48 09 c2             	or     %rax,%rdx
  ad:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
  b2:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  b6:	f3 0f 10 4d a8       	movss  -0x58(%rbp),%xmm1
  bb:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  bf:	0f 28 c1             	movaps %xmm1,%xmm0
  c2:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  c6:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
             2.0 * ( right.length() / screen.getWidth() ),
  cb:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  cf:	48 89 c7             	mov    %rax,%rdi
  d2:	e8 00 00 00 00       	callq  d7 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xd7>
  d7:	f3 0f 11 45 a4       	movss  %xmm0,-0x5c(%rbp)
  dc:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  e0:	48 89 c7             	mov    %rax,%rdi
  e3:	e8 00 00 00 00       	callq  e8 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xe8>
  e8:	48 85 c0             	test   %rax,%rax
  eb:	78 07                	js     f4 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xf4>
  ed:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  f2:	eb 15                	jmp    109 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x109>
  f4:	48 89 c2             	mov    %rax,%rdx
  f7:	48 d1 ea             	shr    %rdx
  fa:	83 e0 01             	and    $0x1,%eax
  fd:	48 09 c2             	or     %rax,%rdx
 100:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
 105:	f3 0f 58 c0          	addss  %xmm0,%xmm0
 109:	f3 0f 10 55 a4       	movss  -0x5c(%rbp),%xmm2
 10e:	f3 0f 5e d0          	divss  %xmm0,%xmm2
 112:	0f 28 c2             	movaps %xmm2,%xmm0
             2.0 * ( up.length() / screen.getHeight() ) ) {
 115:	f3 0f 58 c0          	addss  %xmm0,%xmm0
 119:	4c 8b 5d b8          	mov    -0x48(%rbp),%r11
 11d:	44 8b 55 c0          	mov    -0x40(%rbp),%r10d
 121:	4c 8b 4d c8          	mov    -0x38(%rbp),%r9
 125:	44 8b 45 d0          	mov    -0x30(%rbp),%r8d
 129:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
 12d:	8b 75 e0             	mov    -0x20(%rbp),%esi
 130:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 134:	8b 55 f0             	mov    -0x10(%rbp),%edx
 137:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 13b:	f3 0f 10 5d a8       	movss  -0x58(%rbp),%xmm3
 140:	48 8d 64 24 f8       	lea    -0x8(%rsp),%rsp
 145:	f3 0f 11 1c 24       	movss  %xmm3,(%rsp)
 14a:	48 8d 64 24 f8       	lea    -0x8(%rsp),%rsp
 14f:	f3 0f 11 04 24       	movss  %xmm0,(%rsp)
 154:	4c 89 5d a8          	mov    %r11,-0x58(%rbp)
 158:	f3 0f 7e 75 a8       	movq   -0x58(%rbp),%xmm6
 15d:	4c 89 55 a8          	mov    %r10,-0x58(%rbp)
 161:	f3 0f 7e 7d a8       	movq   -0x58(%rbp),%xmm7
 166:	4c 89 4d a8          	mov    %r9,-0x58(%rbp)
 16a:	f3 0f 7e 65 a8       	movq   -0x58(%rbp),%xmm4
 16f:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
 173:	f3 0f 7e 6d a8       	movq   -0x58(%rbp),%xmm5
 178:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
 17c:	f3 0f 7e 55 a8       	movq   -0x58(%rbp),%xmm2
 181:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
 185:	f3 0f 7e 5d a8       	movq   -0x58(%rbp),%xmm3
 18a:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
 18e:	f3 0f 7e 45 a8       	movq   -0x58(%rbp),%xmm0
 193:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
 197:	f3 0f 7e 4d a8       	movq   -0x58(%rbp),%xmm1
 19c:	48 89 c7             	mov    %rax,%rdi
 19f:	e8 00 00 00 00       	callq  1a4 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x1a4>
 1a4:	48 83 c4 10          	add    $0x10,%rsp
  }
 1a8:	90                   	nop
 1a9:	c9                   	leaveq 
 1aa:	c3                   	retq   

Disassembly of section .text._ZNK6Camera6getRayEmm:

0000000000000000 <_ZNK6Camera6getRayEmm>:
  Ray<FLOAT> getRay(size_t x, size_t y) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   8:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
   c:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  10:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  14:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  18:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1f:	00 00 
  21:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  25:	31 c0                	xor    %eax,%eax
                  + (y * pixelHeight) * down )
  27:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  2b:	48 85 c0             	test   %rax,%rax
  2e:	78 07                	js     37 <_ZNK6Camera6getRayEmm+0x37>
  30:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  35:	eb 15                	jmp    4c <_ZNK6Camera6getRayEmm+0x4c>
  37:	48 89 c2             	mov    %rax,%rdx
  3a:	48 d1 ea             	shr    %rdx
  3d:	83 e0 01             	and    $0x1,%eax
  40:	48 09 c2             	or     %rax,%rdx
  43:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
  48:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  4c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  50:	f3 0f 10 48 34       	movss  0x34(%rax),%xmm1
  55:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  59:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  5d:	48 8b 50 18          	mov    0x18(%rax),%rdx
  61:	8b 40 20             	mov    0x20(%rax),%eax
  64:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  68:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
  6d:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  71:	f3 0f 7e 55 88       	movq   -0x78(%rbp),%xmm2
  76:	e8 00 00 00 00       	callq  7b <_ZNK6Camera6getRayEmm+0x7b>
  7b:	66 48 0f 7e c0       	movq   %xmm0,%rax
  80:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  85:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  89:	8b 45 e8             	mov    -0x18(%rbp),%eax
  8c:	83 e0 00             	and    $0x0,%eax
  8f:	09 d0                	or     %edx,%eax
  91:	89 45 e8             	mov    %eax,-0x18(%rbp)
                  + (x * pixelWidth) * right
  94:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  98:	48 85 c0             	test   %rax,%rax
  9b:	78 07                	js     a4 <_ZNK6Camera6getRayEmm+0xa4>
  9d:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  a2:	eb 15                	jmp    b9 <_ZNK6Camera6getRayEmm+0xb9>
  a4:	48 89 c2             	mov    %rax,%rdx
  a7:	48 d1 ea             	shr    %rdx
  aa:	83 e0 01             	and    $0x1,%eax
  ad:	48 09 c2             	or     %rax,%rdx
  b0:	f3 48 0f 2a c2       	cvtsi2ss %rdx,%xmm0
  b5:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  b9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  bd:	f3 0f 10 48 30       	movss  0x30(%rax),%xmm1
  c2:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  c6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  ca:	48 8b 50 24          	mov    0x24(%rax),%rdx
  ce:	8b 40 2c             	mov    0x2c(%rax),%eax
  d1:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  d5:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
  da:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  de:	f3 0f 7e 55 88       	movq   -0x78(%rbp),%xmm2
  e3:	e8 00 00 00 00       	callq  e8 <_ZNK6Camera6getRayEmm+0xe8>
  e8:	66 48 0f 7e c0       	movq   %xmm0,%rax
  ed:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  f2:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  f9:	83 e0 00             	and    $0x0,%eax
  fc:	09 d0                	or     %edx,%eax
  fe:	89 45 f4             	mov    %eax,-0xc(%rbp)
 101:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 105:	48 83 c0 0c          	add    $0xc,%rax
 109:	48 8b 4d ec          	mov    -0x14(%rbp),%rcx
 10d:	8b 55 f4             	mov    -0xc(%rbp),%edx
 110:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 114:	f3 0f 7e 45 88       	movq   -0x78(%rbp),%xmm0
 119:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 11d:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
 122:	48 89 c7             	mov    %rax,%rdi
 125:	e8 00 00 00 00       	callq  12a <_ZNK6Camera6getRayEmm+0x12a>
 12a:	66 48 0f 7e c0       	movq   %xmm0,%rax
 12f:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 134:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 138:	8b 45 d0             	mov    -0x30(%rbp),%eax
 13b:	83 e0 00             	and    $0x0,%eax
 13e:	09 d0                	or     %edx,%eax
 140:	89 45 d0             	mov    %eax,-0x30(%rbp)
                  + (y * pixelHeight) * down )
 143:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 147:	8b 55 e8             	mov    -0x18(%rbp),%edx
 14a:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
 14e:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 152:	f3 0f 7e 45 88       	movq   -0x78(%rbp),%xmm0
 157:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 15b:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
 160:	48 89 c7             	mov    %rax,%rdi
 163:	e8 00 00 00 00       	callq  168 <_ZNK6Camera6getRayEmm+0x168>
 168:	66 48 0f 7e c0       	movq   %xmm0,%rax
 16d:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 172:	48 89 45 d4          	mov    %rax,-0x2c(%rbp)
 176:	8b 45 dc             	mov    -0x24(%rbp),%eax
 179:	83 e0 00             	and    $0x0,%eax
 17c:	09 d0                	or     %edx,%eax
 17e:	89 45 dc             	mov    %eax,-0x24(%rbp)
                  - eye;
 181:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 185:	48 8b 08             	mov    (%rax),%rcx
 188:	8b 50 08             	mov    0x8(%rax),%edx
 18b:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
 18f:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 193:	f3 0f 7e 45 88       	movq   -0x78(%rbp),%xmm0
 198:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 19c:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
 1a1:	48 89 c7             	mov    %rax,%rdi
 1a4:	e8 00 00 00 00       	callq  1a9 <_ZNK6Camera6getRayEmm+0x1a9>
 1a9:	66 48 0f 7e c0       	movq   %xmm0,%rax
 1ae:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 1b3:	48 89 45 bc          	mov    %rax,-0x44(%rbp)
 1b7:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 1ba:	83 e0 00             	and    $0x0,%eax
 1bd:	09 d0                	or     %edx,%eax
 1bf:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    return Ray<FLOAT>(eye, direction);
 1c2:	48 8b 7d bc          	mov    -0x44(%rbp),%rdi
 1c6:	8b 75 c4             	mov    -0x3c(%rbp),%esi
 1c9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 1cd:	48 8b 08             	mov    (%rax),%rcx
 1d0:	8b 50 08             	mov    0x8(%rax),%edx
 1d3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1d7:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
 1db:	f3 0f 7e 55 88       	movq   -0x78(%rbp),%xmm2
 1e0:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
 1e4:	f3 0f 7e 5d 88       	movq   -0x78(%rbp),%xmm3
 1e9:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 1ed:	f3 0f 7e 45 88       	movq   -0x78(%rbp),%xmm0
 1f2:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 1f6:	f3 0f 7e 4d 88       	movq   -0x78(%rbp),%xmm1
 1fb:	48 89 c7             	mov    %rax,%rdi
 1fe:	e8 00 00 00 00       	callq  203 <_ZNK6Camera6getRayEmm+0x203>
  }
 203:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 207:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
 20b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
 212:	00 00 
 214:	74 05                	je     21b <_ZNK6Camera6getRayEmm+0x21b>
 216:	e8 00 00 00 00       	callq  21b <_ZNK6Camera6getRayEmm+0x21b>
 21b:	c9                   	leaveq 
 21c:	c3                   	retq   

Disassembly of section .text._ZN5LightC2E6VectorIfLm3EE5Color:

0000000000000000 <_ZN5LightC1E6VectorIfLm3EE5Color>:
  Light(Vector<FLOAT, 3> position = Vector<FLOAT, 3>({0.0, 0.0, 1000.0}),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   d:	66 48 0f 7e c9       	movq   %xmm1,%rcx
  12:	66 48 0f 7e d2       	movq   %xmm2,%rdx
  17:	0f 28 c3             	movaps %xmm3,%xmm0
  1a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1e:	8b 45 f0             	mov    -0x10(%rbp),%eax
  21:	83 e0 00             	and    $0x0,%eax
  24:	09 c8                	or     %ecx,%eax
  26:	89 45 f0             	mov    %eax,-0x10(%rbp)
  29:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  2d:	f3 0f 11 45 e0       	movss  %xmm0,-0x20(%rbp)
    : position(position), color(color) {
  32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  36:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  3a:	48 89 10             	mov    %rdx,(%rax)
  3d:	8b 55 f0             	mov    -0x10(%rbp),%edx
  40:	89 50 08             	mov    %edx,0x8(%rax)
  43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  47:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4b:	48 89 50 0c          	mov    %rdx,0xc(%rax)
  4f:	8b 55 e0             	mov    -0x20(%rbp),%edx
  52:	89 50 14             	mov    %edx,0x14(%rax)
  }
  55:	90                   	nop
  56:	5d                   	pop    %rbp
  57:	c3                   	retq   

Disassembly of section .text._ZNK5Light8getColorEv:

0000000000000000 <_ZNK5Light8getColorEv>:
  Color getColor() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     return color;
   8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   c:	48 8b 50 0c          	mov    0xc(%rax),%rdx
  10:	48 89 55 f4          	mov    %rdx,-0xc(%rbp)
  14:	8b 40 14             	mov    0x14(%rax),%eax
  17:	89 45 fc             	mov    %eax,-0x4(%rbp)
  1a:	48 8b 45 f4          	mov    -0xc(%rbp),%rax
  1e:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  23:	0f 28 c8             	movaps %xmm0,%xmm1
  }
  26:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  2a:	f3 0f 7e 45 c8       	movq   -0x38(%rbp),%xmm0
  2f:	5d                   	pop    %rbp
  30:	c3                   	retq   

Disassembly of section .text._ZNK5Light11getPositionEv:

0000000000000000 <_ZNK5Light11getPositionEv>:
  Vector<FLOAT, 3> getPosition() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    return position;
  1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1f:	48 8b 10             	mov    (%rax),%rdx
  22:	48 89 55 ec          	mov    %rdx,-0x14(%rbp)
  26:	8b 40 08             	mov    0x8(%rax),%eax
  29:	89 45 f4             	mov    %eax,-0xc(%rbp)
  2c:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  30:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  33:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  37:	f3 0f 7e 45 b8       	movq   -0x48(%rbp),%xmm0
  3c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40:	f3 0f 7e 4d b8       	movq   -0x48(%rbp),%xmm1
  45:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  49:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  50:	00 00 
  52:	74 05                	je     59 <_ZNK5Light11getPositionEv+0x59>
  54:	e8 00 00 00 00       	callq  59 <_ZNK5Light11getPositionEv+0x59>
  59:	c9                   	leaveq 
  5a:	c3                   	retq   

Disassembly of section .text._ZN5Scene3addE8TriangleIfE:

0000000000000000 <_ZN5Scene3addE8TriangleIfE>:
  void add(Triangle<FLOAT> triangle) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    triangles.push_back( triangle );
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8d 75 10          	lea    0x10(%rbp),%rsi
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZN5Scene3addE8TriangleIfE+0x1c>
  }
  1c:	90                   	nop
  1d:	c9                   	leaveq 
  1e:	c3                   	retq   

Disassembly of section .text._ZN5Scene8addLightE5Light:

0000000000000000 <_ZN5Scene8addLightE5Light>:
  void addLight(Light light) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    lights.push_back( light );
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 83 c0 18          	add    $0x18,%rax
  14:	48 8d 75 10          	lea    0x10(%rbp),%rsi
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN5Scene8addLightE5Light+0x20>
  }
  20:	90                   	nop
  21:	c9                   	leaveq 
  22:	c3                   	retq   

Disassembly of section .text._ZN5Scene12getTrianglesEv:

0000000000000000 <_ZN5Scene12getTrianglesEv>:
  std::vector< Triangle<FLOAT> * > getTriangles() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 38          	sub    $0x38,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  18:	00 00 
  1a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1e:	31 c0                	xor    %eax,%eax
    std::vector< Triangle<FLOAT> * > triangles_ptr;
  20:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	callq  2c <_ZN5Scene12getTrianglesEv+0x2c>
    for (size_t i = 0; i < triangles.size(); i++) {
  2c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  33:	00 
  34:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZN5Scene12getTrianglesEv+0x40>
  40:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  44:	0f 92 c0             	setb   %al
  47:	84 c0                	test   %al,%al
  49:	74 4b                	je     96 <_ZN5Scene12getTrianglesEv+0x96>
      triangles_ptr.push_back( &triangles[i] );      
  4b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  53:	48 89 d6             	mov    %rdx,%rsi
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	callq  5e <_ZN5Scene12getTrianglesEv+0x5e>
  5e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  62:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  66:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6a:	48 89 d6             	mov    %rdx,%rsi
  6d:	48 89 c7             	mov    %rax,%rdi
  70:	e8 00 00 00 00       	callq  75 <_ZN5Scene12getTrianglesEv+0x75>
    for (size_t i = 0; i < triangles.size(); i++) {
  75:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
  7a:	eb b8                	jmp    34 <_ZN5Scene12getTrianglesEv+0x34>
  7c:	48 89 c3             	mov    %rax,%rbx
  7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  83:	48 89 c7             	mov    %rax,%rdi
  86:	e8 00 00 00 00       	callq  8b <_ZN5Scene12getTrianglesEv+0x8b>
  8b:	48 89 d8             	mov    %rbx,%rax
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	callq  96 <_ZN5Scene12getTrianglesEv+0x96>
    return triangles_ptr;
  96:	90                   	nop
  }
  97:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  9b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  9f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  a6:	00 00 
  a8:	74 05                	je     af <_ZN5Scene12getTrianglesEv+0xaf>
  aa:	e8 00 00 00 00       	callq  af <_ZN5Scene12getTrianglesEv+0xaf>
  af:	48 83 c4 38          	add    $0x38,%rsp
  b3:	5b                   	pop    %rbx
  b4:	5d                   	pop    %rbp
  b5:	c3                   	retq   

Disassembly of section .text._ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b:

0000000000000000 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b>:
bool hasNearestTriangle(const Ray<FLOAT> & ray, Triangle<FLOAT> *  & nearest_triangle, FLOAT &t, FLOAT &u, FLOAT &v, const bool NEAREST = true)  {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   8:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   c:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  10:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  14:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  18:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
  1c:	4c 89 4d 90          	mov    %r9,-0x70(%rbp)
  20:	8b 45 10             	mov    0x10(%rbp),%eax
  23:	88 45 8c             	mov    %al,-0x74(%rbp)
  26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2d:	00 00 
  2f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  33:	31 c0                	xor    %eax,%eax
  FLOAT minimum_t = INFINITY;
  35:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 3d <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x3d>
  3c:	00 
  3d:	f3 0f 11 45 c4       	movss  %xmm0,-0x3c(%rbp)
  FLOAT minimum_u  = 0.0, minimum_v = 0.0;
  42:	66 0f ef c0          	pxor   %xmm0,%xmm0
  46:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
  4b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4f:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
  for (size_t i = 0u; i < triangles.size(); i++) {
  54:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  5b:	00 
  5c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  60:	48 89 c7             	mov    %rax,%rdi
  63:	e8 00 00 00 00       	callq  68 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x68>
  68:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
  6c:	0f 92 c0             	setb   %al
  6f:	84 c0                	test   %al,%al
  71:	0f 84 4d 01 00 00    	je     1c4 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1c4>
    Triangle<FLOAT> *triangle = &triangles[i];
  77:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  7b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  7f:	48 89 d6             	mov    %rdx,%rsi
  82:	48 89 c7             	mov    %rax,%rdi
  85:	e8 00 00 00 00       	callq  8a <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x8a>
  8a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    stats.no_ray_triangle_intersection_tests++;
  8e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 95 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x95>
  95:	48 83 c0 01          	add    $0x1,%rax
  99:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # a0 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0xa0>
    bool intersect = triangle->intersects(ray.getOrigin(), ray.getDirection(), t, u, v, minimum_t);
  a0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  a4:	48 89 c7             	mov    %rax,%rdi
  a7:	e8 00 00 00 00       	callq  ac <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0xac>
  ac:	66 48 0f 7e c0       	movq   %xmm0,%rax
  b1:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  b6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  ba:	8b 45 e8             	mov    -0x18(%rbp),%eax
  bd:	83 e0 00             	and    $0x0,%eax
  c0:	09 d0                	or     %edx,%eax
  c2:	89 45 e8             	mov    %eax,-0x18(%rbp)
  c5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  c9:	48 89 c7             	mov    %rax,%rdi
  cc:	e8 00 00 00 00       	callq  d1 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0xd1>
  d1:	66 48 0f 7e c0       	movq   %xmm0,%rax
  d6:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  db:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  df:	8b 45 f4             	mov    -0xc(%rbp),%eax
  e2:	83 e0 00             	and    $0x0,%eax
  e5:	09 d0                	or     %edx,%eax
  e7:	89 45 f4             	mov    %eax,-0xc(%rbp)
  ea:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
  ef:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  f3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  f7:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  fb:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  ff:	44 8b 4d e8          	mov    -0x18(%rbp),%r9d
 103:	4c 8b 45 ec          	mov    -0x14(%rbp),%r8
 107:	8b 7d f4             	mov    -0xc(%rbp),%edi
 10a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 10e:	0f 28 e0             	movaps %xmm0,%xmm4
 111:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
 115:	f3 0f 7e 55 80       	movq   -0x80(%rbp),%xmm2
 11a:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
 11e:	f3 0f 7e 5d 80       	movq   -0x80(%rbp),%xmm3
 123:	4c 89 45 80          	mov    %r8,-0x80(%rbp)
 127:	f3 0f 7e 45 80       	movq   -0x80(%rbp),%xmm0
 12c:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
 130:	f3 0f 7e 4d 80       	movq   -0x80(%rbp),%xmm1
 135:	48 89 c7             	mov    %rax,%rdi
 138:	e8 00 00 00 00       	callq  13d <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x13d>
 13d:	88 45 c3             	mov    %al,-0x3d(%rbp)
    if ( intersect ) {
 140:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
 144:	74 74                	je     1ba <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1ba>
      stats.no_ray_triangle_intersections_found++;          
 146:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14d <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x14d>
 14d:	48 83 c0 01          	add    $0x1,%rax
 151:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 158 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x158>
      if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {      
 158:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 15c:	48 8b 00             	mov    (%rax),%rax
 15f:	48 85 c0             	test   %rax,%rax
 162:	74 12                	je     176 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x176>
 164:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 168:	f3 0f 10 08          	movss  (%rax),%xmm1
 16c:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
 171:	0f 2e c1             	ucomiss %xmm1,%xmm0
 174:	76 44                	jbe    1ba <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1ba>
        minimum_t = t;
 176:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 17a:	f3 0f 10 00          	movss  (%rax),%xmm0
 17e:	f3 0f 11 45 c4       	movss  %xmm0,-0x3c(%rbp)
        minimum_u = u;
 183:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 187:	f3 0f 10 00          	movss  (%rax),%xmm0
 18b:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
        minimum_v = v;
 190:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 194:	f3 0f 10 00          	movss  (%rax),%xmm0
 198:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
        nearest_triangle = triangle;
 19d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1a1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 1a5:	48 89 10             	mov    %rdx,(%rax)
        if ( ! NEAREST ) {
 1a8:	0f b6 45 8c          	movzbl -0x74(%rbp),%eax
 1ac:	83 f0 01             	xor    $0x1,%eax
 1af:	84 c0                	test   %al,%al
 1b1:	74 07                	je     1ba <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1ba>
          return true;
 1b3:	b8 01 00 00 00       	mov    $0x1,%eax
 1b8:	eb 3e                	jmp    1f8 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1f8>
  for (size_t i = 0u; i < triangles.size(); i++) {
 1ba:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
 1bf:	e9 98 fe ff ff       	jmpq   5c <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x5c>
  t = minimum_t;
 1c4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 1c8:	f3 0f 10 45 c4       	movss  -0x3c(%rbp),%xmm0
 1cd:	f3 0f 11 00          	movss  %xmm0,(%rax)
  u = minimum_u;
 1d1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 1d5:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
 1da:	f3 0f 11 00          	movss  %xmm0,(%rax)
  v = minimum_v;
 1de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 1e2:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
 1e7:	f3 0f 11 00          	movss  %xmm0,(%rax)
  return nearest_triangle != nullptr;
 1eb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1ef:	48 8b 00             	mov    (%rax),%rax
 1f2:	48 85 c0             	test   %rax,%rax
 1f5:	0f 95 c0             	setne  %al
}
 1f8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 1fc:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 203:	00 00 
 205:	74 05                	je     20c <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x20c>
 207:	e8 00 00 00 00       	callq  20c <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x20c>
 20c:	c9                   	leaveq 
 20d:	c3                   	retq   

Disassembly of section .text._ZN5Scene7blockedERK3RayIfE:

0000000000000000 <_ZN5Scene7blockedERK3RayIfE>:
  bool blocked(const Ray<FLOAT> & ray)  {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
     Triangle<FLOAT> * triangle = nullptr;
  1f:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  26:	00 
     return hasNearestTriangle(ray, triangle, t, u, v, false);
  27:	4c 8d 45 ec          	lea    -0x14(%rbp),%r8
  2b:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
  2f:	48 8d 4d e4          	lea    -0x1c(%rbp),%rcx
  33:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  37:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3f:	48 83 ec 08          	sub    $0x8,%rsp
  43:	6a 00                	pushq  $0x0
  45:	4d 89 c1             	mov    %r8,%r9
  48:	49 89 f8             	mov    %rdi,%r8
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	callq  53 <_ZN5Scene7blockedERK3RayIfE+0x53>
  53:	48 83 c4 10          	add    $0x10,%rsp
  }
  57:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  5b:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  62:	00 00 
  64:	74 05                	je     6b <_ZN5Scene7blockedERK3RayIfE+0x6b>
  66:	e8 00 00 00 00       	callq  6b <_ZN5Scene7blockedERK3RayIfE+0x6b>
  6b:	c9                   	leaveq 
  6c:	c3                   	retq   

Disassembly of section .text._ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_:

0000000000000000 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_>:
  Color shade(const Ray<FLOAT> & ray, Triangle<FLOAT> & triangle, Material & material, FLOAT &t, FLOAT &u, FLOAT &v)  {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 81 ec 70 01 00 00 	sub    $0x170,%rsp
   b:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
  12:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
  19:	48 89 95 d8 fe ff ff 	mov    %rdx,-0x128(%rbp)
  20:	48 89 8d d0 fe ff ff 	mov    %rcx,-0x130(%rbp)
  27:	4c 89 85 c8 fe ff ff 	mov    %r8,-0x138(%rbp)
  2e:	4c 89 8d c0 fe ff ff 	mov    %r9,-0x140(%rbp)
  35:	48 8b 45 10          	mov    0x10(%rbp),%rax
  39:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  40:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  47:	00 00 
  49:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4d:	31 c0                	xor    %eax,%eax
    Color color =  material.getAmbient() * material.getColor();
  4f:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	callq  5e <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x5e>
  5e:	66 48 0f 7e c0       	movq   %xmm0,%rax
  63:	0f 28 c1             	movaps %xmm1,%xmm0
  66:	48 89 85 24 ff ff ff 	mov    %rax,-0xdc(%rbp)
  6d:	f3 0f 11 85 2c ff ff 	movss  %xmm0,-0xd4(%rbp)
  74:	ff 
  75:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  7c:	48 89 c7             	mov    %rax,%rdi
  7f:	e8 00 00 00 00       	callq  84 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x84>
  84:	0f 28 d8             	movaps %xmm0,%xmm3
  87:	48 8b 85 24 ff ff ff 	mov    -0xdc(%rbp),%rax
  8e:	f3 0f 10 85 2c ff ff 	movss  -0xd4(%rbp),%xmm0
  95:	ff 
  96:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
  9d:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
  a4:	ff 
  a5:	0f 28 d0             	movaps %xmm0,%xmm2
  a8:	0f 28 c3             	movaps %xmm3,%xmm0
  ab:	e8 00 00 00 00       	callq  b0 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xb0>
  b0:	66 48 0f 7e c0       	movq   %xmm0,%rax
  b5:	0f 28 c1             	movaps %xmm1,%xmm0
  b8:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  bf:	f3 0f 11 85 20 ff ff 	movss  %xmm0,-0xe0(%rbp)
  c6:	ff 
    FLOAT factor = 1.0 / lights.size();
  c7:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
  ce:	48 83 c0 18          	add    $0x18,%rax
  d2:	48 89 c7             	mov    %rax,%rdi
  d5:	e8 00 00 00 00       	callq  da <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xda>
  da:	48 85 c0             	test   %rax,%rax
  dd:	78 07                	js     e6 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xe6>
  df:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  e4:	eb 15                	jmp    fb <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xfb>
  e6:	48 89 c2             	mov    %rax,%rdx
  e9:	48 d1 ea             	shr    %rdx
  ec:	83 e0 01             	and    $0x1,%eax
  ef:	48 09 c2             	or     %rax,%rdx
  f2:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
  f7:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  fb:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 103 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x103>
 102:	00 
 103:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
 107:	66 0f 28 c1          	movapd %xmm1,%xmm0
 10b:	f2 0f 5a e8          	cvtsd2ss %xmm0,%xmm5
 10f:	f3 0f 11 ad f8 fe ff 	movss  %xmm5,-0x108(%rbp)
 116:	ff 
    Vector<FLOAT, 3> intersection = (ray.getOrigin() + 0.9999 * t * ray.getDirection());
 117:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
 11e:	48 89 c7             	mov    %rax,%rdi
 121:	e8 00 00 00 00       	callq  126 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x126>
 126:	66 48 0f 7e c0       	movq   %xmm0,%rax
 12b:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 130:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 134:	8b 45 98             	mov    -0x68(%rbp),%eax
 137:	83 e0 00             	and    $0x0,%eax
 13a:	09 d0                	or     %edx,%eax
 13c:	89 45 98             	mov    %eax,-0x68(%rbp)
 13f:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 146:	f3 0f 10 00          	movss  (%rax),%xmm0
 14a:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 14e:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 156 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x156>
 155:	00 
 156:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 15a:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 15e:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
 162:	8b 45 98             	mov    -0x68(%rbp),%eax
 165:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 16c:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 173:	ff 
 174:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 17b:	f3 0f 7e 95 98 fe ff 	movq   -0x168(%rbp),%xmm2
 182:	ff 
 183:	e8 00 00 00 00       	callq  188 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x188>
 188:	66 48 0f 7e c0       	movq   %xmm0,%rax
 18d:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 192:	48 89 45 9c          	mov    %rax,-0x64(%rbp)
 196:	8b 45 a4             	mov    -0x5c(%rbp),%eax
 199:	83 e0 00             	and    $0x0,%eax
 19c:	09 d0                	or     %edx,%eax
 19e:	89 45 a4             	mov    %eax,-0x5c(%rbp)
 1a1:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
 1a8:	48 89 c7             	mov    %rax,%rdi
 1ab:	e8 00 00 00 00       	callq  1b0 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x1b0>
 1b0:	66 48 0f 7e c0       	movq   %xmm0,%rax
 1b5:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 1ba:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 1be:	8b 45 e8             	mov    -0x18(%rbp),%eax
 1c1:	83 e0 00             	and    $0x0,%eax
 1c4:	09 d0                	or     %edx,%eax
 1c6:	89 45 e8             	mov    %eax,-0x18(%rbp)
 1c9:	48 8b 4d 9c          	mov    -0x64(%rbp),%rcx
 1cd:	8b 55 a4             	mov    -0x5c(%rbp),%edx
 1d0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 1d4:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 1db:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 1e2:	ff 
 1e3:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 1ea:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 1f1:	ff 
 1f2:	48 89 c7             	mov    %rax,%rdi
 1f5:	e8 00 00 00 00       	callq  1fa <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x1fa>
 1fa:	66 48 0f 7e c0       	movq   %xmm0,%rax
 1ff:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 204:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
 20b:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
 211:	83 e0 00             	and    $0x0,%eax
 214:	09 d0                	or     %edx,%eax
 216:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
    Vector<FLOAT, 3> normal = (u * triangle.n1) + (v * triangle.n2) + ( (1.0 - u - v) * triangle.n3);    
 21c:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
 223:	f3 0f 10 00          	movss  (%rax),%xmm0
 227:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 22b:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 233 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x233>
 232:	00 
 233:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
 237:	66 0f 28 c1          	movapd %xmm1,%xmm0
 23b:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 242:	f3 0f 10 08          	movss  (%rax),%xmm1
 246:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
 24a:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
 24e:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 252:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 259:	48 8b 50 3c          	mov    0x3c(%rax),%rdx
 25d:	8b 40 44             	mov    0x44(%rax),%eax
 260:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 267:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 26e:	ff 
 26f:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 276:	f3 0f 7e 95 98 fe ff 	movq   -0x168(%rbp),%xmm2
 27d:	ff 
 27e:	e8 00 00 00 00       	callq  283 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x283>
 283:	66 48 0f 7e c0       	movq   %xmm0,%rax
 288:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 28d:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 291:	8b 45 b0             	mov    -0x50(%rbp),%eax
 294:	83 e0 00             	and    $0x0,%eax
 297:	09 d0                	or     %edx,%eax
 299:	89 45 b0             	mov    %eax,-0x50(%rbp)
 29c:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 2a3:	8b 10                	mov    (%rax),%edx
 2a5:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 2ac:	48 8b 48 30          	mov    0x30(%rax),%rcx
 2b0:	8b 40 38             	mov    0x38(%rax),%eax
 2b3:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 2ba:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 2c1:	ff 
 2c2:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 2c9:	f3 0f 7e 95 98 fe ff 	movq   -0x168(%rbp),%xmm2
 2d0:	ff 
 2d1:	89 95 98 fe ff ff    	mov    %edx,-0x168(%rbp)
 2d7:	f3 0f 10 85 98 fe ff 	movss  -0x168(%rbp),%xmm0
 2de:	ff 
 2df:	e8 00 00 00 00       	callq  2e4 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x2e4>
 2e4:	66 48 0f 7e c0       	movq   %xmm0,%rax
 2e9:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 2ee:	48 89 45 b4          	mov    %rax,-0x4c(%rbp)
 2f2:	8b 45 bc             	mov    -0x44(%rbp),%eax
 2f5:	83 e0 00             	and    $0x0,%eax
 2f8:	09 d0                	or     %edx,%eax
 2fa:	89 45 bc             	mov    %eax,-0x44(%rbp)
 2fd:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
 304:	8b 10                	mov    (%rax),%edx
 306:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 30d:	48 8b 48 24          	mov    0x24(%rax),%rcx
 311:	8b 40 2c             	mov    0x2c(%rax),%eax
 314:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 31b:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 322:	ff 
 323:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 32a:	f3 0f 7e 95 98 fe ff 	movq   -0x168(%rbp),%xmm2
 331:	ff 
 332:	89 95 98 fe ff ff    	mov    %edx,-0x168(%rbp)
 338:	f3 0f 10 85 98 fe ff 	movss  -0x168(%rbp),%xmm0
 33f:	ff 
 340:	e8 00 00 00 00       	callq  345 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x345>
 345:	66 48 0f 7e c0       	movq   %xmm0,%rax
 34a:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 34f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 353:	8b 45 c8             	mov    -0x38(%rbp),%eax
 356:	83 e0 00             	and    $0x0,%eax
 359:	09 d0                	or     %edx,%eax
 35b:	89 45 c8             	mov    %eax,-0x38(%rbp)
 35e:	48 8b 4d b4          	mov    -0x4c(%rbp),%rcx
 362:	8b 55 bc             	mov    -0x44(%rbp),%edx
 365:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 369:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 370:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 377:	ff 
 378:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 37f:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 386:	ff 
 387:	48 89 c7             	mov    %rax,%rdi
 38a:	e8 00 00 00 00       	callq  38f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x38f>
 38f:	66 48 0f 7e c0       	movq   %xmm0,%rax
 394:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 399:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 39d:	8b 45 e8             	mov    -0x18(%rbp),%eax
 3a0:	83 e0 00             	and    $0x0,%eax
 3a3:	09 d0                	or     %edx,%eax
 3a5:	89 45 e8             	mov    %eax,-0x18(%rbp)
 3a8:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
 3ac:	8b 55 b0             	mov    -0x50(%rbp),%edx
 3af:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 3b3:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 3ba:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 3c1:	ff 
 3c2:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 3c9:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 3d0:	ff 
 3d1:	48 89 c7             	mov    %rax,%rdi
 3d4:	e8 00 00 00 00       	callq  3d9 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x3d9>
 3d9:	66 48 0f 7e c0       	movq   %xmm0,%rax
 3de:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 3e3:	48 89 85 6c ff ff ff 	mov    %rax,-0x94(%rbp)
 3ea:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
 3f0:	83 e0 00             	and    $0x0,%eax
 3f3:	09 d0                	or     %edx,%eax
 3f5:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
    normal.normalize();
 3fb:	48 8d 85 6c ff ff ff 	lea    -0x94(%rbp),%rax
 402:	48 89 c7             	mov    %rax,%rdi
 405:	e8 00 00 00 00       	callq  40a <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x40a>
    for (Light light : lights) {
 40a:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
 411:	48 83 c0 18          	add    $0x18,%rax
 415:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
 41c:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
 423:	48 89 c7             	mov    %rax,%rdi
 426:	e8 00 00 00 00       	callq  42b <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x42b>
 42b:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 432:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
 439:	48 89 c7             	mov    %rax,%rdi
 43c:	e8 00 00 00 00       	callq  441 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x441>
 441:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
 448:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
 44f:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
 456:	48 89 d6             	mov    %rdx,%rsi
 459:	48 89 c7             	mov    %rax,%rdi
 45c:	e8 00 00 00 00       	callq  461 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x461>
 461:	84 c0                	test   %al,%al
 463:	0f 84 f3 02 00 00    	je     75c <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x75c>
 469:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
 470:	48 89 c7             	mov    %rax,%rdi
 473:	e8 00 00 00 00       	callq  478 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x478>
 478:	48 89 c1             	mov    %rax,%rcx
 47b:	48 8b 01             	mov    (%rcx),%rax
 47e:	48 8b 51 08          	mov    0x8(%rcx),%rdx
 482:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 486:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
 48a:	48 8b 41 10          	mov    0x10(%rcx),%rax
 48e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      Vector<FLOAT, 3> light_direction = light.getPosition() - intersection;
 492:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 496:	48 89 c7             	mov    %rax,%rdi
 499:	e8 00 00 00 00       	callq  49e <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x49e>
 49e:	66 48 0f 7e c0       	movq   %xmm0,%rax
 4a3:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 4a8:	48 89 45 84          	mov    %rax,-0x7c(%rbp)
 4ac:	8b 45 8c             	mov    -0x74(%rbp),%eax
 4af:	83 e0 00             	and    $0x0,%eax
 4b2:	09 d0                	or     %edx,%eax
 4b4:	89 45 8c             	mov    %eax,-0x74(%rbp)
 4b7:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
 4be:	8b 95 68 ff ff ff    	mov    -0x98(%rbp),%edx
 4c4:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
 4c8:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 4cf:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 4d6:	ff 
 4d7:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 4de:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 4e5:	ff 
 4e6:	48 89 c7             	mov    %rax,%rdi
 4e9:	e8 00 00 00 00       	callq  4ee <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x4ee>
 4ee:	66 48 0f 7e c0       	movq   %xmm0,%rax
 4f3:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 4f8:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
 4ff:	8b 45 80             	mov    -0x80(%rbp),%eax
 502:	83 e0 00             	and    $0x0,%eax
 505:	09 d0                	or     %edx,%eax
 507:	89 45 80             	mov    %eax,-0x80(%rbp)
      const Ray<FLOAT> ray_to_light(intersection, light_direction);
 50a:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
 511:	8b 75 80             	mov    -0x80(%rbp),%esi
 514:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
 51b:	8b 95 68 ff ff ff    	mov    -0x98(%rbp),%edx
 521:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 525:	48 89 bd 98 fe ff ff 	mov    %rdi,-0x168(%rbp)
 52c:	f3 0f 7e 95 98 fe ff 	movq   -0x168(%rbp),%xmm2
 533:	ff 
 534:	48 89 b5 98 fe ff ff 	mov    %rsi,-0x168(%rbp)
 53b:	f3 0f 7e 9d 98 fe ff 	movq   -0x168(%rbp),%xmm3
 542:	ff 
 543:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 54a:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 551:	ff 
 552:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 559:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 560:	ff 
 561:	48 89 c7             	mov    %rax,%rdi
 564:	e8 00 00 00 00       	callq  569 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x569>
      if ( ! blocked( ray_to_light )  ) { 
 569:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
 56d:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
 574:	48 89 d6             	mov    %rdx,%rsi
 577:	48 89 c7             	mov    %rax,%rdi
 57a:	e8 00 00 00 00       	callq  57f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x57f>
 57f:	83 f0 01             	xor    $0x1,%eax
 582:	84 c0                	test   %al,%al
 584:	0f 84 be 01 00 00    	je     748 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x748>
        light_direction.normalize();
 58a:	48 8d 85 78 ff ff ff 	lea    -0x88(%rbp),%rax
 591:	48 89 c7             	mov    %rax,%rdi
 594:	e8 00 00 00 00       	callq  599 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x599>
        FLOAT angle = std::max<FLOAT>(0.0, light_direction.scalar_product(normal));
 599:	48 8b 8d 6c ff ff ff 	mov    -0x94(%rbp),%rcx
 5a0:	8b 95 74 ff ff ff    	mov    -0x8c(%rbp),%edx
 5a6:	48 8d 85 78 ff ff ff 	lea    -0x88(%rbp),%rax
 5ad:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
 5b4:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 5bb:	ff 
 5bc:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 5c3:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 5ca:	ff 
 5cb:	48 89 c7             	mov    %rax,%rdi
 5ce:	e8 00 00 00 00       	callq  5d3 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x5d3>
 5d3:	66 0f 7e c0          	movd   %xmm0,%eax
 5d7:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
 5dd:	66 0f ef c0          	pxor   %xmm0,%xmm0
 5e1:	f3 0f 11 85 f4 fe ff 	movss  %xmm0,-0x10c(%rbp)
 5e8:	ff 
 5e9:	48 8d 95 54 ff ff ff 	lea    -0xac(%rbp),%rdx
 5f0:	48 8d 85 f4 fe ff ff 	lea    -0x10c(%rbp),%rax
 5f7:	48 89 d6             	mov    %rdx,%rsi
 5fa:	48 89 c7             	mov    %rax,%rdi
 5fd:	e8 00 00 00 00       	callq  602 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x602>
 602:	f3 0f 10 00          	movss  (%rax),%xmm0
 606:	f3 0f 11 85 fc fe ff 	movss  %xmm0,-0x104(%rbp)
 60d:	ff 
        color = color + angle * factor * material.getDiffuse() * material.getColor() * light.getColor();
 60e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 612:	48 89 c7             	mov    %rax,%rdi
 615:	e8 00 00 00 00       	callq  61a <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x61a>
 61a:	66 48 0f 7e c0       	movq   %xmm0,%rax
 61f:	0f 28 c1             	movaps %xmm1,%xmm0
 622:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
 629:	f3 0f 11 85 38 ff ff 	movss  %xmm0,-0xc8(%rbp)
 630:	ff 
 631:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
 638:	48 89 c7             	mov    %rax,%rdi
 63b:	e8 00 00 00 00       	callq  640 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x640>
 640:	66 48 0f 7e c0       	movq   %xmm0,%rax
 645:	0f 28 c1             	movaps %xmm1,%xmm0
 648:	48 89 85 3c ff ff ff 	mov    %rax,-0xc4(%rbp)
 64f:	f3 0f 11 85 44 ff ff 	movss  %xmm0,-0xbc(%rbp)
 656:	ff 
 657:	f3 0f 10 85 fc fe ff 	movss  -0x104(%rbp),%xmm0
 65e:	ff 
 65f:	f3 0f 59 85 f8 fe ff 	mulss  -0x108(%rbp),%xmm0
 666:	ff 
 667:	f3 0f 11 85 98 fe ff 	movss  %xmm0,-0x168(%rbp)
 66e:	ff 
 66f:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
 676:	48 89 c7             	mov    %rax,%rdi
 679:	e8 00 00 00 00       	callq  67e <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x67e>
 67e:	f3 0f 59 85 98 fe ff 	mulss  -0x168(%rbp),%xmm0
 685:	ff 
 686:	48 8b 85 3c ff ff ff 	mov    -0xc4(%rbp),%rax
 68d:	f3 0f 10 95 44 ff ff 	movss  -0xbc(%rbp),%xmm2
 694:	ff 
 695:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 69c:	f3 0f 7e 8d 98 fe ff 	movq   -0x168(%rbp),%xmm1
 6a3:	ff 
 6a4:	e8 00 00 00 00       	callq  6a9 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x6a9>
 6a9:	66 48 0f 7e c0       	movq   %xmm0,%rax
 6ae:	0f 28 c1             	movaps %xmm1,%xmm0
 6b1:	48 89 85 54 ff ff ff 	mov    %rax,-0xac(%rbp)
 6b8:	f3 0f 11 85 5c ff ff 	movss  %xmm0,-0xa4(%rbp)
 6bf:	ff 
 6c0:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
 6c7:	f3 0f 10 8d 38 ff ff 	movss  -0xc8(%rbp),%xmm1
 6ce:	ff 
 6cf:	48 8d 85 54 ff ff ff 	lea    -0xac(%rbp),%rax
 6d6:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 6dd:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 6e4:	ff 
 6e5:	48 89 c7             	mov    %rax,%rdi
 6e8:	e8 00 00 00 00       	callq  6ed <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x6ed>
 6ed:	66 48 0f 7e c0       	movq   %xmm0,%rax
 6f2:	0f 28 c1             	movaps %xmm1,%xmm0
 6f5:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
 6fc:	f3 0f 11 85 50 ff ff 	movss  %xmm0,-0xb0(%rbp)
 703:	ff 
 704:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
 70b:	f3 0f 10 8d 50 ff ff 	movss  -0xb0(%rbp),%xmm1
 712:	ff 
 713:	48 8d 85 18 ff ff ff 	lea    -0xe8(%rbp),%rax
 71a:	48 89 95 98 fe ff ff 	mov    %rdx,-0x168(%rbp)
 721:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 728:	ff 
 729:	48 89 c7             	mov    %rax,%rdi
 72c:	e8 00 00 00 00       	callq  731 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x731>
 731:	66 48 0f 7e c0       	movq   %xmm0,%rax
 736:	0f 28 c1             	movaps %xmm1,%xmm0
 739:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
 740:	f3 0f 11 85 20 ff ff 	movss  %xmm0,-0xe0(%rbp)
 747:	ff 
    for (Light light : lights) {
 748:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
 74f:	48 89 c7             	mov    %rax,%rdi
 752:	e8 00 00 00 00       	callq  757 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x757>
 757:	e9 ec fc ff ff       	jmpq   448 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x448>
    return color;
 75c:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 763:	48 89 85 54 ff ff ff 	mov    %rax,-0xac(%rbp)
 76a:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
 770:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
 776:	48 8b 85 54 ff ff ff 	mov    -0xac(%rbp),%rax
 77d:	f3 0f 10 85 5c ff ff 	movss  -0xa4(%rbp),%xmm0
 784:	ff 
 785:	0f 28 c8             	movaps %xmm0,%xmm1
  }
 788:	48 89 85 98 fe ff ff 	mov    %rax,-0x168(%rbp)
 78f:	f3 0f 7e 85 98 fe ff 	movq   -0x168(%rbp),%xmm0
 796:	ff 
 797:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 79b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 7a2:	00 00 
 7a4:	74 0f                	je     7b5 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7b5>
 7a6:	eb 08                	jmp    7b0 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7b0>
 7a8:	48 89 c7             	mov    %rax,%rdi
 7ab:	e8 00 00 00 00       	callq  7b0 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7b0>
 7b0:	e8 00 00 00 00       	callq  7b5 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7b5>
 7b5:	c9                   	leaveq 
 7b6:	c3                   	retq   

Disassembly of section .text._ZN5SceneC2Ev:

0000000000000000 <_ZN5SceneC1Ev>:
class Scene {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZN5SceneC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 83 c0 18          	add    $0x18,%rax
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZN5SceneC1Ev+0x28>
  28:	90                   	nop
  29:	c9                   	leaveq 
  2a:	c3                   	retq   

Disassembly of section .text._ZN5SceneD2Ev:

0000000000000000 <_ZN5SceneD1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 83 c0 18          	add    $0x18,%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZN5SceneD1Ev+0x1c>
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZN5SceneD1Ev+0x28>
  28:	90                   	nop
  29:	c9                   	leaveq 
  2a:	c3                   	retq   

Disassembly of section .text._ZN6ScreenD2Ev:

0000000000000000 <_ZN6ScreenD1Ev>:
class Screen {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 83 c0 10          	add    $0x10,%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZN6ScreenD1Ev+0x1c>
  1c:	90                   	nop
  1d:	c9                   	leaveq 
  1e:	c3                   	retq   

Disassembly of section .text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:

0000000000000000 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev>:
      _Ret __ret;

      _CharT* __endptr;

      struct _Save_errno {
	_Save_errno() : _M_errno(errno) { errno = 0; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	e8 00 00 00 00       	callq  11 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev+0x11>
  11:	8b 10                	mov    (%rax),%edx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	89 10                	mov    %edx,(%rax)
  19:	e8 00 00 00 00       	callq  1e <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev+0x1e>
  1e:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  24:	90                   	nop
  25:	c9                   	leaveq 
  26:	c3                   	retq   

Disassembly of section .text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:

0000000000000000 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev>:
	~_Save_errno() { if (errno == 0) errno = _M_errno; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	e8 00 00 00 00       	callq  11 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0x11>
  11:	8b 00                	mov    (%rax),%eax
  13:	85 c0                	test   %eax,%eax
  15:	75 10                	jne    27 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0x27>
  17:	e8 00 00 00 00       	callq  1c <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev+0x1c>
  1c:	48 89 c2             	mov    %rax,%rdx
  1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  23:	8b 00                	mov    (%rax),%eax
  25:	89 02                	mov    %eax,(%rdx)
  27:	90                   	nop
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:

0000000000000000 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE>:
      struct _Range_chk {
	  static bool
	  _S_chk(_TRet, std::false_type) { return false; }

	  static bool
	  _S_chk(_TRet __val, std::true_type) // only called when _Ret is int
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	  {
	    return __val < _TRet(__numeric_traits<int>::__min)
	      || __val > _TRet(__numeric_traits<int>::__max);
   8:	48 81 7d f8 00 00 00 	cmpq   $0xffffffff80000000,-0x8(%rbp)
   f:	80 
  10:	7c 0a                	jl     1c <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE+0x1c>
  12:	48 81 7d f8 ff ff ff 	cmpq   $0x7fffffff,-0x8(%rbp)
  19:	7f 
  1a:	7e 07                	jle    23 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE+0x23>
  1c:	b8 01 00 00 00       	mov    $0x1,%eax
  21:	eb 05                	jmp    28 <_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE+0x28>
  23:	b8 00 00 00 00       	mov    $0x0,%eax
	  }
  28:	5d                   	pop    %rbp
  29:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:

0000000000000000 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_>:
    __stoa(_TRet (*__convf) (const _CharT*, _CharT**, _Base...),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 68          	sub    $0x68,%rsp
   9:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   d:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  11:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  15:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
  19:	44 89 45 9c          	mov    %r8d,-0x64(%rbp)
  1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  24:	00 00 
  26:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2a:	31 c0                	xor    %eax,%eax
      } const __save_errno;
  2c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  30:	48 89 c7             	mov    %rax,%rdi
  33:	e8 00 00 00 00       	callq  38 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x38>
      };

      const _TRet __tmp = __convf(__str, &__endptr, __base...);
  38:	8b 55 9c             	mov    -0x64(%rbp),%edx
  3b:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  3f:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  43:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  47:	48 89 cf             	mov    %rcx,%rdi
  4a:	ff d0                	callq  *%rax
  4c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

      if (__endptr == __str)
  50:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  54:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
  58:	75 0c                	jne    66 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x66>
	std::__throw_invalid_argument(__name);
  5a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	callq  66 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x66>
      else if (errno == ERANGE
  66:	e8 00 00 00 00       	callq  6b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x6b>
  6b:	8b 00                	mov    (%rax),%eax
	  || _Range_chk::_S_chk(__tmp, std::is_same<_Ret, int>{}))
  6d:	83 f8 22             	cmp    $0x22,%eax
  70:	74 19                	je     8b <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x8b>
  72:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  76:	48 83 ec 08          	sub    $0x8,%rsp
  7a:	53                   	push   %rbx
  7b:	48 89 c7             	mov    %rax,%rdi
  7e:	e8 00 00 00 00       	callq  83 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x83>
  83:	48 83 c4 10          	add    $0x10,%rsp
  87:	84 c0                	test   %al,%al
  89:	74 07                	je     92 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x92>
  8b:	b8 01 00 00 00       	mov    $0x1,%eax
  90:	eb 05                	jmp    97 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x97>
  92:	b8 00 00 00 00       	mov    $0x0,%eax
      else if (errno == ERANGE
  97:	84 c0                	test   %al,%al
  99:	74 0c                	je     a7 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0xa7>
	std::__throw_out_of_range(__name);
  9b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0xa7>
      else
	__ret = __tmp;
  a7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  ab:	89 45 d4             	mov    %eax,-0x2c(%rbp)

      if (__idx)
  ae:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
  b3:	74 1b                	je     d0 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0xd0>
	*__idx = __endptr - __str;
  b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  b9:	48 89 c2             	mov    %rax,%rdx
  bc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  c0:	48 29 c2             	sub    %rax,%rdx
  c3:	48 89 d0             	mov    %rdx,%rax
  c6:	48 89 c2             	mov    %rax,%rdx
  c9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  cd:	48 89 10             	mov    %rdx,(%rax)

      return __ret;
  d0:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
      } const __save_errno;
  d3:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  d7:	48 89 c7             	mov    %rax,%rdi
  da:	e8 00 00 00 00       	callq  df <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0xdf>
      return __ret;
  df:	89 d8                	mov    %ebx,%eax
    }
  e1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  e5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  ec:	00 00 
  ee:	74 21                	je     111 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x111>
  f0:	eb 1a                	jmp    10c <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x10c>
  f2:	48 89 c3             	mov    %rax,%rbx
      } const __save_errno;
  f5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  f9:	48 89 c7             	mov    %rax,%rdi
  fc:	e8 00 00 00 00       	callq  101 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x101>
 101:	48 89 d8             	mov    %rbx,%rax
 104:	48 89 c7             	mov    %rax,%rdi
 107:	e8 00 00 00 00       	callq  10c <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x10c>
    }
 10c:	e8 00 00 00 00       	callq  111 <_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_+0x111>
 111:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 115:	c9                   	leaveq 
 116:	c3                   	retq   

Disassembly of section .text._ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEC2IPS0_S3_vbEET_:

0000000000000000 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEC1IPS0_S3_vbEET_>:
	       typename _Vp = _Dp,
	       typename = _DeleterConstraint<_Vp>,
	       typename = typename enable_if<
                 __safe_conversion_raw<_Up>::value, bool>::type>
	explicit
	unique_ptr(_Up __p) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_t(__p)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEC1IPS0_S3_vbEET_+0x23>
        { }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED2Ev:

0000000000000000 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED1Ev>:
	unique_ptr(unique_ptr<_Up, _Ep>&& __u) noexcept
	: _M_t(__u.release(), std::forward<_Ep>(__u.get_deleter()))
	{ }

      /// Destructor, invokes the deleter if the stored pointer is not null.
      ~unique_ptr()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      {
	auto& __ptr = _M_t._M_ptr();
   c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED1Ev+0x18>
  18:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if (__ptr != nullptr)
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 8b 00             	mov    (%rax),%rax
  23:	48 85 c0             	test   %rax,%rax
  26:	74 21                	je     49 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED1Ev+0x49>
	  get_deleter()(__ptr);
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	callq  34 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED1Ev+0x34>
  34:	48 89 c2             	mov    %rax,%rdx
  37:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  3b:	48 8b 00             	mov    (%rax),%rax
  3e:	48 89 c6             	mov    %rax,%rsi
  41:	48 89 d7             	mov    %rdx,%rdi
  44:	e8 00 00 00 00       	callq  49 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EED1Ev+0x49>
	__ptr = pointer();
  49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4d:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
      }
  54:	90                   	nop
  55:	c9                   	leaveq 
  56:	c3                   	retq   

Disassembly of section .text._ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEixEm:

0000000000000000 <_ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEixEm>:

      // Observers.

      /// Access an element of owned array.
      typename std::add_lvalue_reference<element_type>::type
      operator[](size_t __i) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
	__glibcxx_assert(get() != pointer());
	return get()[__i];
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EEixEm+0x1c>
  1c:	48 89 c1             	mov    %rax,%rcx
  1f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  23:	48 89 d0             	mov    %rdx,%rax
  26:	48 01 c0             	add    %rax,%rax
  29:	48 01 d0             	add    %rdx,%rax
  2c:	48 c1 e0 02          	shl    $0x2,%rax
  30:	48 01 c8             	add    %rcx,%rax
      }
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZNK6VectorIfLm3EEmiES0_:

0000000000000000 <_ZNK6VectorIfLm3EEmiES0_>:
    }

    return sum;
  }

  Vector<T, SIZE> operator-(const Vector<T, SIZE> subtract) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 70          	sub    $0x70,%rsp
   8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  16:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  1a:	8b 45 c0             	mov    -0x40(%rbp),%eax
  1d:	83 e0 00             	and    $0x0,%eax
  20:	09 d0                	or     %edx,%eax
  22:	89 45 c0             	mov    %eax,-0x40(%rbp)
  25:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2c:	00 00 
  2e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  32:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> difference;
  34:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNK6VectorIfLm3EEmiES0_+0x40>
 
    for (size_t i = 0u; i < SIZE; i++) {
  40:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  47:	00 
  48:	48 83 7d d8 02       	cmpq   $0x2,-0x28(%rbp)
  4d:	77 2c                	ja     7b <_ZNK6VectorIfLm3EEmiES0_+0x7b>
      difference.x[i] = this->x[i] - subtract.x[i];
  4f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  53:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  57:	f3 0f 10 04 90       	movss  (%rax,%rdx,4),%xmm0
  5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60:	f3 0f 10 4c 85 b8    	movss  -0x48(%rbp,%rax,4),%xmm1
  66:	f3 0f 5c c1          	subss  %xmm1,%xmm0
  6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6e:	f3 0f 11 44 85 e0    	movss  %xmm0,-0x20(%rbp,%rax,4)
    for (size_t i = 0u; i < SIZE; i++) {
  74:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  79:	eb cd                	jmp    48 <_ZNK6VectorIfLm3EEmiES0_+0x48>
    }

    return difference;
  7b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  7f:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  83:	8b 45 e8             	mov    -0x18(%rbp),%eax
  86:	89 45 f4             	mov    %eax,-0xc(%rbp)
  89:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  8d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  90:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  94:	f3 0f 7e 45 98       	movq   -0x68(%rbp),%xmm0
  99:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  9d:	f3 0f 7e 4d 98       	movq   -0x68(%rbp),%xmm1
  a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  ad:	00 00 
  af:	74 05                	je     b6 <_ZNK6VectorIfLm3EEmiES0_+0xb6>
  b1:	e8 00 00 00 00       	callq  b6 <_ZNK6VectorIfLm3EEmiES0_+0xb6>
  b6:	c9                   	leaveq 
  b7:	c3                   	retq   

Disassembly of section .text._ZNK6VectorIfLm3EEplES0_:

0000000000000000 <_ZNK6VectorIfLm3EEplES0_>:
  Vector<T, SIZE> operator+(const Vector<T, SIZE> addend) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 70          	sub    $0x70,%rsp
   8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  16:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  1a:	8b 45 c0             	mov    -0x40(%rbp),%eax
  1d:	83 e0 00             	and    $0x0,%eax
  20:	09 d0                	or     %edx,%eax
  22:	89 45 c0             	mov    %eax,-0x40(%rbp)
  25:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2c:	00 00 
  2e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  32:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> sum;
  34:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNK6VectorIfLm3EEplES0_+0x40>
    for (size_t i = 0u; i < SIZE; i++) {
  40:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  47:	00 
  48:	48 83 7d d8 02       	cmpq   $0x2,-0x28(%rbp)
  4d:	77 2c                	ja     7b <_ZNK6VectorIfLm3EEplES0_+0x7b>
      sum.x[i] = this->x[i] + addend.x[i];
  4f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  53:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  57:	f3 0f 10 0c 90       	movss  (%rax,%rdx,4),%xmm1
  5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60:	f3 0f 10 44 85 b8    	movss  -0x48(%rbp,%rax,4),%xmm0
  66:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  6e:	f3 0f 11 44 85 e0    	movss  %xmm0,-0x20(%rbp,%rax,4)
    for (size_t i = 0u; i < SIZE; i++) {
  74:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  79:	eb cd                	jmp    48 <_ZNK6VectorIfLm3EEplES0_+0x48>
    return sum;
  7b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  7f:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  83:	8b 45 e8             	mov    -0x18(%rbp),%eax
  86:	89 45 f4             	mov    %eax,-0xc(%rbp)
  89:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  8d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  90:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  94:	f3 0f 7e 45 98       	movq   -0x68(%rbp),%xmm0
  99:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  9d:	f3 0f 7e 4d 98       	movq   -0x68(%rbp),%xmm1
  a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  ad:	00 00 
  af:	74 05                	je     b6 <_ZNK6VectorIfLm3EEplES0_+0xb6>
  b1:	e8 00 00 00 00       	callq  b6 <_ZNK6VectorIfLm3EEplES0_+0xb6>
  b6:	c9                   	leaveq 
  b7:	c3                   	retq   

Disassembly of section .text._Zmlf6VectorIfLm3EE:

0000000000000000 <_Zmlf6VectorIfLm3EE>:
       this->x[i] /= length;
    }       
  }


  friend Vector<T, SIZE> operator*(const T factor, Vector<T, SIZE>  v)  {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 70          	sub    $0x70,%rsp
   8:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
   d:	66 48 0f 7e c8       	movq   %xmm1,%rax
  12:	66 48 0f 7e d2       	movq   %xmm2,%rdx
  17:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  1b:	8b 45 c0             	mov    -0x40(%rbp),%eax
  1e:	83 e0 00             	and    $0x0,%eax
  21:	09 d0                	or     %edx,%eax
  23:	89 45 c0             	mov    %eax,-0x40(%rbp)
  26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  2d:	00 00 
  2f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  33:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> product;
  35:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_Zmlf6VectorIfLm3EE+0x41>

    for (size_t i = 0u; i < SIZE; i++) {
  41:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  48:	00 
  49:	48 83 7d d8 02       	cmpq   $0x2,-0x28(%rbp)
  4e:	77 47                	ja     97 <_Zmlf6VectorIfLm3EE+0x97>
      product[i] = factor * v[i];
  50:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  54:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  58:	48 89 d6             	mov    %rdx,%rsi
  5b:	48 89 c7             	mov    %rax,%rdi
  5e:	e8 00 00 00 00       	callq  63 <_Zmlf6VectorIfLm3EE+0x63>
  63:	f3 0f 10 18          	movss  (%rax),%xmm3
  67:	f3 0f 11 5d 98       	movss  %xmm3,-0x68(%rbp)
  6c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  70:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  74:	48 89 d6             	mov    %rdx,%rsi
  77:	48 89 c7             	mov    %rax,%rdi
  7a:	e8 00 00 00 00       	callq  7f <_Zmlf6VectorIfLm3EE+0x7f>
  7f:	f3 0f 10 5d 98       	movss  -0x68(%rbp),%xmm3
  84:	f3 0f 59 5d cc       	mulss  -0x34(%rbp),%xmm3
  89:	0f 28 c3             	movaps %xmm3,%xmm0
  8c:	f3 0f 11 00          	movss  %xmm0,(%rax)
    for (size_t i = 0u; i < SIZE; i++) {
  90:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  95:	eb b2                	jmp    49 <_Zmlf6VectorIfLm3EE+0x49>
    }

    return product;
  97:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  9b:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  9f:	8b 45 e8             	mov    -0x18(%rbp),%eax
  a2:	89 45 f4             	mov    %eax,-0xc(%rbp)
  a5:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  a9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  ac:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  b0:	f3 0f 7e 45 98       	movq   -0x68(%rbp),%xmm0
  b5:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  b9:	f3 0f 7e 4d 98       	movq   -0x68(%rbp),%xmm1
  be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  c2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  c9:	00 00 
  cb:	74 05                	je     d2 <_Zmlf6VectorIfLm3EE+0xd2>
  cd:	e8 00 00 00 00       	callq  d2 <_Zmlf6VectorIfLm3EE+0xd2>
  d2:	c9                   	leaveq 
  d3:	c3                   	retq   

Disassembly of section .text._ZN6VectorIfLm3EE9normalizeEv:

0000000000000000 <_ZN6VectorIfLm3EE9normalizeEv>:
  void normalize(void) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    const T length = this->length();
   c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZN6VectorIfLm3EE9normalizeEv+0x18>
  18:	66 0f 7e c0          	movd   %xmm0,%eax
  1c:	89 45 f4             	mov    %eax,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  1f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  26:	00 
  27:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  2c:	77 26                	ja     54 <_ZN6VectorIfLm3EE9normalizeEv+0x54>
       this->x[i] /= length;
  2e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  32:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  36:	f3 0f 10 04 90       	movss  (%rax,%rdx,4),%xmm0
  3b:	f3 0f 5e 45 f4       	divss  -0xc(%rbp),%xmm0
  40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  44:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  48:	f3 0f 11 04 90       	movss  %xmm0,(%rax,%rdx,4)
    for (size_t i = 0u; i < SIZE; i++) {
  4d:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  52:	eb d3                	jmp    27 <_ZN6VectorIfLm3EE9normalizeEv+0x27>
  }
  54:	90                   	nop
  55:	c9                   	leaveq 
  56:	c3                   	retq   

Disassembly of section .text._ZNK6VectorIfLm3EE6lengthEv:

0000000000000000 <_ZNK6VectorIfLm3EE6lengthEv>:
  T length(void) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return sqrt( square_of_length() );
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNK6VectorIfLm3EE6lengthEv+0x18>
  18:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  1c:	e8 00 00 00 00       	callq  21 <_ZNK6VectorIfLm3EE6lengthEv+0x21>
  21:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  }
  25:	c9                   	leaveq 
  26:	c3                   	retq   

Disassembly of section .text._ZN3RayIfEC2E6VectorIfLm3EES2_:

0000000000000000 <_ZN3RayIfEC1E6VectorIfLm3EES2_>:
  Ray(Vector<T, 3> origin, Vector<T, 3> direction) : origin(origin), direction(direction) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   d:	66 48 0f 7e ce       	movq   %xmm1,%rsi
  12:	66 48 0f 7e d2       	movq   %xmm2,%rdx
  17:	66 48 0f 7e d9       	movq   %xmm3,%rcx
  1c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  20:	8b 45 f0             	mov    -0x10(%rbp),%eax
  23:	83 e0 00             	and    $0x0,%eax
  26:	09 f0                	or     %esi,%eax
  28:	89 45 f0             	mov    %eax,-0x10(%rbp)
  2b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  2f:	8b 45 e0             	mov    -0x20(%rbp),%eax
  32:	83 e0 00             	and    $0x0,%eax
  35:	09 c8                	or     %ecx,%eax
  37:	89 45 e0             	mov    %eax,-0x20(%rbp)
  3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  3e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  42:	48 89 10             	mov    %rdx,(%rax)
  45:	8b 55 f0             	mov    -0x10(%rbp),%edx
  48:	89 50 08             	mov    %edx,0x8(%rax)
  4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  53:	48 89 50 0c          	mov    %rdx,0xc(%rax)
  57:	8b 55 e0             	mov    -0x20(%rbp),%edx
  5a:	89 50 14             	mov    %edx,0x14(%rax)
  }
  5d:	90                   	nop
  5e:	5d                   	pop    %rbp
  5f:	c3                   	retq   

Disassembly of section .text._ZN6VectorIfLm3EEC2ESt16initializer_listIfE:

0000000000000000 <_ZN6VectorIfLm3EEC1ESt16initializer_listIfE>:
  Vector<T, SIZE>(std::initializer_list<T> list) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   c:	48 89 f0             	mov    %rsi,%rax
   f:	48 89 d1             	mov    %rdx,%rcx
  12:	48 89 ca             	mov    %rcx,%rdx
  15:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  19:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    size_t i = 0u;
  1d:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  24:	00 
    for (T t : list) {
  25:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  29:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  2d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  31:	48 89 c7             	mov    %rax,%rdi
  34:	e8 00 00 00 00       	callq  39 <_ZN6VectorIfLm3EEC1ESt16initializer_listIfE+0x39>
  39:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  41:	48 89 c7             	mov    %rax,%rdi
  44:	e8 00 00 00 00       	callq  49 <_ZN6VectorIfLm3EEC1ESt16initializer_listIfE+0x49>
  49:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  51:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  55:	74 2e                	je     85 <_ZN6VectorIfLm3EEC1ESt16initializer_listIfE+0x85>
  57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5b:	f3 0f 10 00          	movss  (%rax),%xmm0
  5f:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
      this->x[i++] = t;
  64:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  68:	48 8d 50 01          	lea    0x1(%rax),%rdx
  6c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  70:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  74:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
  79:	f3 0f 11 04 82       	movss  %xmm0,(%rdx,%rax,4)
    for (T t : list) {
  7e:	48 83 45 e8 04       	addq   $0x4,-0x18(%rbp)
  83:	eb c8                	jmp    4d <_ZN6VectorIfLm3EEC1ESt16initializer_listIfE+0x4d>
  }
  85:	90                   	nop
  86:	c9                   	leaveq 
  87:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_>:
       *  to it.  Due to the nature of a %vector this operation can be
       *  done in constant time if the %vector has preallocated space
       *  available.
       */
      void
      push_back(const value_type& __x)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 50 08          	mov    0x8(%rax),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 8b 40 10          	mov    0x10(%rax),%rax
  20:	48 39 c2             	cmp    %rax,%rdx
  23:	74 31                	je     56 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_+0x56>
	  {
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
  25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  29:	48 8b 48 08          	mov    0x8(%rax),%rcx
  2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  31:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  35:	48 89 ce             	mov    %rcx,%rsi
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_+0x40>
				     __x);
	    ++this->_M_impl._M_finish;
  40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  44:	48 8b 40 08          	mov    0x8(%rax),%rax
  48:	48 8d 50 48          	lea    0x48(%rax),%rdx
  4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  50:	48 89 50 08          	mov    %rdx,0x8(%rax)
	  }
	else
	  _M_realloc_insert(end(), __x);
      }
  54:	eb 22                	jmp    78 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_+0x78>
	  _M_realloc_insert(end(), __x);
  56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5a:	48 89 c7             	mov    %rax,%rdi
  5d:	e8 00 00 00 00       	callq  62 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_+0x62>
  62:	48 89 c1             	mov    %rax,%rcx
  65:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6d:	48 89 ce             	mov    %rcx,%rsi
  70:	48 89 c7             	mov    %rax,%rdi
  73:	e8 00 00 00 00       	callq  78 <_ZNSt6vectorI8TriangleIfESaIS1_EE9push_backERKS1_+0x78>
      }
  78:	90                   	nop
  79:	c9                   	leaveq 
  7a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_>:
      push_back(const value_type& __x)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 50 08          	mov    0x8(%rax),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 8b 40 10          	mov    0x10(%rax),%rax
  20:	48 39 c2             	cmp    %rax,%rdx
  23:	74 31                	je     56 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_+0x56>
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
  25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  29:	48 8b 48 08          	mov    0x8(%rax),%rcx
  2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  31:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  35:	48 89 ce             	mov    %rcx,%rsi
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_+0x40>
	    ++this->_M_impl._M_finish;
  40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  44:	48 8b 40 08          	mov    0x8(%rax),%rax
  48:	48 8d 50 18          	lea    0x18(%rax),%rdx
  4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  50:	48 89 50 08          	mov    %rdx,0x8(%rax)
      }
  54:	eb 22                	jmp    78 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_+0x78>
	  _M_realloc_insert(end(), __x);
  56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5a:	48 89 c7             	mov    %rax,%rdi
  5d:	e8 00 00 00 00       	callq  62 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_+0x62>
  62:	48 89 c1             	mov    %rax,%rcx
  65:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6d:	48 89 ce             	mov    %rcx,%rsi
  70:	48 89 c7             	mov    %rax,%rdi
  73:	e8 00 00 00 00       	callq  78 <_ZNSt6vectorI5LightSaIS0_EE9push_backERKS0_+0x78>
      }
  78:	90                   	nop
  79:	c9                   	leaveq 
  7a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EEC2Ev:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EEC1Ev>:
      vector()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorIP8TriangleIfESaIS2_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EED2Ev:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EED1Ev>:
      ~vector() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorIP8TriangleIfESaIS2_EED1Ev+0x18>
  18:	48 89 c2             	mov    %rax,%rdx
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 48 08          	mov    0x8(%rax),%rcx
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 8b 00             	mov    (%rax),%rax
  2a:	48 89 ce             	mov    %rcx,%rsi
  2d:	48 89 c7             	mov    %rax,%rdi
  30:	e8 00 00 00 00       	callq  35 <_ZNSt6vectorIP8TriangleIfESaIS2_EED1Ev+0x35>
		      _M_get_Tp_allocator()); }
  35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZNSt6vectorIP8TriangleIfESaIS2_EED1Ev+0x41>
  41:	90                   	nop
  42:	c9                   	leaveq 
  43:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI8TriangleIfESaIS1_EE4sizeEv:

0000000000000000 <_ZNKSt6vectorI8TriangleIfESaIS1_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 8b 00             	mov    (%rax),%rax
  1a:	48 29 c2             	sub    %rax,%rdx
  1d:	48 89 d0             	mov    %rdx,%rax
  20:	48 c1 f8 03          	sar    $0x3,%rax
  24:	48 89 c2             	mov    %rax,%rdx
  27:	48 b8 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rax
  2e:	e3 38 8e 
  31:	48 0f af c2          	imul   %rdx,%rax
  35:	5d                   	pop    %rbp
  36:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EEixEm:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EEixEm>:
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return *(this->_M_impl._M_start + __n);
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 08             	mov    (%rax),%rcx
  13:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  17:	48 89 d0             	mov    %rdx,%rax
  1a:	48 c1 e0 03          	shl    $0x3,%rax
  1e:	48 01 d0             	add    %rdx,%rax
  21:	48 c1 e0 03          	shl    $0x3,%rax
  25:	48 01 c8             	add    %rcx,%rax
      }
  28:	5d                   	pop    %rbp
  29:	c3                   	retq   

Disassembly of section .text._ZSt4moveIRP8TriangleIfEEONSt16remove_referenceIT_E4typeEOS5_:

0000000000000000 <_ZSt4moveIRP8TriangleIfEEONSt16remove_referenceIT_E4typeEOS5_>:
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EE9push_backEOS2_:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE9push_backEOS2_>:

#if __cplusplus >= 201103L
      void
      push_back(value_type&& __x)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { emplace_back(std::move(__x)); }
  10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZNSt6vectorIP8TriangleIfESaIS2_EE9push_backEOS2_+0x1c>
  1c:	48 89 c2             	mov    %rax,%rdx
  1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZNSt6vectorIP8TriangleIfESaIS2_EE9push_backEOS2_+0x2e>
  2e:	90                   	nop
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZNK3RayIfE9getOriginEv:

0000000000000000 <_ZNK3RayIfE9getOriginEv>:
  Vector<T, 3> getOrigin() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    return origin;
  1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1f:	48 8b 10             	mov    (%rax),%rdx
  22:	48 89 55 ec          	mov    %rdx,-0x14(%rbp)
  26:	8b 40 08             	mov    0x8(%rax),%eax
  29:	89 45 f4             	mov    %eax,-0xc(%rbp)
  2c:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  30:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  33:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  37:	f3 0f 7e 45 b8       	movq   -0x48(%rbp),%xmm0
  3c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40:	f3 0f 7e 4d b8       	movq   -0x48(%rbp),%xmm1
  45:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  49:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  50:	00 00 
  52:	74 05                	je     59 <_ZNK3RayIfE9getOriginEv+0x59>
  54:	e8 00 00 00 00       	callq  59 <_ZNK3RayIfE9getOriginEv+0x59>
  59:	c9                   	leaveq 
  5a:	c3                   	retq   

Disassembly of section .text._ZNK3RayIfE12getDirectionEv:

0000000000000000 <_ZNK3RayIfE12getDirectionEv>:
  Vector<T, 3> getDirection() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    return direction;
  1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1f:	48 8b 50 0c          	mov    0xc(%rax),%rdx
  23:	48 89 55 ec          	mov    %rdx,-0x14(%rbp)
  27:	8b 40 14             	mov    0x14(%rax),%eax
  2a:	89 45 f4             	mov    %eax,-0xc(%rbp)
  2d:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
  31:	8b 45 f4             	mov    -0xc(%rbp),%eax
  }
  34:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  38:	f3 0f 7e 45 b8       	movq   -0x48(%rbp),%xmm0
  3d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  41:	f3 0f 7e 4d b8       	movq   -0x48(%rbp),%xmm1
  46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  51:	00 00 
  53:	74 05                	je     5a <_ZNK3RayIfE12getDirectionEv+0x5a>
  55:	e8 00 00 00 00       	callq  5a <_ZNK3RayIfE12getDirectionEv+0x5a>
  5a:	c9                   	leaveq 
  5b:	c3                   	retq   

Disassembly of section .text._ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f:

0000000000000000 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f>:
    return true;
  }
#else

// optimized version
bool intersects(Vector<T,3> origin, Vector<T,3> direction,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   b:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  12:	66 48 0f 7e c0       	movq   %xmm0,%rax
  17:	66 49 0f 7e c9       	movq   %xmm1,%r9
  1c:	66 48 0f 7e d7       	movq   %xmm2,%rdi
  21:	66 49 0f 7e d8       	movq   %xmm3,%r8
  26:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
  2d:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
  34:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
  3b:	f3 0f 11 a5 0c ff ff 	movss  %xmm4,-0xf4(%rbp)
  42:	ff 
  43:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  4a:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
  50:	83 e0 00             	and    $0x0,%eax
  53:	44 09 c8             	or     %r9d,%eax
  56:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
  5c:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
  63:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
  69:	83 e0 00             	and    $0x0,%eax
  6c:	44 09 c0             	or     %r8d,%eax
  6f:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
  75:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  7c:	00 00 
  7e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  82:	31 c0                	xor    %eax,%eax
                   FLOAT &t, FLOAT &u, FLOAT &v, FLOAT minimum_t) {
    Vector<T, 3> normal =  cross_product(p2 - p1, p3  - p1);
  84:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  8b:	48 8d 50 18          	lea    0x18(%rax),%rdx
  8f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  96:	48 8b 08             	mov    (%rax),%rcx
  99:	8b 40 08             	mov    0x8(%rax),%eax
  9c:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
  a3:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
  aa:	ff 
  ab:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  b2:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
  b9:	ff 
  ba:	48 89 d7             	mov    %rdx,%rdi
  bd:	e8 00 00 00 00       	callq  c2 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0xc2>
  c2:	66 48 0f 7e c0       	movq   %xmm0,%rax
  c7:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  cc:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
  d0:	8b 45 94             	mov    -0x6c(%rbp),%eax
  d3:	83 e0 00             	and    $0x0,%eax
  d6:	09 d0                	or     %edx,%eax
  d8:	89 45 94             	mov    %eax,-0x6c(%rbp)
  db:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  e2:	48 8d 50 0c          	lea    0xc(%rax),%rdx
  e6:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  ed:	48 8b 08             	mov    (%rax),%rcx
  f0:	8b 40 08             	mov    0x8(%rax),%eax
  f3:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
  fa:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 101:	ff 
 102:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 109:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 110:	ff 
 111:	48 89 d7             	mov    %rdx,%rdi
 114:	e8 00 00 00 00       	callq  119 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x119>
 119:	66 48 0f 7e c0       	movq   %xmm0,%rax
 11e:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 123:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 127:	8b 45 a0             	mov    -0x60(%rbp),%eax
 12a:	83 e0 00             	and    $0x0,%eax
 12d:	09 d0                	or     %edx,%eax
 12f:	89 45 a0             	mov    %eax,-0x60(%rbp)
 132:	48 8b 75 8c          	mov    -0x74(%rbp),%rsi
 136:	8b 4d 94             	mov    -0x6c(%rbp),%ecx
 139:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
 13d:	8b 45 a0             	mov    -0x60(%rbp),%eax
 140:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 147:	f3 0f 7e 95 00 ff ff 	movq   -0x100(%rbp),%xmm2
 14e:	ff 
 14f:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 156:	f3 0f 7e 9d 00 ff ff 	movq   -0x100(%rbp),%xmm3
 15d:	ff 
 15e:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 165:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 16c:	ff 
 16d:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 174:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 17b:	ff 
 17c:	e8 00 00 00 00       	callq  181 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x181>
 181:	66 48 0f 7e c0       	movq   %xmm0,%rax
 186:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 18b:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
 192:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
 198:	83 e0 00             	and    $0x0,%eax
 19b:	09 d0                	or     %edx,%eax
 19d:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
    
    T normalRayProduct = normal.scalar_product( direction );
 1a3:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
 1aa:	8b 95 30 ff ff ff    	mov    -0xd0(%rbp),%edx
 1b0:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 1b7:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 1be:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 1c5:	ff 
 1c6:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 1cd:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 1d4:	ff 
 1d5:	48 89 c7             	mov    %rax,%rdi
 1d8:	e8 00 00 00 00       	callq  1dd <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x1dd>
 1dd:	66 0f 7e c0          	movd   %xmm0,%eax
 1e1:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)

    if ( fabs(normalRayProduct) < EPSILON ) {
 1e7:	f3 0f 10 8d 54 ff ff 	movss  -0xac(%rbp),%xmm1
 1ee:	ff 
 1ef:	f3 0f 10 05 00 00 00 	movss  0x0(%rip),%xmm0        # 1f7 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x1f7>
 1f6:	00 
 1f7:	0f 54 c1             	andps  %xmm1,%xmm0
 1fa:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 1fe:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 206 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x206>
 205:	00 
 206:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
 20a:	76 0a                	jbe    216 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x216>
      return false;
 20c:	b8 00 00 00 00       	mov    $0x0,%eax
 211:	e9 45 06 00 00       	jmpq   85b <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x85b>
    }

    T d = normal.scalar_product( p1 );
 216:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 21d:	48 8b 08             	mov    (%rax),%rcx
 220:	8b 50 08             	mov    0x8(%rax),%edx
 223:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 22a:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 231:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 238:	ff 
 239:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 240:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 247:	ff 
 248:	48 89 c7             	mov    %rax,%rdi
 24b:	e8 00 00 00 00       	callq  250 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x250>
 250:	66 0f 7e c0          	movd   %xmm0,%eax
 254:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
    t = (d - normal.scalar_product( origin ) ) / normalRayProduct;
 25a:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
 261:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
 267:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 26e:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 275:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 27c:	ff 
 27d:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 284:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 28b:	ff 
 28c:	48 89 c7             	mov    %rax,%rdi
 28f:	e8 00 00 00 00       	callq  294 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x294>
 294:	0f 28 c8             	movaps %xmm0,%xmm1
 297:	f3 0f 10 85 58 ff ff 	movss  -0xa8(%rbp),%xmm0
 29e:	ff 
 29f:	f3 0f 5c c1          	subss  %xmm1,%xmm0
 2a3:	f3 0f 5e 85 54 ff ff 	divss  -0xac(%rbp),%xmm0
 2aa:	ff 
 2ab:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2b2:	f3 0f 11 00          	movss  %xmm0,(%rax)

    if ( t < 0.0 || t > minimum_t) {
 2b6:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2bd:	f3 0f 10 08          	movss  (%rax),%xmm1
 2c1:	66 0f ef c0          	pxor   %xmm0,%xmm0
 2c5:	0f 2e c1             	ucomiss %xmm1,%xmm0
 2c8:	77 14                	ja     2de <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x2de>
 2ca:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2d1:	f3 0f 10 00          	movss  (%rax),%xmm0
 2d5:	0f 2e 85 0c ff ff ff 	ucomiss -0xf4(%rbp),%xmm0
 2dc:	76 0a                	jbe    2e8 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x2e8>
      return false;
 2de:	b8 00 00 00 00       	mov    $0x0,%eax
 2e3:	e9 73 05 00 00       	jmpq   85b <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x85b>
    }
   

    Vector<T, 3> intersection = origin + t * direction;
 2e8:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2ef:	8b 00                	mov    (%rax),%eax
 2f1:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
 2f8:	8b 95 30 ff ff ff    	mov    -0xd0(%rbp),%edx
 2fe:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 305:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 30c:	ff 
 30d:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 314:	f3 0f 7e 95 00 ff ff 	movq   -0x100(%rbp),%xmm2
 31b:	ff 
 31c:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
 322:	f3 0f 10 85 00 ff ff 	movss  -0x100(%rbp),%xmm0
 329:	ff 
 32a:	e8 00 00 00 00       	callq  32f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x32f>
 32f:	66 48 0f 7e c0       	movq   %xmm0,%rax
 334:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 339:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
 33d:	8b 45 ac             	mov    -0x54(%rbp),%eax
 340:	83 e0 00             	and    $0x0,%eax
 343:	09 d0                	or     %edx,%eax
 345:	89 45 ac             	mov    %eax,-0x54(%rbp)
 348:	48 8b 4d a4          	mov    -0x5c(%rbp),%rcx
 34c:	8b 55 ac             	mov    -0x54(%rbp),%edx
 34f:	48 8d 85 38 ff ff ff 	lea    -0xc8(%rbp),%rax
 356:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 35d:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 364:	ff 
 365:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 36c:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 373:	ff 
 374:	48 89 c7             	mov    %rax,%rdi
 377:	e8 00 00 00 00       	callq  37c <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x37c>
 37c:	66 48 0f 7e c0       	movq   %xmm0,%rax
 381:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 386:	48 89 85 74 ff ff ff 	mov    %rax,-0x8c(%rbp)
 38d:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
 393:	83 e0 00             	and    $0x0,%eax
 396:	09 d0                	or     %edx,%eax
 398:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
   
    Vector<T, 3> vector = cross_product(p2 - p1,  intersection - p1 );
 39e:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 3a5:	48 8b 08             	mov    (%rax),%rcx
 3a8:	8b 50 08             	mov    0x8(%rax),%edx
 3ab:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 3b2:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 3b9:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 3c0:	ff 
 3c1:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 3c8:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 3cf:	ff 
 3d0:	48 89 c7             	mov    %rax,%rdi
 3d3:	e8 00 00 00 00       	callq  3d8 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x3d8>
 3d8:	66 48 0f 7e c0       	movq   %xmm0,%rax
 3dd:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 3e2:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 3e6:	8b 45 b8             	mov    -0x48(%rbp),%eax
 3e9:	83 e0 00             	and    $0x0,%eax
 3ec:	09 d0                	or     %edx,%eax
 3ee:	89 45 b8             	mov    %eax,-0x48(%rbp)
 3f1:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 3f8:	48 8d 50 0c          	lea    0xc(%rax),%rdx
 3fc:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 403:	48 8b 08             	mov    (%rax),%rcx
 406:	8b 40 08             	mov    0x8(%rax),%eax
 409:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 410:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 417:	ff 
 418:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 41f:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 426:	ff 
 427:	48 89 d7             	mov    %rdx,%rdi
 42a:	e8 00 00 00 00       	callq  42f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x42f>
 42f:	66 48 0f 7e c0       	movq   %xmm0,%rax
 434:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 439:	48 89 45 bc          	mov    %rax,-0x44(%rbp)
 43d:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 440:	83 e0 00             	and    $0x0,%eax
 443:	09 d0                	or     %edx,%eax
 445:	89 45 c4             	mov    %eax,-0x3c(%rbp)
 448:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
 44c:	8b 4d b8             	mov    -0x48(%rbp),%ecx
 44f:	48 8b 55 bc          	mov    -0x44(%rbp),%rdx
 453:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 456:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 45d:	f3 0f 7e 95 00 ff ff 	movq   -0x100(%rbp),%xmm2
 464:	ff 
 465:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 46c:	f3 0f 7e 9d 00 ff ff 	movq   -0x100(%rbp),%xmm3
 473:	ff 
 474:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 47b:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 482:	ff 
 483:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 48a:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 491:	ff 
 492:	e8 00 00 00 00       	callq  497 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x497>
 497:	66 48 0f 7e c0       	movq   %xmm0,%rax
 49c:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 4a1:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 4a5:	8b 45 88             	mov    -0x78(%rbp),%eax
 4a8:	83 e0 00             	and    $0x0,%eax
 4ab:	09 d0                	or     %edx,%eax
 4ad:	89 45 88             	mov    %eax,-0x78(%rbp)
    if ( normal.scalar_product(vector) < 0.0 ) { 
 4b0:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 4b4:	8b 55 88             	mov    -0x78(%rbp),%edx
 4b7:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 4be:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 4c5:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 4cc:	ff 
 4cd:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 4d4:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 4db:	ff 
 4dc:	48 89 c7             	mov    %rax,%rdi
 4df:	e8 00 00 00 00       	callq  4e4 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x4e4>
 4e4:	0f 28 c8             	movaps %xmm0,%xmm1
 4e7:	66 0f ef c0          	pxor   %xmm0,%xmm0
 4eb:	0f 2e c1             	ucomiss %xmm1,%xmm0
 4ee:	0f 97 c0             	seta   %al
 4f1:	84 c0                	test   %al,%al
 4f3:	74 0a                	je     4ff <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x4ff>
      return false;
 4f5:	b8 00 00 00 00       	mov    $0x0,%eax
 4fa:	e9 5c 03 00 00       	jmpq   85b <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x85b>
    }

    
    vector = cross_product(p3 - p2,  intersection - p2 );
 4ff:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 506:	48 8b 48 0c          	mov    0xc(%rax),%rcx
 50a:	8b 50 14             	mov    0x14(%rax),%edx
 50d:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 514:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 51b:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 522:	ff 
 523:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 52a:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 531:	ff 
 532:	48 89 c7             	mov    %rax,%rdi
 535:	e8 00 00 00 00       	callq  53a <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x53a>
 53a:	66 48 0f 7e c0       	movq   %xmm0,%rax
 53f:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 544:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 548:	8b 45 d0             	mov    -0x30(%rbp),%eax
 54b:	83 e0 00             	and    $0x0,%eax
 54e:	09 d0                	or     %edx,%eax
 550:	89 45 d0             	mov    %eax,-0x30(%rbp)
 553:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 55a:	48 8d 50 18          	lea    0x18(%rax),%rdx
 55e:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 565:	48 8b 48 0c          	mov    0xc(%rax),%rcx
 569:	8b 40 14             	mov    0x14(%rax),%eax
 56c:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 573:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 57a:	ff 
 57b:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 582:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 589:	ff 
 58a:	48 89 d7             	mov    %rdx,%rdi
 58d:	e8 00 00 00 00       	callq  592 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x592>
 592:	66 48 0f 7e c0       	movq   %xmm0,%rax
 597:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 59c:	48 89 45 d4          	mov    %rax,-0x2c(%rbp)
 5a0:	8b 45 dc             	mov    -0x24(%rbp),%eax
 5a3:	83 e0 00             	and    $0x0,%eax
 5a6:	09 d0                	or     %edx,%eax
 5a8:	89 45 dc             	mov    %eax,-0x24(%rbp)
 5ab:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
 5af:	8b 4d d0             	mov    -0x30(%rbp),%ecx
 5b2:	48 8b 55 d4          	mov    -0x2c(%rbp),%rdx
 5b6:	8b 45 dc             	mov    -0x24(%rbp),%eax
 5b9:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 5c0:	f3 0f 7e 95 00 ff ff 	movq   -0x100(%rbp),%xmm2
 5c7:	ff 
 5c8:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 5cf:	f3 0f 7e 9d 00 ff ff 	movq   -0x100(%rbp),%xmm3
 5d6:	ff 
 5d7:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 5de:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 5e5:	ff 
 5e6:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 5ed:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 5f4:	ff 
 5f5:	e8 00 00 00 00       	callq  5fa <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x5fa>
 5fa:	66 48 0f 7e c0       	movq   %xmm0,%rax
 5ff:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 604:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 608:	8b 45 88             	mov    -0x78(%rbp),%eax
 60b:	83 e0 00             	and    $0x0,%eax
 60e:	09 d0                	or     %edx,%eax
 610:	89 45 88             	mov    %eax,-0x78(%rbp)
    if ( normal.scalar_product(vector) < 0.0 ) { 
 613:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 617:	8b 55 88             	mov    -0x78(%rbp),%edx
 61a:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 621:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 628:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 62f:	ff 
 630:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 637:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 63e:	ff 
 63f:	48 89 c7             	mov    %rax,%rdi
 642:	e8 00 00 00 00       	callq  647 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x647>
 647:	0f 28 c8             	movaps %xmm0,%xmm1
 64a:	66 0f ef c0          	pxor   %xmm0,%xmm0
 64e:	0f 2e c1             	ucomiss %xmm1,%xmm0
 651:	0f 97 c0             	seta   %al
 654:	84 c0                	test   %al,%al
 656:	74 0a                	je     662 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x662>
      return false;
 658:	b8 00 00 00 00       	mov    $0x0,%eax
 65d:	e9 f9 01 00 00       	jmpq   85b <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x85b>
    }

    T uSquareOfLength = vector.square_of_length();
 662:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 666:	48 89 c7             	mov    %rax,%rdi
 669:	e8 00 00 00 00       	callq  66e <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x66e>
 66e:	66 0f 7e c0          	movd   %xmm0,%eax
 672:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)

    vector = cross_product(p1 - p3, intersection - p3 );
 678:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 67f:	48 8b 48 18          	mov    0x18(%rax),%rcx
 683:	8b 50 20             	mov    0x20(%rax),%edx
 686:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 68d:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 694:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 69b:	ff 
 69c:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 6a3:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 6aa:	ff 
 6ab:	48 89 c7             	mov    %rax,%rdi
 6ae:	e8 00 00 00 00       	callq  6b3 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x6b3>
 6b3:	66 48 0f 7e c0       	movq   %xmm0,%rax
 6b8:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 6bd:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 6c1:	8b 45 e8             	mov    -0x18(%rbp),%eax
 6c4:	83 e0 00             	and    $0x0,%eax
 6c7:	09 d0                	or     %edx,%eax
 6c9:	89 45 e8             	mov    %eax,-0x18(%rbp)
 6cc:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
 6d3:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 6da:	48 8b 48 18          	mov    0x18(%rax),%rcx
 6de:	8b 40 20             	mov    0x20(%rax),%eax
 6e1:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 6e8:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 6ef:	ff 
 6f0:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 6f7:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 6fe:	ff 
 6ff:	48 89 d7             	mov    %rdx,%rdi
 702:	e8 00 00 00 00       	callq  707 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x707>
 707:	66 48 0f 7e c0       	movq   %xmm0,%rax
 70c:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 711:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
 715:	8b 45 f4             	mov    -0xc(%rbp),%eax
 718:	83 e0 00             	and    $0x0,%eax
 71b:	09 d0                	or     %edx,%eax
 71d:	89 45 f4             	mov    %eax,-0xc(%rbp)
 720:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
 724:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 727:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
 72b:	8b 45 f4             	mov    -0xc(%rbp),%eax
 72e:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 735:	f3 0f 7e 95 00 ff ff 	movq   -0x100(%rbp),%xmm2
 73c:	ff 
 73d:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 744:	f3 0f 7e 9d 00 ff ff 	movq   -0x100(%rbp),%xmm3
 74b:	ff 
 74c:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 753:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 75a:	ff 
 75b:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 762:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 769:	ff 
 76a:	e8 00 00 00 00       	callq  76f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x76f>
 76f:	66 48 0f 7e c0       	movq   %xmm0,%rax
 774:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 779:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 77d:	8b 45 88             	mov    -0x78(%rbp),%eax
 780:	83 e0 00             	and    $0x0,%eax
 783:	09 d0                	or     %edx,%eax
 785:	89 45 88             	mov    %eax,-0x78(%rbp)
    if (normal.scalar_product(vector) < 0.0 ) {
 788:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 78c:	8b 55 88             	mov    -0x78(%rbp),%edx
 78f:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 796:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 79d:	f3 0f 7e 85 00 ff ff 	movq   -0x100(%rbp),%xmm0
 7a4:	ff 
 7a5:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 7ac:	f3 0f 7e 8d 00 ff ff 	movq   -0x100(%rbp),%xmm1
 7b3:	ff 
 7b4:	48 89 c7             	mov    %rax,%rdi
 7b7:	e8 00 00 00 00       	callq  7bc <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7bc>
 7bc:	0f 28 c8             	movaps %xmm0,%xmm1
 7bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
 7c3:	0f 2e c1             	ucomiss %xmm1,%xmm0
 7c6:	0f 97 c0             	seta   %al
 7c9:	84 c0                	test   %al,%al
 7cb:	74 0a                	je     7d7 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7d7>
      return false;
 7cd:	b8 00 00 00 00       	mov    $0x0,%eax
 7d2:	e9 84 00 00 00       	jmpq   85b <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x85b>
    }

    T vSquareOfLength = vector.square_of_length();
 7d7:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 7db:	48 89 c7             	mov    %rax,%rdi
 7de:	e8 00 00 00 00       	callq  7e3 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7e3>
 7e3:	66 0f 7e c0          	movd   %xmm0,%eax
 7e7:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
    T areaSquareSum = normal.square_of_length();
 7ed:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 7f4:	48 89 c7             	mov    %rax,%rdi
 7f7:	e8 00 00 00 00       	callq  7fc <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7fc>
 7fc:	66 0f 7e c0          	movd   %xmm0,%eax
 800:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)

    u = sqrt(uSquareOfLength / areaSquareSum);
 806:	f3 0f 10 85 5c ff ff 	movss  -0xa4(%rbp),%xmm0
 80d:	ff 
 80e:	f3 0f 5e 85 64 ff ff 	divss  -0x9c(%rbp),%xmm0
 815:	ff 
 816:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 81a:	e8 00 00 00 00       	callq  81f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x81f>
 81f:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 823:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 82a:	f3 0f 11 00          	movss  %xmm0,(%rax)
    v = sqrt(vSquareOfLength / areaSquareSum);
 82e:	f3 0f 10 85 60 ff ff 	movss  -0xa0(%rbp),%xmm0
 835:	ff 
 836:	f3 0f 5e 85 64 ff ff 	divss  -0x9c(%rbp),%xmm0
 83d:	ff 
 83e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 842:	e8 00 00 00 00       	callq  847 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x847>
 847:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
 84b:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
 852:	f3 0f 11 00          	movss  %xmm0,(%rax)

    return true;
 856:	b8 01 00 00 00       	mov    $0x1,%eax
  }
 85b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
 85f:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
 866:	00 00 
 868:	74 05                	je     86f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x86f>
 86a:	e8 00 00 00 00       	callq  86f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x86f>
 86f:	c9                   	leaveq 
 870:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI5LightSaIS0_EE4sizeEv:

0000000000000000 <_ZNKSt6vectorI5LightSaIS0_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 8b 00             	mov    (%rax),%rax
  1a:	48 29 c2             	sub    %rax,%rdx
  1d:	48 89 d0             	mov    %rdx,%rax
  20:	48 c1 f8 03          	sar    $0x3,%rax
  24:	48 89 c2             	mov    %rax,%rdx
  27:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  2e:	aa aa aa 
  31:	48 0f af c2          	imul   %rdx,%rax
  35:	5d                   	pop    %rbp
  36:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EE5beginEv:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_start); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZNSt6vectorI5LightSaIS0_EE5beginEv+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZNSt6vectorI5LightSaIS0_EE5beginEv+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZNSt6vectorI5LightSaIS0_EE5beginEv+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EE3endEv:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EE3endEv>:
      end() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_finish); }
  1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  23:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  27:	48 89 d6             	mov    %rdx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt6vectorI5LightSaIS0_EE3endEv+0x32>
  32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  36:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  3a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  41:	00 00 
  43:	74 05                	je     4a <_ZNSt6vectorI5LightSaIS0_EE3endEv+0x4a>
  45:	e8 00 00 00 00       	callq  4a <_ZNSt6vectorI5LightSaIS0_EE3endEv+0x4a>
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxxneIP5LightSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:

0000000000000000 <_ZN9__gnu_cxxneIP5LightSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_>:
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() != __rhs.base(); }

  template<typename _Iterator, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	       const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() != __rhs.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZN9__gnu_cxxneIP5LightSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_+0x1d>
  1d:	48 8b 18             	mov    (%rax),%rbx
  20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	callq  2c <_ZN9__gnu_cxxneIP5LightSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_+0x2c>
  2c:	48 8b 00             	mov    (%rax),%rax
  2f:	48 39 c3             	cmp    %rax,%rbx
  32:	0f 95 c0             	setne  %al
  35:	48 83 c4 18          	add    $0x18,%rsp
  39:	5b                   	pop    %rbx
  3a:	5d                   	pop    %rbp
  3b:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEppEv:

0000000000000000 <_ZN9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEppEv>:
      operator++() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	48 8d 50 18          	lea    0x18(%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  1e:	5d                   	pop    %rbp
  1f:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEdeEv:

0000000000000000 <_ZNK9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEdeEv>:
      operator*() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *_M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZN6VectorIfLm3EE14scalar_productES0_:

0000000000000000 <_ZN6VectorIfLm3EE14scalar_productES0_>:
  T scalar_product(Vector<T, SIZE>  factor) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   d:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  12:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  16:	8b 45 e0             	mov    -0x20(%rbp),%eax
  19:	83 e0 00             	and    $0x0,%eax
  1c:	09 d0                	or     %edx,%eax
  1e:	89 45 e0             	mov    %eax,-0x20(%rbp)
    T product = 0;
  21:	66 0f ef c0          	pxor   %xmm0,%xmm0
  25:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  2a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  31:	00 
  32:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  37:	77 30                	ja     69 <_ZN6VectorIfLm3EE14scalar_productES0_+0x69>
      product += this->x[i] * factor.x[i];
  39:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  41:	f3 0f 10 0c 90       	movss  (%rax,%rdx,4),%xmm1
  46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4a:	f3 0f 10 44 85 d8    	movss  -0x28(%rbp,%rax,4),%xmm0
  50:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  54:	f3 0f 10 4d f4       	movss  -0xc(%rbp),%xmm1
  59:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  5d:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  62:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  67:	eb c9                	jmp    32 <_ZN6VectorIfLm3EE14scalar_productES0_+0x32>
    return product;
  69:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  }
  6e:	5d                   	pop    %rbp
  6f:	c3                   	retq   

Disassembly of section .text._ZSt3maxIfERKT_S2_S2_:

0000000000000000 <_ZSt3maxIfERKT_S2_S2_>:
   *  preprocessor macro.
  */
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    {
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return  __a < __b ? __b : __a;
      if (__a < __b)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	f3 0f 10 08          	movss  (%rax),%xmm1
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	f3 0f 10 00          	movss  (%rax),%xmm0
  1c:	0f 2e c1             	ucomiss %xmm1,%xmm0
  1f:	76 06                	jbe    27 <_ZSt3maxIfERKT_S2_S2_+0x27>
	return __b;
  21:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  25:	eb 04                	jmp    2b <_ZSt3maxIfERKT_S2_S2_+0x2b>
      return __a;
  27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  2b:	5d                   	pop    %rbp
  2c:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EEC2Ev:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EEC1Ev>:
      vector()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EED2Ev:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EED1Ev>:
      ~vector() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EED1Ev+0x18>
  18:	48 89 c2             	mov    %rax,%rdx
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 48 08          	mov    0x8(%rax),%rcx
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 8b 00             	mov    (%rax),%rax
  2a:	48 89 ce             	mov    %rcx,%rsi
  2d:	48 89 c7             	mov    %rax,%rdi
  30:	e8 00 00 00 00       	callq  35 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EED1Ev+0x35>
		      _M_get_Tp_allocator()); }
  35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EED1Ev+0x41>
  41:	90                   	nop
  42:	c9                   	leaveq 
  43:	c3                   	retq   

Disassembly of section .text._ZN6VectorIfLm3EEC2Ev:

0000000000000000 <_ZN6VectorIfLm3EEC1Ev>:
  Vector<T, SIZE>() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
   8:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   f:	00 
  10:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  15:	77 18                	ja     2f <_ZN6VectorIfLm3EEC1Ev+0x2f>
      this->x[i] = 0;
  17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  1f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  23:	f3 0f 11 04 90       	movss  %xmm0,(%rax,%rdx,4)
    for (size_t i = 0u; i < SIZE; i++) {
  28:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  2d:	eb e1                	jmp    10 <_ZN6VectorIfLm3EEC1Ev+0x10>
  }
  2f:	90                   	nop
  30:	5d                   	pop    %rbp
  31:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_>:
      push_back(const value_type& __x)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 8b 50 08          	mov    0x8(%rax),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 8b 40 10          	mov    0x10(%rax),%rax
  20:	48 39 c2             	cmp    %rax,%rdx
  23:	74 31                	je     56 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_+0x56>
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
  25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  29:	48 8b 48 08          	mov    0x8(%rax),%rcx
  2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  31:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  35:	48 89 ce             	mov    %rcx,%rsi
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_+0x40>
	    ++this->_M_impl._M_finish;
  40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  44:	48 8b 40 08          	mov    0x8(%rax),%rax
  48:	48 8d 50 0c          	lea    0xc(%rax),%rdx
  4c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  50:	48 89 50 08          	mov    %rdx,0x8(%rax)
      }
  54:	eb 22                	jmp    78 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_+0x78>
	  _M_realloc_insert(end(), __x);
  56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5a:	48 89 c7             	mov    %rax,%rdi
  5d:	e8 00 00 00 00       	callq  62 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_+0x62>
  62:	48 89 c1             	mov    %rax,%rcx
  65:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6d:	48 89 ce             	mov    %rcx,%rsi
  70:	48 89 c7             	mov    %rax,%rdi
  73:	e8 00 00 00 00       	callq  78 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE9push_backERKS1_+0x78>
      }
  78:	90                   	nop
  79:	c9                   	leaveq 
  7a:	c3                   	retq   

Disassembly of section .text._ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_:

0000000000000000 <_ZSt4moveIRmEONSt16remove_referenceIT_E4typeEOS2_>:
    move(_Tp&& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:

0000000000000000 <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_>:
    inline
#if __cplusplus >= 201103L
    typename enable_if<__and_<__not_<__is_tuple_like<_Tp>>,
			      is_move_constructible<_Tp>,
			      is_move_assignable<_Tp>>::value>::type
    swap(_Tp& __a, _Tp& __b)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
#endif
    {
      // concept requirements
      __glibcxx_function_requires(_SGIAssignableConcept<_Tp>)

      _Tp __tmp = _GLIBCXX_MOVE(__a);
  1f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_+0x2b>
  2b:	48 8b 00             	mov    (%rax),%rax
  2e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      __a = _GLIBCXX_MOVE(__b);
  32:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_+0x3e>
  3e:	48 8b 10             	mov    (%rax),%rdx
  41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  45:	48 89 10             	mov    %rdx,(%rax)
      __b = _GLIBCXX_MOVE(__tmp);
  48:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4c:	48 89 c7             	mov    %rax,%rdi
  4f:	e8 00 00 00 00       	callq  54 <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_+0x54>
  54:	48 8b 10             	mov    (%rax),%rdx
  57:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  5b:	48 89 10             	mov    %rdx,(%rax)
    }
  5e:	90                   	nop
  5f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  63:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  6a:	00 00 
  6c:	74 05                	je     73 <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_+0x73>
  6e:	e8 00 00 00 00       	callq  73 <_ZSt4swapImENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_+0x73>
  73:	c9                   	leaveq 
  74:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EEixEm:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EEixEm>:
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return *(this->_M_impl._M_start + __n);
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 08             	mov    (%rax),%rcx
  13:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  17:	48 89 d0             	mov    %rdx,%rax
  1a:	48 01 c0             	add    %rax,%rax
  1d:	48 01 d0             	add    %rdx,%rax
  20:	48 c1 e0 02          	shl    $0x2,%rax
  24:	48 01 c8             	add    %rcx,%rax
      }
  27:	5d                   	pop    %rbp
  28:	c3                   	retq   

Disassembly of section .text._ZN8TriangleIfEC2E6VectorIfLm3EES2_S2_:

0000000000000000 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_>:
  Triangle(Vector<T, 3> p1, Vector<T, 3>p2, Vector<T, 3>p3 ) 
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 68          	sub    $0x68,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	66 48 0f 7e c0       	movq   %xmm0,%rax
  12:	66 49 0f 7e c8       	movq   %xmm1,%r8
  17:	66 48 0f 7e d1       	movq   %xmm2,%rcx
  1c:	66 48 0f 7e df       	movq   %xmm3,%rdi
  21:	66 48 0f 7e e2       	movq   %xmm4,%rdx
  26:	66 48 0f 7e ee       	movq   %xmm5,%rsi
  2b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  2f:	8b 45 c0             	mov    -0x40(%rbp),%eax
  32:	83 e0 00             	and    $0x0,%eax
  35:	44 09 c0             	or     %r8d,%eax
  38:	89 45 c0             	mov    %eax,-0x40(%rbp)
  3b:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  3f:	8b 45 b0             	mov    -0x50(%rbp),%eax
  42:	83 e0 00             	and    $0x0,%eax
  45:	09 f8                	or     %edi,%eax
  47:	89 45 b0             	mov    %eax,-0x50(%rbp)
  4a:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  4e:	8b 45 a0             	mov    -0x60(%rbp),%eax
  51:	83 e0 00             	and    $0x0,%eax
  54:	09 f0                	or     %esi,%eax
  56:	89 45 a0             	mov    %eax,-0x60(%rbp)
  59:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  60:	00 00 
  62:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  66:	31 c0                	xor    %eax,%eax
    : p1(p1), p2(p2), p3(p3) {
  68:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6c:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  70:	48 89 10             	mov    %rdx,(%rax)
  73:	8b 55 c0             	mov    -0x40(%rbp),%edx
  76:	89 50 08             	mov    %edx,0x8(%rax)
  79:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  7d:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  81:	48 89 50 0c          	mov    %rdx,0xc(%rax)
  85:	8b 55 b0             	mov    -0x50(%rbp),%edx
  88:	89 50 14             	mov    %edx,0x14(%rax)
  8b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  8f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  93:	48 89 50 18          	mov    %rdx,0x18(%rax)
  97:	8b 55 a0             	mov    -0x60(%rbp),%edx
  9a:	89 50 20             	mov    %edx,0x20(%rax)
  9d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  a1:	48 83 c0 24          	add    $0x24,%rax
  a5:	48 89 c7             	mov    %rax,%rdi
  a8:	e8 00 00 00 00       	callq  ad <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0xad>
  ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b1:	48 83 c0 30          	add    $0x30,%rax
  b5:	48 89 c7             	mov    %rax,%rdi
  b8:	e8 00 00 00 00       	callq  bd <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0xbd>
  bd:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  c1:	48 83 c0 3c          	add    $0x3c,%rax
  c5:	48 89 c7             	mov    %rax,%rdi
  c8:	e8 00 00 00 00       	callq  cd <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0xcd>
    n1 = cross_product(p2  - p1, p3 - p1); 
  cd:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  d1:	8b 55 c0             	mov    -0x40(%rbp),%edx
  d4:	48 8d 45 98          	lea    -0x68(%rbp),%rax
  d8:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  dc:	f3 0f 7e 45 90       	movq   -0x70(%rbp),%xmm0
  e1:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
  e5:	f3 0f 7e 4d 90       	movq   -0x70(%rbp),%xmm1
  ea:	48 89 c7             	mov    %rax,%rdi
  ed:	e8 00 00 00 00       	callq  f2 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0xf2>
  f2:	66 48 0f 7e c0       	movq   %xmm0,%rax
  f7:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  fc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 100:	8b 45 d8             	mov    -0x28(%rbp),%eax
 103:	83 e0 00             	and    $0x0,%eax
 106:	09 d0                	or     %edx,%eax
 108:	89 45 d8             	mov    %eax,-0x28(%rbp)
 10b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 10f:	8b 55 c0             	mov    -0x40(%rbp),%edx
 112:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
 116:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
 11a:	f3 0f 7e 45 90       	movq   -0x70(%rbp),%xmm0
 11f:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
 123:	f3 0f 7e 4d 90       	movq   -0x70(%rbp),%xmm1
 128:	48 89 c7             	mov    %rax,%rdi
 12b:	e8 00 00 00 00       	callq  130 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x130>
 130:	66 48 0f 7e c0       	movq   %xmm0,%rax
 135:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 13a:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
 13e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 141:	83 e0 00             	and    $0x0,%eax
 144:	09 d0                	or     %edx,%eax
 146:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 149:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 14d:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
 151:	8b 4d d8             	mov    -0x28(%rbp),%ecx
 154:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
 158:	8b 45 e4             	mov    -0x1c(%rbp),%eax
 15b:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
 15f:	f3 0f 7e 55 90       	movq   -0x70(%rbp),%xmm2
 164:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
 168:	f3 0f 7e 5d 90       	movq   -0x70(%rbp),%xmm3
 16d:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
 171:	f3 0f 7e 45 90       	movq   -0x70(%rbp),%xmm0
 176:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 17a:	f3 0f 7e 4d 90       	movq   -0x70(%rbp),%xmm1
 17f:	e8 00 00 00 00       	callq  184 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x184>
 184:	66 48 0f 7e c0       	movq   %xmm0,%rax
 189:	66 48 0f 7e ca       	movq   %xmm1,%rdx
 18e:	48 89 43 24          	mov    %rax,0x24(%rbx)
 192:	8b 43 2c             	mov    0x2c(%rbx),%eax
 195:	83 e0 00             	and    $0x0,%eax
 198:	09 d0                	or     %edx,%eax
 19a:	89 43 2c             	mov    %eax,0x2c(%rbx)
    n1.normalize();
 19d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1a1:	48 83 c0 24          	add    $0x24,%rax
 1a5:	48 89 c7             	mov    %rax,%rdi
 1a8:	e8 00 00 00 00       	callq  1ad <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x1ad>
    n2 = n1;
 1ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1b1:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1b5:	48 8b 4a 24          	mov    0x24(%rdx),%rcx
 1b9:	48 89 48 30          	mov    %rcx,0x30(%rax)
 1bd:	8b 52 2c             	mov    0x2c(%rdx),%edx
 1c0:	89 50 38             	mov    %edx,0x38(%rax)
    n3 = n1;
 1c3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1c7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1cb:	48 8b 4a 24          	mov    0x24(%rdx),%rcx
 1cf:	48 89 48 3c          	mov    %rcx,0x3c(%rax)
 1d3:	8b 52 2c             	mov    0x2c(%rdx),%edx
 1d6:	89 50 44             	mov    %edx,0x44(%rax)
  }
 1d9:	90                   	nop
 1da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1de:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1e5:	00 00 
 1e7:	74 05                	je     1ee <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x1ee>
 1e9:	e8 00 00 00 00       	callq  1ee <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x1ee>
 1ee:	48 83 c4 68          	add    $0x68,%rsp
 1f2:	5b                   	pop    %rbx
 1f3:	5d                   	pop    %rbp
 1f4:	c3                   	retq   

Disassembly of section .text._ZN8TriangleIfEC2E6VectorIfLm3EES2_S2_S2_S2_S2_:

0000000000000000 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_S2_S2_S2_>:
  Triangle(Vector<T, 3> p1, Vector<T, 3>p2, Vector<T, 3>p3,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  11:	66 49 0f 7e ca       	movq   %xmm1,%r10
  16:	66 48 0f 7e d6       	movq   %xmm2,%rsi
  1b:	66 49 0f 7e d9       	movq   %xmm3,%r9
  20:	66 48 0f 7e e1       	movq   %xmm4,%rcx
  25:	66 49 0f 7e e8       	movq   %xmm5,%r8
  2a:	66 48 0f 7e f2       	movq   %xmm6,%rdx
  2f:	66 48 0f 7e ff       	movq   %xmm7,%rdi
  34:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  38:	8b 45 f0             	mov    -0x10(%rbp),%eax
  3b:	83 e0 00             	and    $0x0,%eax
  3e:	44 09 d0             	or     %r10d,%eax
  41:	89 45 f0             	mov    %eax,-0x10(%rbp)
  44:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
  48:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4b:	83 e0 00             	and    $0x0,%eax
  4e:	44 09 c8             	or     %r9d,%eax
  51:	89 45 e0             	mov    %eax,-0x20(%rbp)
  54:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  58:	8b 45 d0             	mov    -0x30(%rbp),%eax
  5b:	83 e0 00             	and    $0x0,%eax
  5e:	44 09 c0             	or     %r8d,%eax
  61:	89 45 d0             	mov    %eax,-0x30(%rbp)
  64:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  68:	8b 45 c0             	mov    -0x40(%rbp),%eax
  6b:	83 e0 00             	and    $0x0,%eax
  6e:	09 f8                	or     %edi,%eax
  70:	89 45 c0             	mov    %eax,-0x40(%rbp)
    : p1(p1), p2(p2), p3(p3), n1(n1), n2(n2), n3(n3) {
  73:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  77:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  7b:	48 89 10             	mov    %rdx,(%rax)
  7e:	8b 55 f0             	mov    -0x10(%rbp),%edx
  81:	89 50 08             	mov    %edx,0x8(%rax)
  84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  88:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  8c:	48 89 50 0c          	mov    %rdx,0xc(%rax)
  90:	8b 55 e0             	mov    -0x20(%rbp),%edx
  93:	89 50 14             	mov    %edx,0x14(%rax)
  96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  9a:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  9e:	48 89 50 18          	mov    %rdx,0x18(%rax)
  a2:	8b 55 d0             	mov    -0x30(%rbp),%edx
  a5:	89 50 20             	mov    %edx,0x20(%rax)
  a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  ac:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  b0:	48 89 50 24          	mov    %rdx,0x24(%rax)
  b4:	8b 55 c0             	mov    -0x40(%rbp),%edx
  b7:	89 50 2c             	mov    %edx,0x2c(%rax)
  ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  be:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  c2:	48 89 50 30          	mov    %rdx,0x30(%rax)
  c6:	8b 55 18             	mov    0x18(%rbp),%edx
  c9:	89 50 38             	mov    %edx,0x38(%rax)
  cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  d0:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  d4:	48 89 50 3c          	mov    %rdx,0x3c(%rax)
  d8:	8b 55 28             	mov    0x28(%rbp),%edx
  db:	89 50 44             	mov    %edx,0x44(%rax)
    n1.normalize();
  de:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  e2:	48 89 c7             	mov    %rax,%rdi
  e5:	e8 00 00 00 00       	callq  ea <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_S2_S2_S2_+0xea>
    n2.normalize();
  ea:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
  ee:	e8 00 00 00 00       	callq  f3 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_S2_S2_S2_+0xf3>
    n3.normalize();
  f3:	48 8d 45 20          	lea    0x20(%rbp),%rax
  f7:	48 89 c7             	mov    %rax,%rdi
  fa:	e8 00 00 00 00       	callq  ff <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_S2_S2_S2_+0xff>
 }
  ff:	90                   	nop
 100:	c9                   	leaveq 
 101:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI6VectorIfLm3EESaIS1_EE4sizeEv:

0000000000000000 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 8b 00             	mov    (%rax),%rax
  1a:	48 29 c2             	sub    %rax,%rdx
  1d:	48 89 d0             	mov    %rdx,%rax
  20:	48 c1 f8 02          	sar    $0x2,%rax
  24:	48 89 c2             	mov    %rax,%rdx
  27:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  2e:	aa aa aa 
  31:	48 0f af c2          	imul   %rdx,%rax
  35:	5d                   	pop    %rbp
  36:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EEC2Ev:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EEC1Ev>:
      vector()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI8TriangleIfESaIS1_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EED2Ev:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EED1Ev>:
      ~vector() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI8TriangleIfESaIS1_EED1Ev+0x18>
  18:	48 89 c2             	mov    %rax,%rdx
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 48 08          	mov    0x8(%rax),%rcx
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 8b 00             	mov    (%rax),%rax
  2a:	48 89 ce             	mov    %rcx,%rsi
  2d:	48 89 c7             	mov    %rax,%rdi
  30:	e8 00 00 00 00       	callq  35 <_ZNSt6vectorI8TriangleIfESaIS1_EED1Ev+0x35>
		      _M_get_Tp_allocator()); }
  35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZNSt6vectorI8TriangleIfESaIS1_EED1Ev+0x41>
  41:	90                   	nop
  42:	c9                   	leaveq 
  43:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EEC2Ev:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EEC1Ev>:
      vector()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI5LightSaIS0_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EED2Ev:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EED1Ev>:
      ~vector() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6vectorI5LightSaIS0_EED1Ev+0x18>
  18:	48 89 c2             	mov    %rax,%rdx
      { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 48 08          	mov    0x8(%rax),%rcx
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 8b 00             	mov    (%rax),%rax
  2a:	48 89 ce             	mov    %rcx,%rsi
  2d:	48 89 c7             	mov    %rax,%rdi
  30:	e8 00 00 00 00       	callq  35 <_ZNSt6vectorI5LightSaIS0_EED1Ev+0x35>
		      _M_get_Tp_allocator()); }
  35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZNSt6vectorI5LightSaIS0_EED1Ev+0x41>
  41:	90                   	nop
  42:	c9                   	leaveq 
  43:	c3                   	retq   

Disassembly of section .text._ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EEC2EPS0_:

0000000000000000 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EEC1EPS0_>:
      __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  14:	48 89 c7             	mov    %rax,%rdi
  17:	e8 00 00 00 00       	callq  1c <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EEC1EPS0_+0x1c>
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EEC1EPS0_+0x28>
  28:	48 89 c2             	mov    %rax,%rdx
  2b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  2f:	48 89 02             	mov    %rax,(%rdx)
  32:	90                   	nop
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv:

0000000000000000 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv>:
      pointer&   _M_ptr() { return std::get<0>(_M_t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE11get_deleterEv:

0000000000000000 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE11get_deleterEv>:
      get() const noexcept
      { return _M_t._M_ptr(); }

      /// Return a reference to the stored deleter.
      deleter_type&
      get_deleter() noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_t._M_deleter(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE11get_deleterEv+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt14default_deleteIA_5ColorEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_:

0000000000000000 <_ZNKSt14default_deleteIA_5ColorEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_>:
	operator()(_Up* __ptr) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	delete [] __ptr;
  10:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  15:	74 0c                	je     23 <_ZNKSt14default_deleteIA_5ColorEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_+0x23>
  17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNKSt14default_deleteIA_5ColorEclIS0_EENSt9enable_ifIXsrSt14is_convertibleIPA_T_PS1_E5valueEvE4typeEPS6_+0x23>
      }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE3getEv:

0000000000000000 <_ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE3getEv>:
      get() const noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_t._M_ptr(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt10unique_ptrIA_5ColorSt14default_deleteIS1_EE3getEv+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZN6VectorIfLm3EEixEm:

0000000000000000 <_ZN6VectorIfLm3EEixEm>:
  T & operator[](size_t index) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    return x[index];
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  17:	00 
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 01 d0             	add    %rdx,%rax
  }
  1f:	5d                   	pop    %rbp
  20:	c3                   	retq   

Disassembly of section .text._ZNK6VectorIfLm3EE16square_of_lengthEv:

0000000000000000 <_ZNK6VectorIfLm3EE16square_of_lengthEv>:
  T square_of_length(void) const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    T square_of_length = 0;
   8:	66 0f ef c0          	pxor   %xmm0,%xmm0
   c:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  11:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  18:	00 
  19:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  1e:	77 33                	ja     53 <_ZNK6VectorIfLm3EE16square_of_lengthEv+0x53>
      square_of_length += ( this->x[i] * this->x[i] );
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  28:	f3 0f 10 0c 90       	movss  (%rax,%rdx,4),%xmm1
  2d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  31:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  35:	f3 0f 10 04 90       	movss  (%rax,%rdx,4),%xmm0
  3a:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  3e:	f3 0f 10 4d f4       	movss  -0xc(%rbp),%xmm1
  43:	f3 0f 58 c1          	addss  %xmm1,%xmm0
  47:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  4c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  51:	eb c6                	jmp    19 <_ZNK6VectorIfLm3EE16square_of_lengthEv+0x19>
    return square_of_length;
  53:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  }
  58:	5d                   	pop    %rbp
  59:	c3                   	retq   

Disassembly of section .text._ZNKSt16initializer_listIfE5beginEv:

0000000000000000 <_ZNKSt16initializer_listIfE5beginEv>:
      constexpr size_type
      size() const noexcept { return _M_len; }

      // First element.
      constexpr const_iterator
      begin() const noexcept { return _M_array; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNKSt16initializer_listIfE3endEv:

0000000000000000 <_ZNKSt16initializer_listIfE3endEv>:

      // One past the last element.
      constexpr const_iterator
      end() const noexcept { return begin() + size(); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  11:	48 89 c7             	mov    %rax,%rdi
  14:	e8 00 00 00 00       	callq  19 <_ZNKSt16initializer_listIfE3endEv+0x19>
  19:	48 89 c3             	mov    %rax,%rbx
  1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNKSt16initializer_listIfE3endEv+0x28>
  28:	48 c1 e0 02          	shl    $0x2,%rax
  2c:	48 01 d8             	add    %rbx,%rax
  2f:	48 83 c4 18          	add    $0x18,%rsp
  33:	5b                   	pop    %rbx
  34:	5d                   	pop    %rbp
  35:	c3                   	retq   

Disassembly of section .text._ZSt7forwardIRK8TriangleIfEEOT_RNSt16remove_referenceIS4_E4typeE:

0000000000000000 <_ZSt7forwardIRK8TriangleIfEEOT_RNSt16remove_referenceIS4_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI8TriangleIfEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_:

0000000000000000 <_ZNSt16allocator_traitsISaI8TriangleIfEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_>:
       *
       *  Calls <tt> __a.construct(__p, std::forward<Args>(__args)...) </tt>
      */
      template<typename _Up, typename... _Args>
	static void
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
  14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNSt16allocator_traitsISaI8TriangleIfEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_+0x20>
  20:	48 89 c2             	mov    %rax,%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2b:	48 89 ce             	mov    %rcx,%rsi
  2e:	48 89 c7             	mov    %rax,%rdi
  31:	e8 00 00 00 00       	callq  36 <_ZNSt16allocator_traitsISaI8TriangleIfEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_+0x36>
  36:	90                   	nop
  37:	c9                   	leaveq 
  38:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EE3endEv:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EE3endEv>:
      end() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_finish); }
  1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  23:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  27:	48 89 d6             	mov    %rdx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt6vectorI8TriangleIfESaIS1_EE3endEv+0x32>
  32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  36:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  3a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  41:	00 00 
  43:	74 05                	je     4a <_ZNSt6vectorI8TriangleIfESaIS1_EE3endEv+0x4a>
  45:	e8 00 00 00 00       	callq  4a <_ZNSt6vectorI8TriangleIfESaIS1_EE3endEv+0x4a>
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_>:

#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    template<typename... _Args>
      void
      vector<_Tp, _Alloc>::
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 50          	sub    $0x50,%rsp
   b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  13:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1e:	00 00 
  20:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  24:	31 c0                	xor    %eax,%eax
    void
    vector<_Tp, _Alloc>::
    _M_realloc_insert(iterator __position, const _Tp& __x)
#endif
    {
      const size_type __len =
  26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  2a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 31 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x31>
  31:	be 01 00 00 00       	mov    $0x1,%esi
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x3e>
  3e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	_M_check_len(size_type(1), "vector::_M_realloc_insert");
      const size_type __elems_before = __position - begin();
  42:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x4e>
  4e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  52:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  56:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  5a:	48 89 d6             	mov    %rdx,%rsi
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x65>
  65:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __new_start(this->_M_allocate(__len));
  69:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  6d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  71:	48 89 d6             	mov    %rdx,%rsi
  74:	48 89 c7             	mov    %rax,%rdi
  77:	e8 00 00 00 00       	callq  7c <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x7c>
  7c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __new_finish(__new_start);
  80:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  84:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  // The order of the three operations is dictated by the C++11
	  // case, where the moves could alter a new element belonging
	  // to the existing vector.  This is an issue only for callers
	  // taking the element by lvalue ref (see last bullet of C++11
	  // [res.on.arguments]).
	  _Alloc_traits::construct(this->_M_impl,
  88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	callq  94 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x94>
  94:	48 89 c6             	mov    %rax,%rsi
				   __new_start + __elems_before,
  97:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  9b:	48 89 d0             	mov    %rdx,%rax
  9e:	48 c1 e0 03          	shl    $0x3,%rax
  a2:	48 01 d0             	add    %rdx,%rax
  a5:	48 c1 e0 03          	shl    $0x3,%rax
  a9:	48 89 c2             	mov    %rax,%rdx
	  _Alloc_traits::construct(this->_M_impl,
  ac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  b0:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  b4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  b8:	48 89 f2             	mov    %rsi,%rdx
  bb:	48 89 ce             	mov    %rcx,%rsi
  be:	48 89 c7             	mov    %rax,%rdi
  c1:	e8 00 00 00 00       	callq  c6 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xc6>
#if __cplusplus >= 201103L
				   std::forward<_Args>(__args)...);
#else
				   __x);
#endif
	  __new_finish = pointer();
  c6:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  cd:	00 

	  __new_finish
	    = std::__uninitialized_move_if_noexcept_a
	    (this->_M_impl._M_start, __position.base(),
	     __new_start, _M_get_Tp_allocator());
  ce:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  d2:	48 89 c7             	mov    %rax,%rdi
  d5:	e8 00 00 00 00       	callq  da <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xda>
  da:	48 89 c3             	mov    %rax,%rbx
	    (this->_M_impl._M_start, __position.base(),
  dd:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  e1:	48 89 c7             	mov    %rax,%rdi
  e4:	e8 00 00 00 00       	callq  e9 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xe9>
  e9:	48 8b 30             	mov    (%rax),%rsi
  ec:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  f0:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
  f3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  f7:	48 89 d9             	mov    %rbx,%rcx
  fa:	48 89 c7             	mov    %rax,%rdi
  fd:	e8 00 00 00 00       	callq  102 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x102>
 102:	48 89 45 c8          	mov    %rax,-0x38(%rbp)

	  ++__new_finish;
 106:	48 83 45 c8 48       	addq   $0x48,-0x38(%rbp)

	  __new_finish
	    = std::__uninitialized_move_if_noexcept_a
	    (__position.base(), this->_M_impl._M_finish,
	     __new_finish, _M_get_Tp_allocator());
 10b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 10f:	48 89 c7             	mov    %rax,%rdi
 112:	e8 00 00 00 00       	callq  117 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x117>
 117:	49 89 c4             	mov    %rax,%r12
	    (__position.base(), this->_M_impl._M_finish,
 11a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 11e:	48 8b 58 08          	mov    0x8(%rax),%rbx
 122:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 126:	48 89 c7             	mov    %rax,%rdi
 129:	e8 00 00 00 00       	callq  12e <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x12e>
 12e:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
 131:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 135:	4c 89 e1             	mov    %r12,%rcx
 138:	48 89 de             	mov    %rbx,%rsi
 13b:	48 89 c7             	mov    %rax,%rdi
 13e:	e8 00 00 00 00       	callq  143 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x143>
 143:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
	  _M_deallocate(__new_start, __len);
	  __throw_exception_again;
	}
      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
		    _M_get_Tp_allocator());
 147:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 14b:	48 89 c7             	mov    %rax,%rdi
 14e:	e8 00 00 00 00       	callq  153 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x153>
 153:	48 89 c2             	mov    %rax,%rdx
      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 156:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 15a:	48 8b 48 08          	mov    0x8(%rax),%rcx
 15e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 162:	48 8b 00             	mov    (%rax),%rax
 165:	48 89 ce             	mov    %rcx,%rsi
 168:	48 89 c7             	mov    %rax,%rdi
 16b:	e8 00 00 00 00       	callq  170 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x170>
      _M_deallocate(this->_M_impl._M_start,
 170:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
		    this->_M_impl._M_end_of_storage
 174:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 178:	48 8b 52 10          	mov    0x10(%rdx),%rdx
		    - this->_M_impl._M_start);
 17c:	48 89 d1             	mov    %rdx,%rcx
 17f:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 183:	48 8b 12             	mov    (%rdx),%rdx
 186:	48 29 d1             	sub    %rdx,%rcx
 189:	48 89 ca             	mov    %rcx,%rdx
 18c:	48 89 d1             	mov    %rdx,%rcx
 18f:	48 c1 f9 03          	sar    $0x3,%rcx
 193:	48 ba 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rdx
 19a:	e3 38 8e 
 19d:	48 0f af d1          	imul   %rcx,%rdx
      _M_deallocate(this->_M_impl._M_start,
 1a1:	48 89 d6             	mov    %rdx,%rsi
 1a4:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 1a8:	48 8b 0a             	mov    (%rdx),%rcx
 1ab:	48 89 f2             	mov    %rsi,%rdx
 1ae:	48 89 ce             	mov    %rcx,%rsi
 1b1:	48 89 c7             	mov    %rax,%rdi
 1b4:	e8 00 00 00 00       	callq  1b9 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1b9>
      this->_M_impl._M_start = __new_start;
 1b9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1bd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 1c1:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
 1c4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1c8:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1cc:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 1d0:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 1d4:	48 89 d0             	mov    %rdx,%rax
 1d7:	48 c1 e0 03          	shl    $0x3,%rax
 1db:	48 01 d0             	add    %rdx,%rax
 1de:	48 c1 e0 03          	shl    $0x3,%rax
 1e2:	48 89 c2             	mov    %rax,%rdx
 1e5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 1e9:	48 01 c2             	add    %rax,%rdx
 1ec:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1f0:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
 1f4:	90                   	nop
 1f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1f9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 200:	00 00 
 202:	0f 84 97 00 00 00    	je     29f <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29f>
 208:	e9 8d 00 00 00       	jmpq   29a <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29a>
      __catch(...)
 20d:	48 89 c7             	mov    %rax,%rdi
 210:	e8 00 00 00 00       	callq  215 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x215>
	  if (!__new_finish)
 215:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
 21a:	75 2d                	jne    249 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x249>
				   __new_start + __elems_before);
 21c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 220:	48 89 d0             	mov    %rdx,%rax
 223:	48 c1 e0 03          	shl    $0x3,%rax
 227:	48 01 d0             	add    %rdx,%rax
 22a:	48 c1 e0 03          	shl    $0x3,%rax
 22e:	48 89 c2             	mov    %rax,%rdx
	    _Alloc_traits::destroy(this->_M_impl,
 231:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 235:	48 01 c2             	add    %rax,%rdx
 238:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 23c:	48 89 d6             	mov    %rdx,%rsi
 23f:	48 89 c7             	mov    %rax,%rdi
 242:	e8 00 00 00 00       	callq  247 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x247>
 247:	eb 22                	jmp    26b <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x26b>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
 249:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 24d:	48 89 c7             	mov    %rax,%rdi
 250:	e8 00 00 00 00       	callq  255 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x255>
 255:	48 89 c2             	mov    %rax,%rdx
 258:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 25c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 260:	48 89 ce             	mov    %rcx,%rsi
 263:	48 89 c7             	mov    %rax,%rdi
 266:	e8 00 00 00 00       	callq  26b <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x26b>
	  _M_deallocate(__new_start, __len);
 26b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 26f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 273:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 277:	48 89 ce             	mov    %rcx,%rsi
 27a:	48 89 c7             	mov    %rax,%rdi
 27d:	e8 00 00 00 00       	callq  282 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x282>
	  __throw_exception_again;
 282:	e8 00 00 00 00       	callq  287 <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x287>
 287:	48 89 c3             	mov    %rax,%rbx
      __catch(...)
 28a:	e8 00 00 00 00       	callq  28f <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x28f>
 28f:	48 89 d8             	mov    %rbx,%rax
 292:	48 89 c7             	mov    %rax,%rdi
 295:	e8 00 00 00 00       	callq  29a <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29a>
    }
 29a:	e8 00 00 00 00       	callq  29f <_ZNSt6vectorI8TriangleIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29f>
 29f:	48 83 c4 50          	add    $0x50,%rsp
 2a3:	5b                   	pop    %rbx
 2a4:	41 5c                	pop    %r12
 2a6:	5d                   	pop    %rbp
 2a7:	c3                   	retq   

Disassembly of section .text._ZSt7forwardIRK5LightEOT_RNSt16remove_referenceIS3_E4typeE:

0000000000000000 <_ZSt7forwardIRK5LightEOT_RNSt16remove_referenceIS3_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI5LightEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_:

0000000000000000 <_ZNSt16allocator_traitsISaI5LightEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_>:
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
  14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNSt16allocator_traitsISaI5LightEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_+0x20>
  20:	48 89 c2             	mov    %rax,%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2b:	48 89 ce             	mov    %rcx,%rsi
  2e:	48 89 c7             	mov    %rax,%rdi
  31:	e8 00 00 00 00       	callq  36 <_ZNSt16allocator_traitsISaI5LightEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_+0x36>
  36:	90                   	nop
  37:	c9                   	leaveq 
  38:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:

0000000000000000 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 50          	sub    $0x50,%rsp
   b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  13:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1e:	00 00 
  20:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  24:	31 c0                	xor    %eax,%eax
      const size_type __len =
  26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  2a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 31 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x31>
  31:	be 01 00 00 00       	mov    $0x1,%esi
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x3e>
  3e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      const size_type __elems_before = __position - begin();
  42:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x4e>
  4e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  52:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  56:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  5a:	48 89 d6             	mov    %rdx,%rsi
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x65>
  65:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __new_start(this->_M_allocate(__len));
  69:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  6d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  71:	48 89 d6             	mov    %rdx,%rsi
  74:	48 89 c7             	mov    %rax,%rdi
  77:	e8 00 00 00 00       	callq  7c <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x7c>
  7c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __new_finish(__new_start);
  80:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  84:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  _Alloc_traits::construct(this->_M_impl,
  88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	callq  94 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x94>
  94:	48 89 c6             	mov    %rax,%rsi
				   __new_start + __elems_before,
  97:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  9b:	48 89 d0             	mov    %rdx,%rax
  9e:	48 01 c0             	add    %rax,%rax
  a1:	48 01 d0             	add    %rdx,%rax
  a4:	48 c1 e0 03          	shl    $0x3,%rax
  a8:	48 89 c2             	mov    %rax,%rdx
	  _Alloc_traits::construct(this->_M_impl,
  ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  af:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  b3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  b7:	48 89 f2             	mov    %rsi,%rdx
  ba:	48 89 ce             	mov    %rcx,%rsi
  bd:	48 89 c7             	mov    %rax,%rdi
  c0:	e8 00 00 00 00       	callq  c5 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xc5>
	  __new_finish = pointer();
  c5:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  cc:	00 
	     __new_start, _M_get_Tp_allocator());
  cd:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  d1:	48 89 c7             	mov    %rax,%rdi
  d4:	e8 00 00 00 00       	callq  d9 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xd9>
  d9:	48 89 c3             	mov    %rax,%rbx
	    (this->_M_impl._M_start, __position.base(),
  dc:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  e0:	48 89 c7             	mov    %rax,%rdi
  e3:	e8 00 00 00 00       	callq  e8 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xe8>
  e8:	48 8b 30             	mov    (%rax),%rsi
  eb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  ef:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
  f2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  f6:	48 89 d9             	mov    %rbx,%rcx
  f9:	48 89 c7             	mov    %rax,%rdi
  fc:	e8 00 00 00 00       	callq  101 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x101>
 101:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  ++__new_finish;
 105:	48 83 45 c8 18       	addq   $0x18,-0x38(%rbp)
	     __new_finish, _M_get_Tp_allocator());
 10a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 10e:	48 89 c7             	mov    %rax,%rdi
 111:	e8 00 00 00 00       	callq  116 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x116>
 116:	49 89 c4             	mov    %rax,%r12
	    (__position.base(), this->_M_impl._M_finish,
 119:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 11d:	48 8b 58 08          	mov    0x8(%rax),%rbx
 121:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 125:	48 89 c7             	mov    %rax,%rdi
 128:	e8 00 00 00 00       	callq  12d <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x12d>
 12d:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
 130:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 134:	4c 89 e1             	mov    %r12,%rcx
 137:	48 89 de             	mov    %rbx,%rsi
 13a:	48 89 c7             	mov    %rax,%rdi
 13d:	e8 00 00 00 00       	callq  142 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x142>
 142:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		    _M_get_Tp_allocator());
 146:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 14a:	48 89 c7             	mov    %rax,%rdi
 14d:	e8 00 00 00 00       	callq  152 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x152>
 152:	48 89 c2             	mov    %rax,%rdx
      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 155:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 159:	48 8b 48 08          	mov    0x8(%rax),%rcx
 15d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 161:	48 8b 00             	mov    (%rax),%rax
 164:	48 89 ce             	mov    %rcx,%rsi
 167:	48 89 c7             	mov    %rax,%rdi
 16a:	e8 00 00 00 00       	callq  16f <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x16f>
      _M_deallocate(this->_M_impl._M_start,
 16f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
		    this->_M_impl._M_end_of_storage
 173:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 177:	48 8b 52 10          	mov    0x10(%rdx),%rdx
		    - this->_M_impl._M_start);
 17b:	48 89 d1             	mov    %rdx,%rcx
 17e:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 182:	48 8b 12             	mov    (%rdx),%rdx
 185:	48 29 d1             	sub    %rdx,%rcx
 188:	48 89 ca             	mov    %rcx,%rdx
 18b:	48 89 d1             	mov    %rdx,%rcx
 18e:	48 c1 f9 03          	sar    $0x3,%rcx
 192:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
 199:	aa aa aa 
 19c:	48 0f af d1          	imul   %rcx,%rdx
      _M_deallocate(this->_M_impl._M_start,
 1a0:	48 89 d6             	mov    %rdx,%rsi
 1a3:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 1a7:	48 8b 0a             	mov    (%rdx),%rcx
 1aa:	48 89 f2             	mov    %rsi,%rdx
 1ad:	48 89 ce             	mov    %rcx,%rsi
 1b0:	48 89 c7             	mov    %rax,%rdi
 1b3:	e8 00 00 00 00       	callq  1b8 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x1b8>
      this->_M_impl._M_start = __new_start;
 1b8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1bc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 1c0:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
 1c3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1c7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1cb:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 1cf:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 1d3:	48 89 d0             	mov    %rdx,%rax
 1d6:	48 01 c0             	add    %rax,%rax
 1d9:	48 01 d0             	add    %rdx,%rax
 1dc:	48 c1 e0 03          	shl    $0x3,%rax
 1e0:	48 89 c2             	mov    %rax,%rdx
 1e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 1e7:	48 01 c2             	add    %rax,%rdx
 1ea:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1ee:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
 1f2:	90                   	nop
 1f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1f7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1fe:	00 00 
 200:	0f 84 96 00 00 00    	je     29c <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x29c>
 206:	e9 8c 00 00 00       	jmpq   297 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x297>
      __catch(...)
 20b:	48 89 c7             	mov    %rax,%rdi
 20e:	e8 00 00 00 00       	callq  213 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x213>
	  if (!__new_finish)
 213:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
 218:	75 2c                	jne    246 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x246>
				   __new_start + __elems_before);
 21a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 21e:	48 89 d0             	mov    %rdx,%rax
 221:	48 01 c0             	add    %rax,%rax
 224:	48 01 d0             	add    %rdx,%rax
 227:	48 c1 e0 03          	shl    $0x3,%rax
 22b:	48 89 c2             	mov    %rax,%rdx
	    _Alloc_traits::destroy(this->_M_impl,
 22e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 232:	48 01 c2             	add    %rax,%rdx
 235:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 239:	48 89 d6             	mov    %rdx,%rsi
 23c:	48 89 c7             	mov    %rax,%rdi
 23f:	e8 00 00 00 00       	callq  244 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x244>
 244:	eb 22                	jmp    268 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x268>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
 246:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 24a:	48 89 c7             	mov    %rax,%rdi
 24d:	e8 00 00 00 00       	callq  252 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x252>
 252:	48 89 c2             	mov    %rax,%rdx
 255:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 259:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 25d:	48 89 ce             	mov    %rcx,%rsi
 260:	48 89 c7             	mov    %rax,%rdi
 263:	e8 00 00 00 00       	callq  268 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x268>
	  _M_deallocate(__new_start, __len);
 268:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 26c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 270:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 274:	48 89 ce             	mov    %rcx,%rsi
 277:	48 89 c7             	mov    %rax,%rdi
 27a:	e8 00 00 00 00       	callq  27f <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x27f>
	  __throw_exception_again;
 27f:	e8 00 00 00 00       	callq  284 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x284>
 284:	48 89 c3             	mov    %rax,%rbx
      __catch(...)
 287:	e8 00 00 00 00       	callq  28c <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x28c>
 28c:	48 89 d8             	mov    %rbx,%rax
 28f:	48 89 c7             	mov    %rax,%rdi
 292:	e8 00 00 00 00       	callq  297 <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x297>
    }
 297:	e8 00 00 00 00       	callq  29c <_ZNSt6vectorI5LightSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x29c>
 29c:	48 83 c4 50          	add    $0x50,%rsp
 2a0:	5b                   	pop    %rbx
 2a1:	41 5c                	pop    %r12
 2a3:	5d                   	pop    %rbp
 2a4:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implD2Ev:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implD1Ev>:
      struct _Vector_impl
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implD1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EEC2Ev:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EEC1Ev>:
      _Vector_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_impl() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EED2Ev:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 40 10          	mov    0x10(%rax),%rax
		      - this->_M_impl._M_start); }
  14:	48 89 c2             	mov    %rax,%rdx
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 00             	mov    (%rax),%rax
  1e:	48 29 c2             	sub    %rax,%rdx
  21:	48 89 d0             	mov    %rdx,%rax
  24:	48 c1 f8 03          	sar    $0x3,%rax
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
  28:	48 89 c2             	mov    %rax,%rdx
  2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2f:	48 8b 08             	mov    (%rax),%rcx
  32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  36:	48 89 ce             	mov    %rcx,%rsi
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EED1Ev+0x41>
		      - this->_M_impl._M_start); }
  41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  45:	48 89 c7             	mov    %rax,%rdi
  48:	e8 00 00 00 00       	callq  4d <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EED1Ev+0x4d>
  4d:	90                   	nop
  4e:	c9                   	leaveq 
  4f:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIPP8TriangleIfES2_EvT_S4_RSaIT0_E:

0000000000000000 <_ZSt8_DestroyIPP8TriangleIfES2_EvT_S4_RSaIT0_E>:
	__traits::destroy(__alloc, std::__addressof(*__first));
    }

  template<typename _ForwardIterator, typename _Tp>
    inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	     allocator<_Tp>&)
    {
      _Destroy(__first, __last);
  14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZSt8_DestroyIPP8TriangleIfES2_EvT_S4_RSaIT0_E+0x27>
    }
  27:	90                   	nop
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt7forwardIP8TriangleIfEEOT_RNSt16remove_referenceIS3_E4typeE:

0000000000000000 <_ZSt7forwardIP8TriangleIfEEOT_RNSt16remove_referenceIS3_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_>:
      vector<_Tp, _Alloc>::
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 8b 50 08          	mov    0x8(%rax),%rdx
  19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1d:	48 8b 40 10          	mov    0x10(%rax),%rax
  21:	48 39 c2             	cmp    %rax,%rdx
  24:	74 3c                	je     62 <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x62>
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
  26:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x32>
  32:	48 89 c2             	mov    %rax,%rdx
  35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  39:	48 8b 48 08          	mov    0x8(%rax),%rcx
  3d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  41:	48 89 ce             	mov    %rcx,%rsi
  44:	48 89 c7             	mov    %rax,%rdi
  47:	e8 00 00 00 00       	callq  4c <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x4c>
	    ++this->_M_impl._M_finish;
  4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  50:	48 8b 40 08          	mov    0x8(%rax),%rax
  54:	48 8d 50 08          	lea    0x8(%rax),%rdx
  58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5c:	48 89 50 08          	mov    %rdx,0x8(%rax)
      }
  60:	eb 30                	jmp    92 <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x92>
	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
  62:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  66:	48 89 c7             	mov    %rax,%rdi
  69:	e8 00 00 00 00       	callq  6e <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x6e>
  6e:	48 89 c3             	mov    %rax,%rbx
  71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  75:	48 89 c7             	mov    %rax,%rdi
  78:	e8 00 00 00 00       	callq  7d <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x7d>
  7d:	48 89 c1             	mov    %rax,%rcx
  80:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  84:	48 89 da             	mov    %rbx,%rdx
  87:	48 89 ce             	mov    %rcx,%rsi
  8a:	48 89 c7             	mov    %rax,%rdi
  8d:	e8 00 00 00 00       	callq  92 <_ZNSt6vectorIP8TriangleIfESaIS2_EE12emplace_backIJS2_EEEvDpOT_+0x92>
      }
  92:	90                   	nop
  93:	48 83 c4 18          	add    $0x18,%rsp
  97:	5b                   	pop    %rbx
  98:	5d                   	pop    %rbp
  99:	c3                   	retq   

Disassembly of section .text._Z13cross_productIfE6VectorIT_Lm3EES2_S2_:

0000000000000000 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_>:
  return out;
}


template <class T>
Vector<T, 3> cross_product(Vector<T, 3> v1, Vector<T, 3> v2) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   d:	66 48 0f 7e ce       	movq   %xmm1,%rsi
  12:	66 48 0f 7e d2       	movq   %xmm2,%rdx
  17:	66 48 0f 7e d9       	movq   %xmm3,%rcx
  1c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  20:	8b 45 d8             	mov    -0x28(%rbp),%eax
  23:	83 e0 00             	and    $0x0,%eax
  26:	09 f0                	or     %esi,%eax
  28:	89 45 d8             	mov    %eax,-0x28(%rbp)
  2b:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
  2f:	8b 45 c8             	mov    -0x38(%rbp),%eax
  32:	83 e0 00             	and    $0x0,%eax
  35:	09 c8                	or     %ecx,%eax
  37:	89 45 c8             	mov    %eax,-0x38(%rbp)
  3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  41:	00 00 
  43:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  47:	31 c0                	xor    %eax,%eax
  Vector<T, 3> cross;
  49:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4d:	48 89 c7             	mov    %rax,%rdi
  50:	e8 00 00 00 00       	callq  55 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x55>

  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
  55:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  59:	be 01 00 00 00       	mov    $0x1,%esi
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	callq  66 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x66>
  66:	f3 0f 10 38          	movss  (%rax),%xmm7
  6a:	f3 0f 11 7d a8       	movss  %xmm7,-0x58(%rbp)
  6f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  73:	be 02 00 00 00       	mov    $0x2,%esi
  78:	48 89 c7             	mov    %rax,%rdi
  7b:	e8 00 00 00 00       	callq  80 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x80>
  80:	f3 0f 10 00          	movss  (%rax),%xmm0
  84:	f3 0f 59 45 a8       	mulss  -0x58(%rbp),%xmm0
  89:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
  8e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  92:	be 02 00 00 00       	mov    $0x2,%esi
  97:	48 89 c7             	mov    %rax,%rdi
  9a:	e8 00 00 00 00       	callq  9f <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x9f>
  9f:	f3 0f 10 10          	movss  (%rax),%xmm2
  a3:	f3 0f 11 55 a4       	movss  %xmm2,-0x5c(%rbp)
  a8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  ac:	be 01 00 00 00       	mov    $0x1,%esi
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xb9>
  b9:	f3 0f 10 00          	movss  (%rax),%xmm0
  bd:	0f 28 e0             	movaps %xmm0,%xmm4
  c0:	f3 0f 59 65 a4       	mulss  -0x5c(%rbp),%xmm4
  c5:	f3 0f 11 65 a4       	movss  %xmm4,-0x5c(%rbp)
  ca:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  ce:	be 00 00 00 00       	mov    $0x0,%esi
  d3:	48 89 c7             	mov    %rax,%rdi
  d6:	e8 00 00 00 00       	callq  db <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xdb>
  db:	f3 0f 10 45 a8       	movss  -0x58(%rbp),%xmm0
  e0:	f3 0f 5c 45 a4       	subss  -0x5c(%rbp),%xmm0
  e5:	f3 0f 11 00          	movss  %xmm0,(%rax)
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
  e9:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  ed:	be 02 00 00 00       	mov    $0x2,%esi
  f2:	48 89 c7             	mov    %rax,%rdi
  f5:	e8 00 00 00 00       	callq  fa <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xfa>
  fa:	f3 0f 10 18          	movss  (%rax),%xmm3
  fe:	f3 0f 11 5d a8       	movss  %xmm3,-0x58(%rbp)
 103:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 107:	be 00 00 00 00       	mov    $0x0,%esi
 10c:	48 89 c7             	mov    %rax,%rdi
 10f:	e8 00 00 00 00       	callq  114 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x114>
 114:	f3 0f 10 00          	movss  (%rax),%xmm0
 118:	f3 0f 59 45 a8       	mulss  -0x58(%rbp),%xmm0
 11d:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
 122:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 126:	be 00 00 00 00       	mov    $0x0,%esi
 12b:	48 89 c7             	mov    %rax,%rdi
 12e:	e8 00 00 00 00       	callq  133 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x133>
 133:	f3 0f 10 08          	movss  (%rax),%xmm1
 137:	f3 0f 11 4d a4       	movss  %xmm1,-0x5c(%rbp)
 13c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 140:	be 02 00 00 00       	mov    $0x2,%esi
 145:	48 89 c7             	mov    %rax,%rdi
 148:	e8 00 00 00 00       	callq  14d <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x14d>
 14d:	f3 0f 10 00          	movss  (%rax),%xmm0
 151:	0f 28 e8             	movaps %xmm0,%xmm5
 154:	f3 0f 59 6d a4       	mulss  -0x5c(%rbp),%xmm5
 159:	f3 0f 11 6d a4       	movss  %xmm5,-0x5c(%rbp)
 15e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 162:	be 01 00 00 00       	mov    $0x1,%esi
 167:	48 89 c7             	mov    %rax,%rdi
 16a:	e8 00 00 00 00       	callq  16f <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x16f>
 16f:	f3 0f 10 45 a8       	movss  -0x58(%rbp),%xmm0
 174:	f3 0f 5c 45 a4       	subss  -0x5c(%rbp),%xmm0
 179:	f3 0f 11 00          	movss  %xmm0,(%rax)
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
 17d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 181:	be 00 00 00 00       	mov    $0x0,%esi
 186:	48 89 c7             	mov    %rax,%rdi
 189:	e8 00 00 00 00       	callq  18e <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x18e>
 18e:	f3 0f 10 38          	movss  (%rax),%xmm7
 192:	f3 0f 11 7d a8       	movss  %xmm7,-0x58(%rbp)
 197:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 19b:	be 01 00 00 00       	mov    $0x1,%esi
 1a0:	48 89 c7             	mov    %rax,%rdi
 1a3:	e8 00 00 00 00       	callq  1a8 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1a8>
 1a8:	f3 0f 10 00          	movss  (%rax),%xmm0
 1ac:	f3 0f 59 45 a8       	mulss  -0x58(%rbp),%xmm0
 1b1:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
 1b6:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 1ba:	be 01 00 00 00       	mov    $0x1,%esi
 1bf:	48 89 c7             	mov    %rax,%rdi
 1c2:	e8 00 00 00 00       	callq  1c7 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1c7>
 1c7:	f3 0f 10 10          	movss  (%rax),%xmm2
 1cb:	f3 0f 11 55 a4       	movss  %xmm2,-0x5c(%rbp)
 1d0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 1d4:	be 00 00 00 00       	mov    $0x0,%esi
 1d9:	48 89 c7             	mov    %rax,%rdi
 1dc:	e8 00 00 00 00       	callq  1e1 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1e1>
 1e1:	f3 0f 10 00          	movss  (%rax),%xmm0
 1e5:	0f 28 f0             	movaps %xmm0,%xmm6
 1e8:	f3 0f 59 75 a4       	mulss  -0x5c(%rbp),%xmm6
 1ed:	f3 0f 11 75 a4       	movss  %xmm6,-0x5c(%rbp)
 1f2:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 1f6:	be 02 00 00 00       	mov    $0x2,%esi
 1fb:	48 89 c7             	mov    %rax,%rdi
 1fe:	e8 00 00 00 00       	callq  203 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x203>
 203:	f3 0f 10 45 a8       	movss  -0x58(%rbp),%xmm0
 208:	f3 0f 5c 45 a4       	subss  -0x5c(%rbp),%xmm0
 20d:	f3 0f 11 00          	movss  %xmm0,(%rax)

  return cross;
 211:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 215:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
 219:	8b 45 e8             	mov    -0x18(%rbp),%eax
 21c:	89 45 f4             	mov    %eax,-0xc(%rbp)
 21f:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
 223:	8b 45 f4             	mov    -0xc(%rbp),%eax
}
 226:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
 22a:	f3 0f 7e 45 a8       	movq   -0x58(%rbp),%xmm0
 22f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 233:	f3 0f 7e 4d a8       	movq   -0x58(%rbp),%xmm1
 238:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 23c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 243:	00 00 
 245:	74 05                	je     24c <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x24c>
 247:	e8 00 00 00 00       	callq  24c <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x24c>
 24c:	c9                   	leaveq 
 24d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEC2ERKS2_:

0000000000000000 <_ZN9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEEC1ERKS2_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEE4baseEv:

0000000000000000 <_ZNK9__gnu_cxx17__normal_iteratorIP5LightSt6vectorIS1_SaIS1_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implD2Ev:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implD1Ev>:
      struct _Vector_impl
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implD1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EEC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EEC1Ev>:
      _Vector_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_impl() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EED2Ev:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 40 10          	mov    0x10(%rax),%rax
		      - this->_M_impl._M_start); }
  14:	48 89 c2             	mov    %rax,%rdx
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 00             	mov    (%rax),%rax
  1e:	48 29 c2             	sub    %rax,%rdx
  21:	48 89 d0             	mov    %rdx,%rax
  24:	48 c1 f8 02          	sar    $0x2,%rax
  28:	48 89 c2             	mov    %rax,%rdx
  2b:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  32:	aa aa aa 
  35:	48 0f af c2          	imul   %rdx,%rax
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
  39:	48 89 c2             	mov    %rax,%rdx
  3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40:	48 8b 08             	mov    (%rax),%rcx
  43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  47:	48 89 ce             	mov    %rcx,%rsi
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EED1Ev+0x52>
		      - this->_M_impl._M_start); }
  52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	callq  5e <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EED1Ev+0x5e>
  5e:	90                   	nop
  5f:	c9                   	leaveq 
  60:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP6VectorIfLm3EES1_EvT_S3_RSaIT0_E:

0000000000000000 <_ZSt8_DestroyIP6VectorIfLm3EES1_EvT_S3_RSaIT0_E>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      _Destroy(__first, __last);
  14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZSt8_DestroyIP6VectorIfLm3EES1_EvT_S3_RSaIT0_E+0x27>
    }
  27:	90                   	nop
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt7forwardIRK6VectorIfLm3EEEOT_RNSt16remove_referenceIS4_E4typeE:

0000000000000000 <_ZSt7forwardIRK6VectorIfLm3EEEOT_RNSt16remove_referenceIS4_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI6VectorIfLm3EEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_:

0000000000000000 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_>:
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
  14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_+0x20>
  20:	48 89 c2             	mov    %rax,%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2b:	48 89 ce             	mov    %rcx,%rsi
  2e:	48 89 c7             	mov    %rax,%rdi
  31:	e8 00 00 00 00       	callq  36 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_+0x36>
  36:	90                   	nop
  37:	c9                   	leaveq 
  38:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EE3endEv:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE3endEv>:
      end() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_finish); }
  1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  23:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  27:	48 89 d6             	mov    %rdx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE3endEv+0x32>
  32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  36:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  3a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  41:	00 00 
  43:	74 05                	je     4a <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE3endEv+0x4a>
  45:	e8 00 00 00 00       	callq  4a <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE3endEv+0x4a>
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 50          	sub    $0x50,%rsp
   b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  13:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1e:	00 00 
  20:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  24:	31 c0                	xor    %eax,%eax
      const size_type __len =
  26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  2a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 31 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x31>
  31:	be 01 00 00 00       	mov    $0x1,%esi
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x3e>
  3e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      const size_type __elems_before = __position - begin();
  42:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x4e>
  4e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  52:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  56:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  5a:	48 89 d6             	mov    %rdx,%rsi
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x65>
  65:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __new_start(this->_M_allocate(__len));
  69:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  6d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  71:	48 89 d6             	mov    %rdx,%rsi
  74:	48 89 c7             	mov    %rax,%rdi
  77:	e8 00 00 00 00       	callq  7c <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x7c>
  7c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __new_finish(__new_start);
  80:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  84:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  _Alloc_traits::construct(this->_M_impl,
  88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	callq  94 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x94>
  94:	48 89 c6             	mov    %rax,%rsi
				   __new_start + __elems_before,
  97:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  9b:	48 89 d0             	mov    %rdx,%rax
  9e:	48 01 c0             	add    %rax,%rax
  a1:	48 01 d0             	add    %rdx,%rax
  a4:	48 c1 e0 02          	shl    $0x2,%rax
  a8:	48 89 c2             	mov    %rax,%rdx
	  _Alloc_traits::construct(this->_M_impl,
  ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  af:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  b3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  b7:	48 89 f2             	mov    %rsi,%rdx
  ba:	48 89 ce             	mov    %rcx,%rsi
  bd:	48 89 c7             	mov    %rax,%rdi
  c0:	e8 00 00 00 00       	callq  c5 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xc5>
	  __new_finish = pointer();
  c5:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  cc:	00 
	     __new_start, _M_get_Tp_allocator());
  cd:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  d1:	48 89 c7             	mov    %rax,%rdi
  d4:	e8 00 00 00 00       	callq  d9 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xd9>
  d9:	48 89 c3             	mov    %rax,%rbx
	    (this->_M_impl._M_start, __position.base(),
  dc:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  e0:	48 89 c7             	mov    %rax,%rdi
  e3:	e8 00 00 00 00       	callq  e8 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0xe8>
  e8:	48 8b 30             	mov    (%rax),%rsi
  eb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  ef:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
  f2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  f6:	48 89 d9             	mov    %rbx,%rcx
  f9:	48 89 c7             	mov    %rax,%rdi
  fc:	e8 00 00 00 00       	callq  101 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x101>
 101:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  ++__new_finish;
 105:	48 83 45 c8 0c       	addq   $0xc,-0x38(%rbp)
	     __new_finish, _M_get_Tp_allocator());
 10a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 10e:	48 89 c7             	mov    %rax,%rdi
 111:	e8 00 00 00 00       	callq  116 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x116>
 116:	49 89 c4             	mov    %rax,%r12
	    (__position.base(), this->_M_impl._M_finish,
 119:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 11d:	48 8b 58 08          	mov    0x8(%rax),%rbx
 121:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 125:	48 89 c7             	mov    %rax,%rdi
 128:	e8 00 00 00 00       	callq  12d <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x12d>
 12d:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
 130:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 134:	4c 89 e1             	mov    %r12,%rcx
 137:	48 89 de             	mov    %rbx,%rsi
 13a:	48 89 c7             	mov    %rax,%rdi
 13d:	e8 00 00 00 00       	callq  142 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x142>
 142:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		    _M_get_Tp_allocator());
 146:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 14a:	48 89 c7             	mov    %rax,%rdi
 14d:	e8 00 00 00 00       	callq  152 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x152>
 152:	48 89 c2             	mov    %rax,%rdx
      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 155:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 159:	48 8b 48 08          	mov    0x8(%rax),%rcx
 15d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 161:	48 8b 00             	mov    (%rax),%rax
 164:	48 89 ce             	mov    %rcx,%rsi
 167:	48 89 c7             	mov    %rax,%rdi
 16a:	e8 00 00 00 00       	callq  16f <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x16f>
      _M_deallocate(this->_M_impl._M_start,
 16f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
		    this->_M_impl._M_end_of_storage
 173:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 177:	48 8b 52 10          	mov    0x10(%rdx),%rdx
		    - this->_M_impl._M_start);
 17b:	48 89 d1             	mov    %rdx,%rcx
 17e:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 182:	48 8b 12             	mov    (%rdx),%rdx
 185:	48 29 d1             	sub    %rdx,%rcx
 188:	48 89 ca             	mov    %rcx,%rdx
 18b:	48 89 d1             	mov    %rdx,%rcx
 18e:	48 c1 f9 02          	sar    $0x2,%rcx
 192:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
 199:	aa aa aa 
 19c:	48 0f af d1          	imul   %rcx,%rdx
      _M_deallocate(this->_M_impl._M_start,
 1a0:	48 89 d6             	mov    %rdx,%rsi
 1a3:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 1a7:	48 8b 0a             	mov    (%rdx),%rcx
 1aa:	48 89 f2             	mov    %rsi,%rdx
 1ad:	48 89 ce             	mov    %rcx,%rsi
 1b0:	48 89 c7             	mov    %rax,%rdi
 1b3:	e8 00 00 00 00       	callq  1b8 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x1b8>
      this->_M_impl._M_start = __new_start;
 1b8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1bc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 1c0:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
 1c3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1c7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1cb:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 1cf:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 1d3:	48 89 d0             	mov    %rdx,%rax
 1d6:	48 01 c0             	add    %rax,%rax
 1d9:	48 01 d0             	add    %rdx,%rax
 1dc:	48 c1 e0 02          	shl    $0x2,%rax
 1e0:	48 89 c2             	mov    %rax,%rdx
 1e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 1e7:	48 01 c2             	add    %rax,%rdx
 1ea:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1ee:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
 1f2:	90                   	nop
 1f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1f7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1fe:	00 00 
 200:	0f 84 96 00 00 00    	je     29c <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29c>
 206:	e9 8c 00 00 00       	jmpq   297 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x297>
      __catch(...)
 20b:	48 89 c7             	mov    %rax,%rdi
 20e:	e8 00 00 00 00       	callq  213 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x213>
	  if (!__new_finish)
 213:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
 218:	75 2c                	jne    246 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x246>
				   __new_start + __elems_before);
 21a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 21e:	48 89 d0             	mov    %rdx,%rax
 221:	48 01 c0             	add    %rax,%rax
 224:	48 01 d0             	add    %rdx,%rax
 227:	48 c1 e0 02          	shl    $0x2,%rax
 22b:	48 89 c2             	mov    %rax,%rdx
	    _Alloc_traits::destroy(this->_M_impl,
 22e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 232:	48 01 c2             	add    %rax,%rdx
 235:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 239:	48 89 d6             	mov    %rdx,%rsi
 23c:	48 89 c7             	mov    %rax,%rdi
 23f:	e8 00 00 00 00       	callq  244 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x244>
 244:	eb 22                	jmp    268 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x268>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
 246:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 24a:	48 89 c7             	mov    %rax,%rdi
 24d:	e8 00 00 00 00       	callq  252 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x252>
 252:	48 89 c2             	mov    %rax,%rdx
 255:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 259:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 25d:	48 89 ce             	mov    %rcx,%rsi
 260:	48 89 c7             	mov    %rax,%rdi
 263:	e8 00 00 00 00       	callq  268 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x268>
	  _M_deallocate(__new_start, __len);
 268:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 26c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 270:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 274:	48 89 ce             	mov    %rcx,%rsi
 277:	48 89 c7             	mov    %rax,%rdi
 27a:	e8 00 00 00 00       	callq  27f <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x27f>
	  __throw_exception_again;
 27f:	e8 00 00 00 00       	callq  284 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x284>
 284:	48 89 c3             	mov    %rax,%rbx
      __catch(...)
 287:	e8 00 00 00 00       	callq  28c <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x28c>
 28c:	48 89 d8             	mov    %rbx,%rax
 28f:	48 89 c7             	mov    %rax,%rdi
 292:	e8 00 00 00 00       	callq  297 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x297>
    }
 297:	e8 00 00 00 00       	callq  29c <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_+0x29c>
 29c:	48 83 c4 50          	add    $0x50,%rsp
 2a0:	5b                   	pop    %rbx
 2a1:	41 5c                	pop    %r12
 2a3:	5d                   	pop    %rbp
 2a4:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implD2Ev:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implD1Ev>:
      struct _Vector_impl
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implD1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EEC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EEC1Ev>:
      _Vector_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_impl() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EED2Ev:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 40 10          	mov    0x10(%rax),%rax
		      - this->_M_impl._M_start); }
  14:	48 89 c2             	mov    %rax,%rdx
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 00             	mov    (%rax),%rax
  1e:	48 29 c2             	sub    %rax,%rdx
  21:	48 89 d0             	mov    %rdx,%rax
  24:	48 c1 f8 03          	sar    $0x3,%rax
  28:	48 89 c2             	mov    %rax,%rdx
  2b:	48 b8 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rax
  32:	e3 38 8e 
  35:	48 0f af c2          	imul   %rdx,%rax
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
  39:	48 89 c2             	mov    %rax,%rdx
  3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40:	48 8b 08             	mov    (%rax),%rcx
  43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  47:	48 89 ce             	mov    %rcx,%rsi
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EED1Ev+0x52>
		      - this->_M_impl._M_start); }
  52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	callq  5e <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EED1Ev+0x5e>
  5e:	90                   	nop
  5f:	c9                   	leaveq 
  60:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP8TriangleIfES1_EvT_S3_RSaIT0_E:

0000000000000000 <_ZSt8_DestroyIP8TriangleIfES1_EvT_S3_RSaIT0_E>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      _Destroy(__first, __last);
  14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZSt8_DestroyIP8TriangleIfES1_EvT_S3_RSaIT0_E+0x27>
    }
  27:	90                   	nop
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implD2Ev:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implD1Ev>:
      struct _Vector_impl
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implD1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EEC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EEC1Ev>:
      _Vector_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_impl() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI5LightSaIS0_EEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EED2Ev:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 40 10          	mov    0x10(%rax),%rax
		      - this->_M_impl._M_start); }
  14:	48 89 c2             	mov    %rax,%rdx
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 00             	mov    (%rax),%rax
  1e:	48 29 c2             	sub    %rax,%rdx
  21:	48 89 d0             	mov    %rdx,%rax
  24:	48 c1 f8 03          	sar    $0x3,%rax
  28:	48 89 c2             	mov    %rax,%rdx
  2b:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  32:	aa aa aa 
  35:	48 0f af c2          	imul   %rdx,%rax
      { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
  39:	48 89 c2             	mov    %rax,%rdx
  3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40:	48 8b 08             	mov    (%rax),%rcx
  43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  47:	48 89 ce             	mov    %rcx,%rsi
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNSt12_Vector_baseI5LightSaIS0_EED1Ev+0x52>
		      - this->_M_impl._M_start); }
  52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	callq  5e <_ZNSt12_Vector_baseI5LightSaIS0_EED1Ev+0x5e>
  5e:	90                   	nop
  5f:	c9                   	leaveq 
  60:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP5LightS0_EvT_S2_RSaIT0_E:

0000000000000000 <_ZSt8_DestroyIP5LightS0_EvT_S2_RSaIT0_E>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      _Destroy(__first, __last);
  14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZSt8_DestroyIP5LightS0_EvT_S2_RSaIT0_E+0x27>
    }
  27:	90                   	nop
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZNSt5tupleIJP5ColorSt14default_deleteIA_S0_EEEC2IS1_S4_Lb1EEEv:

0000000000000000 <_ZNSt5tupleIJP5ColorSt14default_deleteIA_S0_EEEC1IS1_S4_Lb1EEEv>:
                typename enable_if<__and_<
                                     __is_implicitly_default_constructible<_U1>,
                                     __is_implicitly_default_constructible<_U2>>
                                   ::value, bool>::type = true>

      constexpr tuple()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Inherited() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt5tupleIJP5ColorSt14default_deleteIA_S0_EEEC1IS1_S4_Lb1EEEv+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:

0000000000000000 <_ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_>:
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }

  /// Return a reference to the ith element of a tuple.
  template<std::size_t __i, typename... _Elements>
    constexpr __tuple_element_t<__i, tuple<_Elements...>>&
    get(tuple<_Elements...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE10_M_deleterEv:

0000000000000000 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE10_M_deleterEv>:
      _Dp&       _M_deleter() { return std::get<1>(_M_t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE10_M_deleterEv+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv:

0000000000000000 <_ZNKSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv>:
      pointer    _M_ptr() const { return std::get<0>(_M_t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt15__uniq_ptr_implI5ColorSt14default_deleteIA_S0_EE6_M_ptrEv+0x18>
  18:	48 8b 00             	mov    (%rax),%rax
  1b:	c9                   	leaveq 
  1c:	c3                   	retq   

Disassembly of section .text._ZNKSt16initializer_listIfE4sizeEv:

0000000000000000 <_ZNKSt16initializer_listIfE4sizeEv>:
      size() const noexcept { return _M_len; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEE9constructIS2_JRKS2_EEEvPT_DpOT0_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE9constructIS2_JRKS2_EEEvPT_DpOT0_>:
      { return size_t(-1) / sizeof(_Tp); }

#if __cplusplus >= 201103L
      template<typename _Up, typename... _Args>
	void
	construct(_Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	callq  21 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x21>
  21:	48 89 c3             	mov    %rax,%rbx
  24:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  28:	48 89 c6             	mov    %rax,%rsi
  2b:	bf 48 00 00 00       	mov    $0x48,%edi
  30:	e8 00 00 00 00       	callq  35 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x35>
  35:	48 85 c0             	test   %rax,%rax
  38:	74 46                	je     80 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x80>
  3a:	48 8b 13             	mov    (%rbx),%rdx
  3d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  41:	48 89 10             	mov    %rdx,(%rax)
  44:	48 89 48 08          	mov    %rcx,0x8(%rax)
  48:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  4c:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
  50:	48 89 50 10          	mov    %rdx,0x10(%rax)
  54:	48 89 48 18          	mov    %rcx,0x18(%rax)
  58:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  5c:	48 8b 4b 28          	mov    0x28(%rbx),%rcx
  60:	48 89 50 20          	mov    %rdx,0x20(%rax)
  64:	48 89 48 28          	mov    %rcx,0x28(%rax)
  68:	48 8b 53 30          	mov    0x30(%rbx),%rdx
  6c:	48 8b 4b 38          	mov    0x38(%rbx),%rcx
  70:	48 89 50 30          	mov    %rdx,0x30(%rax)
  74:	48 89 48 38          	mov    %rcx,0x38(%rax)
  78:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  7c:	48 89 50 40          	mov    %rdx,0x40(%rax)
  80:	90                   	nop
  81:	48 83 c4 28          	add    $0x28,%rsp
  85:	5b                   	pop    %rbx
  86:	5d                   	pop    %rbp
  87:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx17__normal_iteratorIP8TriangleIfESt6vectorIS2_SaIS2_EEEC2ERKS3_:

0000000000000000 <_ZN9__gnu_cxx17__normal_iteratorIP8TriangleIfESt6vectorIS2_SaIS2_EEEC1ERKS3_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc:

0000000000000000 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc>:
      { return _M_insert_rval(__position, std::move(__v)); }
#endif

      // Called by _M_fill_insert, _M_insert_aux etc.
      size_type
      _M_check_len(size_type __n, const char* __s) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 48          	sub    $0x48,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  11:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
      {
	if (max_size() - size() < __n)
  24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x30>
  30:	48 89 c3             	mov    %rax,%rbx
  33:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	e8 00 00 00 00       	callq  3f <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x3f>
  3f:	48 29 c3             	sub    %rax,%rbx
  42:	48 89 da             	mov    %rbx,%rdx
  45:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  49:	48 39 c2             	cmp    %rax,%rdx
  4c:	0f 92 c0             	setb   %al
  4f:	84 c0                	test   %al,%al
  51:	74 0c                	je     5f <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x5f>
	  __throw_length_error(__N(__s));
  53:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  57:	48 89 c7             	mov    %rax,%rdi
  5a:	e8 00 00 00 00       	callq  5f <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x5f>

	const size_type __len = size() + std::max(size(), __n);
  5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  63:	48 89 c7             	mov    %rax,%rdi
  66:	e8 00 00 00 00       	callq  6b <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x6b>
  6b:	48 89 c3             	mov    %rax,%rbx
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	48 89 c7             	mov    %rax,%rdi
  75:	e8 00 00 00 00       	callq  7a <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x7a>
  7a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  7e:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  82:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  86:	48 89 d6             	mov    %rdx,%rsi
  89:	48 89 c7             	mov    %rax,%rdi
  8c:	e8 00 00 00 00       	callq  91 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0x91>
  91:	48 8b 00             	mov    (%rax),%rax
  94:	48 01 d8             	add    %rbx,%rax
  97:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  9b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xa7>
  a7:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  ab:	72 12                	jb     bf <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xbf>
  ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xb9>
  b9:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  bd:	76 0e                	jbe    cd <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xcd>
  bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xcb>
  cb:	eb 04                	jmp    d1 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xd1>
  cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  dc:	00 00 
  de:	74 05                	je     e5 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xe5>
  e0:	e8 00 00 00 00       	callq  e5 <_ZNKSt6vectorI8TriangleIfESaIS1_EE12_M_check_lenEmPKc+0xe5>
  e5:	48 83 c4 48          	add    $0x48,%rsp
  e9:	5b                   	pop    %rbx
  ea:	5d                   	pop    %rbp
  eb:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI8TriangleIfESaIS1_EE5beginEv:

0000000000000000 <_ZNSt6vectorI8TriangleIfESaIS1_EE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_start); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZNSt6vectorI8TriangleIfESaIS1_EE5beginEv+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZNSt6vectorI8TriangleIfESaIS1_EE5beginEv+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZNSt6vectorI8TriangleIfESaIS1_EE5beginEv+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxxmiIP8TriangleIfESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:

0000000000000000 <_ZN9__gnu_cxxmiIP8TriangleIfESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_>:
#endif
    { return __lhs.base() - __rhs.base(); }

  template<typename _Iterator, typename _Container>
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	      const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() - __rhs.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZN9__gnu_cxxmiIP8TriangleIfESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_+0x1d>
  1d:	48 8b 00             	mov    (%rax),%rax
  20:	48 89 c3             	mov    %rax,%rbx
  23:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZN9__gnu_cxxmiIP8TriangleIfESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_+0x2f>
  2f:	48 8b 00             	mov    (%rax),%rax
  32:	48 29 c3             	sub    %rax,%rbx
  35:	48 89 d8             	mov    %rbx,%rax
  38:	48 c1 f8 03          	sar    $0x3,%rax
  3c:	48 89 c2             	mov    %rax,%rdx
  3f:	48 b8 39 8e e3 38 8e 	movabs $0x8e38e38e38e38e39,%rax
  46:	e3 38 8e 
  49:	48 0f af c2          	imul   %rdx,%rax
  4d:	48 83 c4 18          	add    $0x18,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EE11_M_allocateEm:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  10:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  15:	74 15                	je     2c <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE11_M_allocateEm+0x2c>
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1f:	48 89 d6             	mov    %rdx,%rsi
  22:	48 89 c7             	mov    %rax,%rdi
  25:	e8 00 00 00 00       	callq  2a <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE11_M_allocateEm+0x2a>
  2a:	eb 05                	jmp    31 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE11_M_allocateEm+0x31>
  2c:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  31:	c9                   	leaveq 
  32:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx17__normal_iteratorIP8TriangleIfESt6vectorIS2_SaIS2_EEE4baseEv:

0000000000000000 <_ZNK9__gnu_cxx17__normal_iteratorIP8TriangleIfESt6vectorIS2_SaIS2_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt34__uninitialized_move_if_noexcept_aIP8TriangleIfES2_SaIS1_EET0_T_S5_S4_RT1_:

0000000000000000 <_ZSt34__uninitialized_move_if_noexcept_aIP8TriangleIfES2_SaIS1_EET0_T_S5_S4_RT1_>:
    }

  template<typename _InputIterator, typename _ForwardIterator,
	   typename _Allocator>
    inline _ForwardIterator
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  15:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
				       _InputIterator __last,
				       _ForwardIterator __result,
				       _Allocator& __alloc)
    {
      return std::__uninitialized_copy_a
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 89 c7             	mov    %rax,%rdi
  20:	e8 00 00 00 00       	callq  25 <_ZSt34__uninitialized_move_if_noexcept_aIP8TriangleIfES2_SaIS1_EET0_T_S5_S4_RT1_+0x25>
  25:	48 89 c3             	mov    %rax,%rbx
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	callq  34 <_ZSt34__uninitialized_move_if_noexcept_aIP8TriangleIfES2_SaIS1_EET0_T_S5_S4_RT1_+0x34>
  34:	48 89 c7             	mov    %rax,%rdi
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
  37:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3f:	48 89 d1             	mov    %rdx,%rcx
  42:	48 89 c2             	mov    %rax,%rdx
  45:	48 89 de             	mov    %rbx,%rsi
  48:	e8 00 00 00 00       	callq  4d <_ZSt34__uninitialized_move_if_noexcept_aIP8TriangleIfES2_SaIS1_EET0_T_S5_S4_RT1_+0x4d>
    }
  4d:	48 83 c4 28          	add    $0x28,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI8TriangleIfEEE7destroyIS1_EEvRS2_PT_:

0000000000000000 <_ZNSt16allocator_traitsISaI8TriangleIfEEE7destroyIS1_EEvRS2_PT_>:
       *
       *  Calls @c __a.destroy(__p).
      */
      template<typename _Up>
	static void
	destroy(allocator_type& __a, _Up* __p)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	{ __a.destroy(__p); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt16allocator_traitsISaI8TriangleIfEEE7destroyIS1_EEvRS2_PT_+0x23>
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EE13_M_deallocateEPS1_m:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE13_M_deallocateEPS1_m>:
      _M_deallocate(pointer __p, size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
  14:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  19:	74 17                	je     32 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE13_M_deallocateEPS1_m+0x32>
	  _Tr::deallocate(_M_impl, __p, __n);
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 89 ce             	mov    %rcx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE13_M_deallocateEPS1_m+0x32>
      }
  32:	90                   	nop
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightE9constructIS1_JRKS1_EEEvPT_DpOT0_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightE9constructIS1_JRKS1_EEEvPT_DpOT0_>:
	construct(_Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	callq  21 <_ZN9__gnu_cxx13new_allocatorI5LightE9constructIS1_JRKS1_EEEvPT_DpOT0_+0x21>
  21:	48 89 c3             	mov    %rax,%rbx
  24:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  28:	48 89 c6             	mov    %rax,%rsi
  2b:	bf 18 00 00 00       	mov    $0x18,%edi
  30:	e8 00 00 00 00       	callq  35 <_ZN9__gnu_cxx13new_allocatorI5LightE9constructIS1_JRKS1_EEEvPT_DpOT0_+0x35>
  35:	48 89 c1             	mov    %rax,%rcx
  38:	48 85 c9             	test   %rcx,%rcx
  3b:	74 16                	je     53 <_ZN9__gnu_cxx13new_allocatorI5LightE9constructIS1_JRKS1_EEEvPT_DpOT0_+0x53>
  3d:	48 8b 03             	mov    (%rbx),%rax
  40:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  44:	48 89 01             	mov    %rax,(%rcx)
  47:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  4b:	48 8b 43 10          	mov    0x10(%rbx),%rax
  4f:	48 89 41 10          	mov    %rax,0x10(%rcx)
  53:	90                   	nop
  54:	48 83 c4 28          	add    $0x28,%rsp
  58:	5b                   	pop    %rbx
  59:	5d                   	pop    %rbp
  5a:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc:

0000000000000000 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 48          	sub    $0x48,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  11:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
	if (max_size() - size() < __n)
  24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x30>
  30:	48 89 c3             	mov    %rax,%rbx
  33:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	e8 00 00 00 00       	callq  3f <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x3f>
  3f:	48 29 c3             	sub    %rax,%rbx
  42:	48 89 da             	mov    %rbx,%rdx
  45:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  49:	48 39 c2             	cmp    %rax,%rdx
  4c:	0f 92 c0             	setb   %al
  4f:	84 c0                	test   %al,%al
  51:	74 0c                	je     5f <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x5f>
	  __throw_length_error(__N(__s));
  53:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  57:	48 89 c7             	mov    %rax,%rdi
  5a:	e8 00 00 00 00       	callq  5f <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x5f>
	const size_type __len = size() + std::max(size(), __n);
  5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  63:	48 89 c7             	mov    %rax,%rdi
  66:	e8 00 00 00 00       	callq  6b <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x6b>
  6b:	48 89 c3             	mov    %rax,%rbx
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	48 89 c7             	mov    %rax,%rdi
  75:	e8 00 00 00 00       	callq  7a <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x7a>
  7a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  7e:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  82:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  86:	48 89 d6             	mov    %rdx,%rsi
  89:	48 89 c7             	mov    %rax,%rdi
  8c:	e8 00 00 00 00       	callq  91 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0x91>
  91:	48 8b 00             	mov    (%rax),%rax
  94:	48 01 d8             	add    %rbx,%rax
  97:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  9b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xa7>
  a7:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  ab:	72 12                	jb     bf <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xbf>
  ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xb9>
  b9:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  bd:	76 0e                	jbe    cd <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xcd>
  bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xcb>
  cb:	eb 04                	jmp    d1 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xd1>
  cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  dc:	00 00 
  de:	74 05                	je     e5 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xe5>
  e0:	e8 00 00 00 00       	callq  e5 <_ZNKSt6vectorI5LightSaIS0_EE12_M_check_lenEmPKc+0xe5>
  e5:	48 83 c4 48          	add    $0x48,%rsp
  e9:	5b                   	pop    %rbx
  ea:	5d                   	pop    %rbp
  eb:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxxmiIP5LightSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:

0000000000000000 <_ZN9__gnu_cxxmiIP5LightSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_>:
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __lhs.base() - __rhs.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZN9__gnu_cxxmiIP5LightSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_+0x1d>
  1d:	48 8b 00             	mov    (%rax),%rax
  20:	48 89 c3             	mov    %rax,%rbx
  23:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZN9__gnu_cxxmiIP5LightSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_+0x2f>
  2f:	48 8b 00             	mov    (%rax),%rax
  32:	48 29 c3             	sub    %rax,%rbx
  35:	48 89 d8             	mov    %rbx,%rax
  38:	48 c1 f8 03          	sar    $0x3,%rax
  3c:	48 89 c2             	mov    %rax,%rdx
  3f:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  46:	aa aa aa 
  49:	48 0f af c2          	imul   %rdx,%rax
  4d:	48 83 c4 18          	add    $0x18,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EE11_M_allocateEm:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  10:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  15:	74 15                	je     2c <_ZNSt12_Vector_baseI5LightSaIS0_EE11_M_allocateEm+0x2c>
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1f:	48 89 d6             	mov    %rdx,%rsi
  22:	48 89 c7             	mov    %rax,%rdi
  25:	e8 00 00 00 00       	callq  2a <_ZNSt12_Vector_baseI5LightSaIS0_EE11_M_allocateEm+0x2a>
  2a:	eb 05                	jmp    31 <_ZNSt12_Vector_baseI5LightSaIS0_EE11_M_allocateEm+0x31>
  2c:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  31:	c9                   	leaveq 
  32:	c3                   	retq   

Disassembly of section .text._ZSt34__uninitialized_move_if_noexcept_aIP5LightS1_SaIS0_EET0_T_S4_S3_RT1_:

0000000000000000 <_ZSt34__uninitialized_move_if_noexcept_aIP5LightS1_SaIS0_EET0_T_S4_S3_RT1_>:
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  15:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 89 c7             	mov    %rax,%rdi
  20:	e8 00 00 00 00       	callq  25 <_ZSt34__uninitialized_move_if_noexcept_aIP5LightS1_SaIS0_EET0_T_S4_S3_RT1_+0x25>
  25:	48 89 c3             	mov    %rax,%rbx
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	callq  34 <_ZSt34__uninitialized_move_if_noexcept_aIP5LightS1_SaIS0_EET0_T_S4_S3_RT1_+0x34>
  34:	48 89 c7             	mov    %rax,%rdi
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
  37:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3f:	48 89 d1             	mov    %rdx,%rcx
  42:	48 89 c2             	mov    %rax,%rdx
  45:	48 89 de             	mov    %rbx,%rsi
  48:	e8 00 00 00 00       	callq  4d <_ZSt34__uninitialized_move_if_noexcept_aIP5LightS1_SaIS0_EET0_T_S4_S3_RT1_+0x4d>
    }
  4d:	48 83 c4 28          	add    $0x28,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI5LightEE7destroyIS0_EEvRS1_PT_:

0000000000000000 <_ZNSt16allocator_traitsISaI5LightEE7destroyIS0_EEvRS1_PT_>:
	destroy(allocator_type& __a, _Up* __p)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	{ __a.destroy(__p); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt16allocator_traitsISaI5LightEE7destroyIS0_EEvRS1_PT_+0x23>
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EE13_M_deallocateEPS0_m:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EE13_M_deallocateEPS0_m>:
      _M_deallocate(pointer __p, size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
  14:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  19:	74 17                	je     32 <_ZNSt12_Vector_baseI5LightSaIS0_EE13_M_deallocateEPS0_m+0x32>
	  _Tr::deallocate(_M_impl, __p, __n);
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 89 ce             	mov    %rcx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt12_Vector_baseI5LightSaIS0_EE13_M_deallocateEPS0_m+0x32>
      }
  32:	90                   	nop
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implC2Ev:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implC1Ev>:
	_Vector_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE12_Vector_implC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  2e:	00 
  2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  33:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  3a:	00 
	{ }
  3b:	90                   	nop
  3c:	c9                   	leaveq 
  3d:	c3                   	retq   

Disassembly of section .text._ZNSaIP8TriangleIfEED2Ev:

0000000000000000 <_ZNSaIP8TriangleIfEED1Ev>:
      : __allocator_base<_Tp>(__a) { }

      template<typename _Tp1>
	allocator(const allocator<_Tp1>&) throw() { }

      ~allocator() throw() { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaIP8TriangleIfEED1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE13_M_deallocateEPS2_m:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE13_M_deallocateEPS2_m>:
      _M_deallocate(pointer __p, size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
  14:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  19:	74 17                	je     32 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE13_M_deallocateEPS2_m+0x32>
	  _Tr::deallocate(_M_impl, __p, __n);
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 89 ce             	mov    %rcx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE13_M_deallocateEPS2_m+0x32>
      }
  32:	90                   	nop
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIPP8TriangleIfEEvT_S4_:

0000000000000000 <_ZSt8_DestroyIPP8TriangleIfEEvT_S4_>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	__destroy(__first, __last);
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZSt8_DestroyIPP8TriangleIfEEvT_S4_+0x23>
    }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaIP8TriangleIfEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_:

0000000000000000 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_>:
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
  14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_+0x20>
  20:	48 89 c2             	mov    %rax,%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2b:	48 89 ce             	mov    %rcx,%rsi
  2e:	48 89 c7             	mov    %rax,%rdi
  31:	e8 00 00 00 00       	callq  36 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_+0x36>
  36:	90                   	nop
  37:	c9                   	leaveq 
  38:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EE3endEv:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE3endEv>:
      end() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_finish); }
  1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1f:	48 8d 50 08          	lea    0x8(%rax),%rdx
  23:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  27:	48 89 d6             	mov    %rdx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt6vectorIP8TriangleIfESaIS2_EE3endEv+0x32>
  32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  36:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  3a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  41:	00 00 
  43:	74 05                	je     4a <_ZNSt6vectorIP8TriangleIfESaIS2_EE3endEv+0x4a>
  45:	e8 00 00 00 00       	callq  4a <_ZNSt6vectorIP8TriangleIfESaIS2_EE3endEv+0x4a>
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_>:
      vector<_Tp, _Alloc>::
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 50          	sub    $0x50,%rsp
   b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   f:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  13:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1e:	00 00 
  20:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  24:	31 c0                	xor    %eax,%eax
      const size_type __len =
  26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  2a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 31 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x31>
  31:	be 01 00 00 00       	mov    $0x1,%esi
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x3e>
  3e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      const size_type __elems_before = __position - begin();
  42:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  46:	48 89 c7             	mov    %rax,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x4e>
  4e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  52:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  56:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  5a:	48 89 d6             	mov    %rdx,%rsi
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x65>
  65:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __new_start(this->_M_allocate(__len));
  69:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  6d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  71:	48 89 d6             	mov    %rdx,%rsi
  74:	48 89 c7             	mov    %rax,%rdi
  77:	e8 00 00 00 00       	callq  7c <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x7c>
  7c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __new_finish(__new_start);
  80:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  84:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  _Alloc_traits::construct(this->_M_impl,
  88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	callq  94 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x94>
  94:	48 89 c6             	mov    %rax,%rsi
				   __new_start + __elems_before,
  97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  9b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  a2:	00 
	  _Alloc_traits::construct(this->_M_impl,
  a3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  a7:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  ab:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  af:	48 89 f2             	mov    %rsi,%rdx
  b2:	48 89 ce             	mov    %rcx,%rsi
  b5:	48 89 c7             	mov    %rax,%rdi
  b8:	e8 00 00 00 00       	callq  bd <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xbd>
	  __new_finish = pointer();
  bd:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  c4:	00 
	     __new_start, _M_get_Tp_allocator());
  c5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  c9:	48 89 c7             	mov    %rax,%rdi
  cc:	e8 00 00 00 00       	callq  d1 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xd1>
  d1:	48 89 c3             	mov    %rax,%rbx
	    (this->_M_impl._M_start, __position.base(),
  d4:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  d8:	48 89 c7             	mov    %rax,%rdi
  db:	e8 00 00 00 00       	callq  e0 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xe0>
  e0:	48 8b 30             	mov    (%rax),%rsi
  e3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  e7:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
  ea:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  ee:	48 89 d9             	mov    %rbx,%rcx
  f1:	48 89 c7             	mov    %rax,%rdi
  f4:	e8 00 00 00 00       	callq  f9 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0xf9>
  f9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	  ++__new_finish;
  fd:	48 83 45 c8 08       	addq   $0x8,-0x38(%rbp)
	     __new_finish, _M_get_Tp_allocator());
 102:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 106:	48 89 c7             	mov    %rax,%rdi
 109:	e8 00 00 00 00       	callq  10e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x10e>
 10e:	49 89 c4             	mov    %rax,%r12
	    (__position.base(), this->_M_impl._M_finish,
 111:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 115:	48 8b 58 08          	mov    0x8(%rax),%rbx
 119:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 11d:	48 89 c7             	mov    %rax,%rdi
 120:	e8 00 00 00 00       	callq  125 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x125>
 125:	48 8b 00             	mov    (%rax),%rax
	  __new_finish
 128:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 12c:	4c 89 e1             	mov    %r12,%rcx
 12f:	48 89 de             	mov    %rbx,%rsi
 132:	48 89 c7             	mov    %rax,%rdi
 135:	e8 00 00 00 00       	callq  13a <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x13a>
 13a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
		    _M_get_Tp_allocator());
 13e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 142:	48 89 c7             	mov    %rax,%rdi
 145:	e8 00 00 00 00       	callq  14a <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x14a>
 14a:	48 89 c2             	mov    %rax,%rdx
      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 14d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 151:	48 8b 48 08          	mov    0x8(%rax),%rcx
 155:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 159:	48 8b 00             	mov    (%rax),%rax
 15c:	48 89 ce             	mov    %rcx,%rsi
 15f:	48 89 c7             	mov    %rax,%rdi
 162:	e8 00 00 00 00       	callq  167 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x167>
      _M_deallocate(this->_M_impl._M_start,
 167:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
		    this->_M_impl._M_end_of_storage
 16b:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 16f:	48 8b 52 10          	mov    0x10(%rdx),%rdx
		    - this->_M_impl._M_start);
 173:	48 89 d1             	mov    %rdx,%rcx
 176:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 17a:	48 8b 12             	mov    (%rdx),%rdx
 17d:	48 29 d1             	sub    %rdx,%rcx
 180:	48 89 ca             	mov    %rcx,%rdx
 183:	48 c1 fa 03          	sar    $0x3,%rdx
      _M_deallocate(this->_M_impl._M_start,
 187:	48 89 d6             	mov    %rdx,%rsi
 18a:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 18e:	48 8b 0a             	mov    (%rdx),%rcx
 191:	48 89 f2             	mov    %rsi,%rdx
 194:	48 89 ce             	mov    %rcx,%rsi
 197:	48 89 c7             	mov    %rax,%rdi
 19a:	e8 00 00 00 00       	callq  19f <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x19f>
      this->_M_impl._M_start = __new_start;
 19f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1a3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 1a7:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
 1aa:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1ae:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
 1b2:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
 1b6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 1ba:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 1c1:	00 
 1c2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 1c6:	48 01 c2             	add    %rax,%rdx
 1c9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 1cd:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
 1d1:	90                   	nop
 1d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1d6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1dd:	00 00 
 1df:	0f 84 8e 00 00 00    	je     273 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x273>
 1e5:	e9 84 00 00 00       	jmpq   26e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x26e>
      __catch(...)
 1ea:	48 89 c7             	mov    %rax,%rdi
 1ed:	e8 00 00 00 00       	callq  1f2 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x1f2>
	  if (!__new_finish)
 1f2:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
 1f7:	75 24                	jne    21d <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x21d>
				   __new_start + __elems_before);
 1f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1fd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 204:	00 
	    _Alloc_traits::destroy(this->_M_impl,
 205:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 209:	48 01 c2             	add    %rax,%rdx
 20c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 210:	48 89 d6             	mov    %rdx,%rsi
 213:	48 89 c7             	mov    %rax,%rdi
 216:	e8 00 00 00 00       	callq  21b <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x21b>
 21b:	eb 22                	jmp    23f <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x23f>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
 21d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 221:	48 89 c7             	mov    %rax,%rdi
 224:	e8 00 00 00 00       	callq  229 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x229>
 229:	48 89 c2             	mov    %rax,%rdx
 22c:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 230:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 234:	48 89 ce             	mov    %rcx,%rsi
 237:	48 89 c7             	mov    %rax,%rdi
 23a:	e8 00 00 00 00       	callq  23f <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x23f>
	  _M_deallocate(__new_start, __len);
 23f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 243:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
 247:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
 24b:	48 89 ce             	mov    %rcx,%rsi
 24e:	48 89 c7             	mov    %rax,%rdi
 251:	e8 00 00 00 00       	callq  256 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x256>
	  __throw_exception_again;
 256:	e8 00 00 00 00       	callq  25b <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x25b>
 25b:	48 89 c3             	mov    %rax,%rbx
      __catch(...)
 25e:	e8 00 00 00 00       	callq  263 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x263>
 263:	48 89 d8             	mov    %rbx,%rax
 266:	48 89 c7             	mov    %rax,%rdi
 269:	e8 00 00 00 00       	callq  26e <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x26e>
    }
 26e:	e8 00 00 00 00       	callq  273 <_ZNSt6vectorIP8TriangleIfESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x273>
 273:	48 83 c4 50          	add    $0x50,%rsp
 277:	5b                   	pop    %rbx
 278:	41 5c                	pop    %r12
 27a:	5d                   	pop    %rbp
 27b:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implC1Ev>:
	_Vector_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE12_Vector_implC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  2e:	00 
  2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  33:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  3a:	00 
	{ }
  3b:	90                   	nop
  3c:	c9                   	leaveq 
  3d:	c3                   	retq   

Disassembly of section .text._ZNSaI6VectorIfLm3EEED2Ev:

0000000000000000 <_ZNSaI6VectorIfLm3EEED1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI6VectorIfLm3EEED1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE13_M_deallocateEPS1_m:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE13_M_deallocateEPS1_m>:
      _M_deallocate(pointer __p, size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
  14:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  19:	74 17                	je     32 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE13_M_deallocateEPS1_m+0x32>
	  _Tr::deallocate(_M_impl, __p, __n);
  1b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  23:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  27:	48 89 ce             	mov    %rcx,%rsi
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE13_M_deallocateEPS1_m+0x32>
      }
  32:	90                   	nop
  33:	c9                   	leaveq 
  34:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP6VectorIfLm3EEEvT_S3_:

0000000000000000 <_ZSt8_DestroyIP6VectorIfLm3EEEvT_S3_>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	__destroy(__first, __last);
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZSt8_DestroyIP6VectorIfLm3EEEvT_S3_+0x23>
    }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE9constructIS2_JRKS2_EEEvPT_DpOT0_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE9constructIS2_JRKS2_EEEvPT_DpOT0_>:
	construct(_Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	callq  21 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x21>
  21:	48 89 c3             	mov    %rax,%rbx
  24:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  28:	48 89 c6             	mov    %rax,%rsi
  2b:	bf 0c 00 00 00       	mov    $0xc,%edi
  30:	e8 00 00 00 00       	callq  35 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x35>
  35:	48 85 c0             	test   %rax,%rax
  38:	74 0c                	je     46 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE9constructIS2_JRKS2_EEEvPT_DpOT0_+0x46>
  3a:	48 8b 13             	mov    (%rbx),%rdx
  3d:	48 89 10             	mov    %rdx,(%rax)
  40:	8b 53 08             	mov    0x8(%rbx),%edx
  43:	89 50 08             	mov    %edx,0x8(%rax)
  46:	90                   	nop
  47:	48 83 c4 28          	add    $0x28,%rsp
  4b:	5b                   	pop    %rbx
  4c:	5d                   	pop    %rbp
  4d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx17__normal_iteratorIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEC2ERKS3_:

0000000000000000 <_ZN9__gnu_cxx17__normal_iteratorIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEC1ERKS3_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc:

0000000000000000 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 48          	sub    $0x48,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  11:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
	if (max_size() - size() < __n)
  24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x30>
  30:	48 89 c3             	mov    %rax,%rbx
  33:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	e8 00 00 00 00       	callq  3f <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x3f>
  3f:	48 29 c3             	sub    %rax,%rbx
  42:	48 89 da             	mov    %rbx,%rdx
  45:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  49:	48 39 c2             	cmp    %rax,%rdx
  4c:	0f 92 c0             	setb   %al
  4f:	84 c0                	test   %al,%al
  51:	74 0c                	je     5f <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x5f>
	  __throw_length_error(__N(__s));
  53:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  57:	48 89 c7             	mov    %rax,%rdi
  5a:	e8 00 00 00 00       	callq  5f <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x5f>
	const size_type __len = size() + std::max(size(), __n);
  5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  63:	48 89 c7             	mov    %rax,%rdi
  66:	e8 00 00 00 00       	callq  6b <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x6b>
  6b:	48 89 c3             	mov    %rax,%rbx
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	48 89 c7             	mov    %rax,%rdi
  75:	e8 00 00 00 00       	callq  7a <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x7a>
  7a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  7e:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  82:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  86:	48 89 d6             	mov    %rdx,%rsi
  89:	48 89 c7             	mov    %rax,%rdi
  8c:	e8 00 00 00 00       	callq  91 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0x91>
  91:	48 8b 00             	mov    (%rax),%rax
  94:	48 01 d8             	add    %rbx,%rax
  97:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  9b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xa7>
  a7:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  ab:	72 12                	jb     bf <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xbf>
  ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xb9>
  b9:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  bd:	76 0e                	jbe    cd <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xcd>
  bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xcb>
  cb:	eb 04                	jmp    d1 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xd1>
  cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  dc:	00 00 
  de:	74 05                	je     e5 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xe5>
  e0:	e8 00 00 00 00       	callq  e5 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE12_M_check_lenEmPKc+0xe5>
  e5:	48 83 c4 48          	add    $0x48,%rsp
  e9:	5b                   	pop    %rbx
  ea:	5d                   	pop    %rbp
  eb:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorI6VectorIfLm3EESaIS1_EE5beginEv:

0000000000000000 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_start); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE5beginEv+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE5beginEv+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZNSt6vectorI6VectorIfLm3EESaIS1_EE5beginEv+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxxmiIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:

0000000000000000 <_ZN9__gnu_cxxmiIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_>:
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __lhs.base() - __rhs.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZN9__gnu_cxxmiIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_+0x1d>
  1d:	48 8b 00             	mov    (%rax),%rax
  20:	48 89 c3             	mov    %rax,%rbx
  23:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZN9__gnu_cxxmiIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_+0x2f>
  2f:	48 8b 00             	mov    (%rax),%rax
  32:	48 29 c3             	sub    %rax,%rbx
  35:	48 89 d8             	mov    %rbx,%rax
  38:	48 c1 f8 02          	sar    $0x2,%rax
  3c:	48 89 c2             	mov    %rax,%rdx
  3f:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  46:	aa aa aa 
  49:	48 0f af c2          	imul   %rdx,%rax
  4d:	48 83 c4 18          	add    $0x18,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE11_M_allocateEm:

0000000000000000 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  10:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  15:	74 15                	je     2c <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE11_M_allocateEm+0x2c>
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1f:	48 89 d6             	mov    %rdx,%rsi
  22:	48 89 c7             	mov    %rax,%rdi
  25:	e8 00 00 00 00       	callq  2a <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE11_M_allocateEm+0x2a>
  2a:	eb 05                	jmp    31 <_ZNSt12_Vector_baseI6VectorIfLm3EESaIS1_EE11_M_allocateEm+0x31>
  2c:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  31:	c9                   	leaveq 
  32:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx17__normal_iteratorIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEE4baseEv:

0000000000000000 <_ZNK9__gnu_cxx17__normal_iteratorIP6VectorIfLm3EESt6vectorIS2_SaIS2_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt34__uninitialized_move_if_noexcept_aIP6VectorIfLm3EES2_SaIS1_EET0_T_S5_S4_RT1_:

0000000000000000 <_ZSt34__uninitialized_move_if_noexcept_aIP6VectorIfLm3EES2_SaIS1_EET0_T_S5_S4_RT1_>:
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  15:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 89 c7             	mov    %rax,%rdi
  20:	e8 00 00 00 00       	callq  25 <_ZSt34__uninitialized_move_if_noexcept_aIP6VectorIfLm3EES2_SaIS1_EET0_T_S5_S4_RT1_+0x25>
  25:	48 89 c3             	mov    %rax,%rbx
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	callq  34 <_ZSt34__uninitialized_move_if_noexcept_aIP6VectorIfLm3EES2_SaIS1_EET0_T_S5_S4_RT1_+0x34>
  34:	48 89 c7             	mov    %rax,%rdi
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
  37:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3f:	48 89 d1             	mov    %rdx,%rcx
  42:	48 89 c2             	mov    %rax,%rdx
  45:	48 89 de             	mov    %rbx,%rsi
  48:	e8 00 00 00 00       	callq  4d <_ZSt34__uninitialized_move_if_noexcept_aIP6VectorIfLm3EES2_SaIS1_EET0_T_S5_S4_RT1_+0x4d>
    }
  4d:	48 83 c4 28          	add    $0x28,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI6VectorIfLm3EEEE7destroyIS1_EEvRS2_PT_:

0000000000000000 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE7destroyIS1_EEvRS2_PT_>:
	destroy(allocator_type& __a, _Up* __p)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	{ __a.destroy(__p); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE7destroyIS1_EEvRS2_PT_+0x23>
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implC1Ev>:
	_Vector_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI8TriangleIfESaIS1_EE12_Vector_implC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  2e:	00 
  2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  33:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  3a:	00 
	{ }
  3b:	90                   	nop
  3c:	c9                   	leaveq 
  3d:	c3                   	retq   

Disassembly of section .text._ZNSaI8TriangleIfEED2Ev:

0000000000000000 <_ZNSaI8TriangleIfEED1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI8TriangleIfEED1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP8TriangleIfEEvT_S3_:

0000000000000000 <_ZSt8_DestroyIP8TriangleIfEEvT_S3_>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	__destroy(__first, __last);
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZSt8_DestroyIP8TriangleIfEEvT_S3_+0x23>
    }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implC2Ev:

0000000000000000 <_ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implC1Ev>:
	_Vector_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt12_Vector_baseI5LightSaIS0_EE12_Vector_implC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  27:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  2e:	00 
  2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  33:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  3a:	00 
	{ }
  3b:	90                   	nop
  3c:	c9                   	leaveq 
  3d:	c3                   	retq   

Disassembly of section .text._ZNSaI5LightED2Ev:

0000000000000000 <_ZNSaI5LightED1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI5LightED1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZSt8_DestroyIP5LightEvT_S2_:

0000000000000000 <_ZSt8_DestroyIP5LightEvT_S2_>:
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	__destroy(__first, __last);
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZSt8_DestroyIP5LightEvT_S2_+0x23>
    }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEEC2Ev:

0000000000000000 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEEC1Ev>:
      constexpr _Tuple_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Inherited(), _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEEC1Ev+0x18>
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 c7             	mov    %rax,%rdi
  1f:	e8 00 00 00 00       	callq  24 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEEC1Ev+0x24>
  24:	90                   	nop
  25:	c9                   	leaveq 
  26:	c3                   	retq   

Disassembly of section .text._ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZSt3getILm1EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:

0000000000000000 <_ZSt3getILm1EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_>:
    get(tuple<_Elements...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt3getILm1EJP5ColorSt14default_deleteIA_S0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_:

0000000000000000 <_ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_>:

  /// Return a const reference to the ith element of a const tuple.
  template<std::size_t __i, typename... _Elements>
    constexpr const __tuple_element_t<__i, tuple<_Elements...>>&
    get(const tuple<_Elements...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__get_helper<__i>(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt3getILm0EJP5ColorSt14default_deleteIA_S0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI8TriangleIfESaIS1_EE8max_sizeEv:

0000000000000000 <_ZNKSt6vectorI8TriangleIfESaIS1_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt6vectorI8TriangleIfESaIS1_EE8max_sizeEv+0x18>
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNKSt6vectorI8TriangleIfESaIS1_EE8max_sizeEv+0x20>
  20:	c9                   	leaveq 
  21:	c3                   	retq   

Disassembly of section .text._ZSt3maxImERKT_S2_S2_:

0000000000000000 <_ZSt3maxImERKT_S2_S2_>:
    max(const _Tp& __a, const _Tp& __b)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      if (__a < __b)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  17:	48 8b 00             	mov    (%rax),%rax
  1a:	48 39 c2             	cmp    %rax,%rdx
  1d:	73 06                	jae    25 <_ZSt3maxImERKT_S2_S2_+0x25>
	return __b;
  1f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  23:	eb 04                	jmp    29 <_ZSt3maxImERKT_S2_S2_+0x29>
      return __a;
  25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  29:	5d                   	pop    %rbp
  2a:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI8TriangleIfEEE8allocateERS2_m:

0000000000000000 <_ZNSt16allocator_traitsISaI8TriangleIfEEE8allocateERS2_m>:
      allocate(allocator_type& __a, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __a.allocate(__n); }
  10:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	ba 00 00 00 00       	mov    $0x0,%edx
  1d:	48 89 ce             	mov    %rcx,%rsi
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNSt16allocator_traitsISaI8TriangleIfEEE8allocateERS2_m+0x28>
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt32__make_move_if_noexcept_iteratorI8TriangleIfESt13move_iteratorIPS1_EET0_PT_:

0000000000000000 <_ZSt32__make_move_if_noexcept_iteratorI8TriangleIfESt13move_iteratorIPS1_EET0_PT_>:
  // returning a constant iterator when we don't want to move.
  template<typename _Tp, typename _ReturnType
    = typename conditional<__move_if_noexcept_cond<_Tp>::value,
			   const _Tp*, move_iterator<_Tp*>>::type>
    inline _GLIBCXX17_CONSTEXPR _ReturnType
    __make_move_if_noexcept_iterator(_Tp* __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    { return _ReturnType(__i); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZSt32__make_move_if_noexcept_iteratorI8TriangleIfESt13move_iteratorIPS1_EET0_PT_+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZSt32__make_move_if_noexcept_iteratorI8TriangleIfESt13move_iteratorIPS1_EET0_PT_+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZSt32__make_move_if_noexcept_iteratorI8TriangleIfESt13move_iteratorIPS1_EET0_PT_+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZSt22__uninitialized_copy_aISt13move_iteratorIP8TriangleIfEES3_S2_ET0_T_S6_S5_RSaIT1_E:

0000000000000000 <_ZSt22__uninitialized_copy_aISt13move_iteratorIP8TriangleIfEES3_S2_ET0_T_S6_S5_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  14:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    { return std::uninitialized_copy(__first, __last, __result); }
  18:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt22__uninitialized_copy_aISt13move_iteratorIP8TriangleIfEES3_S2_ET0_T_S6_S5_RSaIT1_E+0x2f>
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEE7destroyIS2_EEvPT_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE7destroyIS2_EEvPT_>:

      template<typename _Up>
	void
	destroy(_Up* __p) { __p->~_Up(); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI8TriangleIfEEE10deallocateERS2_PS1_m:

0000000000000000 <_ZNSt16allocator_traitsISaI8TriangleIfEEE10deallocateERS2_PS1_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  14:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 ce             	mov    %rcx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt16allocator_traitsISaI8TriangleIfEEE10deallocateERS2_PS1_m+0x2b>
  2b:	90                   	nop
  2c:	c9                   	leaveq 
  2d:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI5LightSaIS0_EE8max_sizeEv:

0000000000000000 <_ZNKSt6vectorI5LightSaIS0_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt6vectorI5LightSaIS0_EE8max_sizeEv+0x18>
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNKSt6vectorI5LightSaIS0_EE8max_sizeEv+0x20>
  20:	c9                   	leaveq 
  21:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI5LightEE8allocateERS1_m:

0000000000000000 <_ZNSt16allocator_traitsISaI5LightEE8allocateERS1_m>:
      allocate(allocator_type& __a, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __a.allocate(__n); }
  10:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	ba 00 00 00 00       	mov    $0x0,%edx
  1d:	48 89 ce             	mov    %rcx,%rsi
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNSt16allocator_traitsISaI5LightEE8allocateERS1_m+0x28>
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt32__make_move_if_noexcept_iteratorI5LightSt13move_iteratorIPS0_EET0_PT_:

0000000000000000 <_ZSt32__make_move_if_noexcept_iteratorI5LightSt13move_iteratorIPS0_EET0_PT_>:
    __make_move_if_noexcept_iterator(_Tp* __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    { return _ReturnType(__i); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZSt32__make_move_if_noexcept_iteratorI5LightSt13move_iteratorIPS0_EET0_PT_+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZSt32__make_move_if_noexcept_iteratorI5LightSt13move_iteratorIPS0_EET0_PT_+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZSt32__make_move_if_noexcept_iteratorI5LightSt13move_iteratorIPS0_EET0_PT_+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZSt22__uninitialized_copy_aISt13move_iteratorIP5LightES2_S1_ET0_T_S5_S4_RSaIT1_E:

0000000000000000 <_ZSt22__uninitialized_copy_aISt13move_iteratorIP5LightES2_S1_ET0_T_S5_S4_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  14:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    { return std::uninitialized_copy(__first, __last, __result); }
  18:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt22__uninitialized_copy_aISt13move_iteratorIP5LightES2_S1_ET0_T_S5_S4_RSaIT1_E+0x2f>
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightE7destroyIS1_EEvPT_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightE7destroyIS1_EEvPT_>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI5LightEE10deallocateERS1_PS0_m:

0000000000000000 <_ZNSt16allocator_traitsISaI5LightEE10deallocateERS1_PS0_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  14:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 ce             	mov    %rcx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt16allocator_traitsISaI5LightEE10deallocateERS1_PS0_m+0x2b>
  2b:	90                   	nop
  2c:	c9                   	leaveq 
  2d:	c3                   	retq   

Disassembly of section .text._ZNSaIP8TriangleIfEEC2Ev:

0000000000000000 <_ZNSaIP8TriangleIfEEC1Ev>:
      allocator() throw() { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaIP8TriangleIfEEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEED2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEED1Ev>:
      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaIP8TriangleIfEEE10deallocateERS3_PS2_m:

0000000000000000 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE10deallocateERS3_PS2_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  14:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 ce             	mov    %rcx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt16allocator_traitsISaIP8TriangleIfEEE10deallocateERS3_PS2_m+0x2b>
  2b:	90                   	nop
  2c:	c9                   	leaveq 
  2d:	c3                   	retq   

Disassembly of section .text._ZNSt12_Destroy_auxILb1EE9__destroyIPP8TriangleIfEEEvT_S6_:

0000000000000000 <_ZNSt12_Destroy_auxILb1EE9__destroyIPP8TriangleIfEEEvT_S6_>:
        __destroy(_ForwardIterator, _ForwardIterator) { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE9constructIS3_JS3_EEEvPT_DpOT0_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE9constructIS3_JS3_EEEvPT_DpOT0_>:
	construct(_Up* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	callq  21 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE9constructIS3_JS3_EEEvPT_DpOT0_+0x21>
  21:	48 8b 18             	mov    (%rax),%rbx
  24:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  28:	48 89 c6             	mov    %rax,%rsi
  2b:	bf 08 00 00 00       	mov    $0x8,%edi
  30:	e8 00 00 00 00       	callq  35 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE9constructIS3_JS3_EEEvPT_DpOT0_+0x35>
  35:	48 85 c0             	test   %rax,%rax
  38:	74 03                	je     3d <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE9constructIS3_JS3_EEEvPT_DpOT0_+0x3d>
  3a:	48 89 18             	mov    %rbx,(%rax)
  3d:	90                   	nop
  3e:	48 83 c4 28          	add    $0x28,%rsp
  42:	5b                   	pop    %rbx
  43:	5d                   	pop    %rbp
  44:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx17__normal_iteratorIPP8TriangleIfESt6vectorIS3_SaIS3_EEEC2ERKS4_:

0000000000000000 <_ZN9__gnu_cxx17__normal_iteratorIPP8TriangleIfESt6vectorIS3_SaIS3_EEEC1ERKS4_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc:

0000000000000000 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 48          	sub    $0x48,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  11:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1c:	00 00 
  1e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  22:	31 c0                	xor    %eax,%eax
	if (max_size() - size() < __n)
  24:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x30>
  30:	48 89 c3             	mov    %rax,%rbx
  33:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	e8 00 00 00 00       	callq  3f <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x3f>
  3f:	48 29 c3             	sub    %rax,%rbx
  42:	48 89 da             	mov    %rbx,%rdx
  45:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  49:	48 39 c2             	cmp    %rax,%rdx
  4c:	0f 92 c0             	setb   %al
  4f:	84 c0                	test   %al,%al
  51:	74 0c                	je     5f <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x5f>
	  __throw_length_error(__N(__s));
  53:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  57:	48 89 c7             	mov    %rax,%rdi
  5a:	e8 00 00 00 00       	callq  5f <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x5f>
	const size_type __len = size() + std::max(size(), __n);
  5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  63:	48 89 c7             	mov    %rax,%rdi
  66:	e8 00 00 00 00       	callq  6b <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x6b>
  6b:	48 89 c3             	mov    %rax,%rbx
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	48 89 c7             	mov    %rax,%rdi
  75:	e8 00 00 00 00       	callq  7a <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x7a>
  7a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  7e:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  82:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  86:	48 89 d6             	mov    %rdx,%rsi
  89:	48 89 c7             	mov    %rax,%rdi
  8c:	e8 00 00 00 00       	callq  91 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0x91>
  91:	48 8b 00             	mov    (%rax),%rax
  94:	48 01 d8             	add    %rbx,%rax
  97:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  9b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xa7>
  a7:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  ab:	72 12                	jb     bf <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xbf>
  ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xb9>
  b9:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  bd:	76 0e                	jbe    cd <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xcd>
  bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xcb>
  cb:	eb 04                	jmp    d1 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xd1>
  cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  d1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  d5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  dc:	00 00 
  de:	74 05                	je     e5 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xe5>
  e0:	e8 00 00 00 00       	callq  e5 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE12_M_check_lenEmPKc+0xe5>
  e5:	48 83 c4 48          	add    $0x48,%rsp
  e9:	5b                   	pop    %rbx
  ea:	5d                   	pop    %rbp
  eb:	c3                   	retq   

Disassembly of section .text._ZNSt6vectorIP8TriangleIfESaIS2_EE5beginEv:

0000000000000000 <_ZNSt6vectorIP8TriangleIfESaIS2_EE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_start); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZNSt6vectorIP8TriangleIfESaIS2_EE5beginEv+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZNSt6vectorIP8TriangleIfESaIS2_EE5beginEv+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZNSt6vectorIP8TriangleIfESaIS2_EE5beginEv+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxxmiIPP8TriangleIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_:

0000000000000000 <_ZN9__gnu_cxxmiIPP8TriangleIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_>:
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __lhs.base() - __rhs.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZN9__gnu_cxxmiIPP8TriangleIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_+0x1d>
  1d:	48 8b 00             	mov    (%rax),%rax
  20:	48 89 c3             	mov    %rax,%rbx
  23:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZN9__gnu_cxxmiIPP8TriangleIfESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_+0x2f>
  2f:	48 8b 00             	mov    (%rax),%rax
  32:	48 29 c3             	sub    %rax,%rbx
  35:	48 89 d8             	mov    %rbx,%rax
  38:	48 c1 f8 03          	sar    $0x3,%rax
  3c:	48 83 c4 18          	add    $0x18,%rsp
  40:	5b                   	pop    %rbx
  41:	5d                   	pop    %rbp
  42:	c3                   	retq   

Disassembly of section .text._ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE11_M_allocateEm:

0000000000000000 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  10:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  15:	74 15                	je     2c <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE11_M_allocateEm+0x2c>
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  1f:	48 89 d6             	mov    %rdx,%rsi
  22:	48 89 c7             	mov    %rax,%rdi
  25:	e8 00 00 00 00       	callq  2a <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE11_M_allocateEm+0x2a>
  2a:	eb 05                	jmp    31 <_ZNSt12_Vector_baseIP8TriangleIfESaIS2_EE11_M_allocateEm+0x31>
  2c:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  31:	c9                   	leaveq 
  32:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx17__normal_iteratorIPP8TriangleIfESt6vectorIS3_SaIS3_EEE4baseEv:

0000000000000000 <_ZNK9__gnu_cxx17__normal_iteratorIPP8TriangleIfESt6vectorIS3_SaIS3_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt34__uninitialized_move_if_noexcept_aIPP8TriangleIfES3_SaIS2_EET0_T_S6_S5_RT1_:

0000000000000000 <_ZSt34__uninitialized_move_if_noexcept_aIPP8TriangleIfES3_SaIS2_EET0_T_S6_S5_RT1_>:
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  15:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
  19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  1d:	48 89 c7             	mov    %rax,%rdi
  20:	e8 00 00 00 00       	callq  25 <_ZSt34__uninitialized_move_if_noexcept_aIPP8TriangleIfES3_SaIS2_EET0_T_S6_S5_RT1_+0x25>
  25:	48 89 c3             	mov    %rax,%rbx
  28:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2c:	48 89 c7             	mov    %rax,%rdi
  2f:	e8 00 00 00 00       	callq  34 <_ZSt34__uninitialized_move_if_noexcept_aIPP8TriangleIfES3_SaIS2_EET0_T_S6_S5_RT1_+0x34>
  34:	48 89 c7             	mov    %rax,%rdi
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
  37:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3f:	48 89 d1             	mov    %rdx,%rcx
  42:	48 89 c2             	mov    %rax,%rdx
  45:	48 89 de             	mov    %rbx,%rsi
  48:	e8 00 00 00 00       	callq  4d <_ZSt34__uninitialized_move_if_noexcept_aIPP8TriangleIfES3_SaIS2_EET0_T_S6_S5_RT1_+0x4d>
    }
  4d:	48 83 c4 28          	add    $0x28,%rsp
  51:	5b                   	pop    %rbx
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaIP8TriangleIfEEE7destroyIS2_EEvRS3_PT_:

0000000000000000 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE7destroyIS2_EEvRS3_PT_>:
	destroy(allocator_type& __a, _Up* __p)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	{ __a.destroy(__p); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE7destroyIS2_EEvRS3_PT_+0x23>
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSaI6VectorIfLm3EEEC2Ev:

0000000000000000 <_ZNSaI6VectorIfLm3EEEC1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI6VectorIfLm3EEEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEED2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEED1Ev>:
      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI6VectorIfLm3EEEE10deallocateERS2_PS1_m:

0000000000000000 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE10deallocateERS2_PS1_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  14:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 ce             	mov    %rcx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE10deallocateERS2_PS1_m+0x2b>
  2b:	90                   	nop
  2c:	c9                   	leaveq 
  2d:	c3                   	retq   

Disassembly of section .text._ZNSt12_Destroy_auxILb1EE9__destroyIP6VectorIfLm3EEEEvT_S5_:

0000000000000000 <_ZNSt12_Destroy_auxILb1EE9__destroyIP6VectorIfLm3EEEEvT_S5_>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorI6VectorIfLm3EESaIS1_EE8max_sizeEv:

0000000000000000 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE8max_sizeEv+0x18>
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNKSt6vectorI6VectorIfLm3EESaIS1_EE8max_sizeEv+0x20>
  20:	c9                   	leaveq 
  21:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8allocateERS2_m:

0000000000000000 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8allocateERS2_m>:
      allocate(allocator_type& __a, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __a.allocate(__n); }
  10:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	ba 00 00 00 00       	mov    $0x0,%edx
  1d:	48 89 ce             	mov    %rcx,%rsi
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8allocateERS2_m+0x28>
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt32__make_move_if_noexcept_iteratorI6VectorIfLm3EESt13move_iteratorIPS1_EET0_PT_:

0000000000000000 <_ZSt32__make_move_if_noexcept_iteratorI6VectorIfLm3EESt13move_iteratorIPS1_EET0_PT_>:
    __make_move_if_noexcept_iterator(_Tp* __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    { return _ReturnType(__i); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZSt32__make_move_if_noexcept_iteratorI6VectorIfLm3EESt13move_iteratorIPS1_EET0_PT_+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZSt32__make_move_if_noexcept_iteratorI6VectorIfLm3EESt13move_iteratorIPS1_EET0_PT_+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZSt32__make_move_if_noexcept_iteratorI6VectorIfLm3EESt13move_iteratorIPS1_EET0_PT_+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZSt22__uninitialized_copy_aISt13move_iteratorIP6VectorIfLm3EEES3_S2_ET0_T_S6_S5_RSaIT1_E:

0000000000000000 <_ZSt22__uninitialized_copy_aISt13move_iteratorIP6VectorIfLm3EEES3_S2_ET0_T_S6_S5_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  14:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    { return std::uninitialized_copy(__first, __last, __result); }
  18:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt22__uninitialized_copy_aISt13move_iteratorIP6VectorIfLm3EEES3_S2_ET0_T_S6_S5_RSaIT1_E+0x2f>
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE7destroyIS2_EEvPT_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE7destroyIS2_EEvPT_>:
	destroy(_Up* __p) { __p->~_Up(); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNSaI8TriangleIfEEC2Ev:

0000000000000000 <_ZNSaI8TriangleIfEEC1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI8TriangleIfEEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEED2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEED1Ev>:
      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Destroy_auxILb1EE9__destroyIP8TriangleIfEEEvT_S5_:

0000000000000000 <_ZNSt12_Destroy_auxILb1EE9__destroyIP8TriangleIfEEEvT_S5_>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNSaI5LightEC2Ev:

0000000000000000 <_ZNSaI5LightEC1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSaI5LightEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightED2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightED1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt12_Destroy_auxILb1EE9__destroyIP5LightEEvT_S4_:

0000000000000000 <_ZNSt12_Destroy_auxILb1EE9__destroyIP5LightEEvT_S4_>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEEC2Ev:

0000000000000000 <_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEEC1Ev>:
      constexpr _Tuple_impl()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Base() { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEEC1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt10_Head_baseILm0EP5ColorLb0EEC2Ev:

0000000000000000 <_ZNSt10_Head_baseILm0EP5ColorLb0EEC1Ev>:
      constexpr _Head_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _M_head_impl() { }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  13:	90                   	nop
  14:	5d                   	pop    %rbp
  15:	c3                   	retq   

Disassembly of section .text._ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERS5_:

0000000000000000 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERS5_>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERS5_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZSt12__get_helperILm1ESt14default_deleteIA_5ColorEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm1ESt14default_deleteIA_5ColorEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE>:
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt12__get_helperILm1ESt14default_deleteIA_5ColorEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE:

0000000000000000 <_ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE>:
    __get_helper(const _Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt12__get_helperILm0EP5ColorJSt14default_deleteIA_S0_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI8TriangleIfEEE8max_sizeERKS2_:

0000000000000000 <_ZNSt16allocator_traitsISaI8TriangleIfEEE8max_sizeERKS2_>:
       *  @brief  The maximum supported allocation size
       *  @param  __a  An allocator.
       *  @return @c __a.max_size()
      */
      static size_type
      max_size(const allocator_type& __a) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return __a.max_size(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt16allocator_traitsISaI8TriangleIfEEE8max_sizeERKS2_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt12_Vector_baseI8TriangleIfESaIS1_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNKSt12_Vector_baseI8TriangleIfESaIS1_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->max_size())
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv+0x20>
  20:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  24:	0f 97 c0             	seta   %al
  27:	84 c0                	test   %al,%al
  29:	74 05                	je     30 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv+0x30>
	  std::__throw_bad_alloc();
  2b:	e8 00 00 00 00       	callq  30 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv+0x30>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  30:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  34:	48 89 d0             	mov    %rdx,%rax
  37:	48 c1 e0 03          	shl    $0x3,%rax
  3b:	48 01 d0             	add    %rdx,%rax
  3e:	48 c1 e0 03          	shl    $0x3,%rax
  42:	48 89 c7             	mov    %rax,%rdi
  45:	e8 00 00 00 00       	callq  4a <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE8allocateEmPKv+0x4a>
      }
  4a:	c9                   	leaveq 
  4b:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP8TriangleIfEEC2ES2_:

0000000000000000 <_ZNSt13move_iteratorIP8TriangleIfEEC1ES2_>:
      move_iterator(iterator_type __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 89 10             	mov    %rdx,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

Disassembly of section .text._ZSt18uninitialized_copyISt13move_iteratorIP8TriangleIfEES3_ET0_T_S6_S5_:

0000000000000000 <_ZSt18uninitialized_copyISt13move_iteratorIP8TriangleIfEES3_ET0_T_S6_S5_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
  14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_copy(__first, __last, __result);
  18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  1c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt18uninitialized_copyISt13move_iteratorIP8TriangleIfEES3_ET0_T_S6_S5_+0x2f>
    }
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEE10deallocateEPS2_m:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE10deallocateEPS2_m>:
      deallocate(pointer __p, size_type)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	::operator delete(__p);
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEE10deallocateEPS2_m+0x20>
      }
  20:	90                   	nop
  21:	c9                   	leaveq 
  22:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI5LightEE8max_sizeERKS1_:

0000000000000000 <_ZNSt16allocator_traitsISaI5LightEE8max_sizeERKS1_>:
      max_size(const allocator_type& __a) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return __a.max_size(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt16allocator_traitsISaI5LightEE8max_sizeERKS1_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt12_Vector_baseI5LightSaIS0_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNKSt12_Vector_baseI5LightSaIS0_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->max_size())
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv+0x20>
  20:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  24:	0f 97 c0             	seta   %al
  27:	84 c0                	test   %al,%al
  29:	74 05                	je     30 <_ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv+0x30>
	  std::__throw_bad_alloc();
  2b:	e8 00 00 00 00       	callq  30 <_ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv+0x30>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  30:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  34:	48 89 d0             	mov    %rdx,%rax
  37:	48 01 c0             	add    %rax,%rax
  3a:	48 01 d0             	add    %rdx,%rax
  3d:	48 c1 e0 03          	shl    $0x3,%rax
  41:	48 89 c7             	mov    %rax,%rdi
  44:	e8 00 00 00 00       	callq  49 <_ZN9__gnu_cxx13new_allocatorI5LightE8allocateEmPKv+0x49>
      }
  49:	c9                   	leaveq 
  4a:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP5LightEC2ES1_:

0000000000000000 <_ZNSt13move_iteratorIP5LightEC1ES1_>:
      move_iterator(iterator_type __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 89 10             	mov    %rdx,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

Disassembly of section .text._ZSt18uninitialized_copyISt13move_iteratorIP5LightES2_ET0_T_S5_S4_:

0000000000000000 <_ZSt18uninitialized_copyISt13move_iteratorIP5LightES2_ET0_T_S5_S4_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
  14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_copy(__first, __last, __result);
  18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  1c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt18uninitialized_copyISt13move_iteratorIP5LightES2_ET0_T_S5_S4_+0x2f>
    }
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightE10deallocateEPS1_m:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightE10deallocateEPS1_m>:
      deallocate(pointer __p, size_type)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	::operator delete(__p);
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI5LightE10deallocateEPS1_m+0x20>
      }
  20:	90                   	nop
  21:	c9                   	leaveq 
  22:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEEC2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEEC1Ev>:
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE10deallocateEPS3_m:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE10deallocateEPS3_m>:
      deallocate(pointer __p, size_type)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	::operator delete(__p);
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE10deallocateEPS3_m+0x20>
      }
  20:	90                   	nop
  21:	c9                   	leaveq 
  22:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorIP8TriangleIfESaIS2_EE8max_sizeEv:

0000000000000000 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE8max_sizeEv+0x18>
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE8max_sizeEv+0x20>
  20:	c9                   	leaveq 
  21:	c3                   	retq   

Disassembly of section .text._ZNKSt6vectorIP8TriangleIfESaIS2_EE4sizeEv:

0000000000000000 <_ZNKSt6vectorIP8TriangleIfESaIS2_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 08          	mov    0x8(%rax),%rax
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 8b 00             	mov    (%rax),%rax
  1a:	48 29 c2             	sub    %rax,%rdx
  1d:	48 89 d0             	mov    %rdx,%rax
  20:	48 c1 f8 03          	sar    $0x3,%rax
  24:	5d                   	pop    %rbp
  25:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaIP8TriangleIfEEE8allocateERS3_m:

0000000000000000 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE8allocateERS3_m>:
      allocate(allocator_type& __a, size_type __n)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __a.allocate(__n); }
  10:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	ba 00 00 00 00       	mov    $0x0,%edx
  1d:	48 89 ce             	mov    %rcx,%rsi
  20:	48 89 c7             	mov    %rax,%rdi
  23:	e8 00 00 00 00       	callq  28 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE8allocateERS3_m+0x28>
  28:	c9                   	leaveq 
  29:	c3                   	retq   

Disassembly of section .text._ZSt32__make_move_if_noexcept_iteratorIP8TriangleIfESt13move_iteratorIPS2_EET0_PT_:

0000000000000000 <_ZSt32__make_move_if_noexcept_iteratorIP8TriangleIfESt13move_iteratorIPS2_EET0_PT_>:
    __make_move_if_noexcept_iterator(_Tp* __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
    { return _ReturnType(__i); }
  1b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  23:	48 89 d6             	mov    %rdx,%rsi
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	callq  2e <_ZSt32__make_move_if_noexcept_iteratorIP8TriangleIfESt13move_iteratorIPS2_EET0_PT_+0x2e>
  2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  3d:	00 00 
  3f:	74 05                	je     46 <_ZSt32__make_move_if_noexcept_iteratorIP8TriangleIfESt13move_iteratorIPS2_EET0_PT_+0x46>
  41:	e8 00 00 00 00       	callq  46 <_ZSt32__make_move_if_noexcept_iteratorIP8TriangleIfESt13move_iteratorIPS2_EET0_PT_+0x46>
  46:	c9                   	leaveq 
  47:	c3                   	retq   

Disassembly of section .text._ZSt22__uninitialized_copy_aISt13move_iteratorIPP8TriangleIfEES4_S3_ET0_T_S7_S6_RSaIT1_E:

0000000000000000 <_ZSt22__uninitialized_copy_aISt13move_iteratorIPP8TriangleIfEES4_S3_ET0_T_S7_S6_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  14:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    { return std::uninitialized_copy(__first, __last, __result); }
  18:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  1c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt22__uninitialized_copy_aISt13move_iteratorIPP8TriangleIfEES4_S3_ET0_T_S7_S6_RSaIT1_E+0x2f>
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE7destroyIS3_EEvPT_:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE7destroyIS3_EEvPT_>:
	destroy(_Up* __p) { __p->~_Up(); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   c:	90                   	nop
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEEC2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEEC1Ev>:
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE10deallocateEPS2_m:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE10deallocateEPS2_m>:
      deallocate(pointer __p, size_type)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	::operator delete(__p);
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE10deallocateEPS2_m+0x20>
      }
  20:	90                   	nop
  21:	c9                   	leaveq 
  22:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8max_sizeERKS2_:

0000000000000000 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8max_sizeERKS2_>:
      max_size(const allocator_type& __a) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return __a.max_size(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt16allocator_traitsISaI6VectorIfLm3EEEE8max_sizeERKS2_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt12_Vector_baseI6VectorIfLm3EESaIS1_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNKSt12_Vector_baseI6VectorIfLm3EESaIS1_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->max_size())
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv+0x20>
  20:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  24:	0f 97 c0             	seta   %al
  27:	84 c0                	test   %al,%al
  29:	74 05                	je     30 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv+0x30>
	  std::__throw_bad_alloc();
  2b:	e8 00 00 00 00       	callq  30 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv+0x30>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  30:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  34:	48 89 d0             	mov    %rdx,%rax
  37:	48 01 c0             	add    %rax,%rax
  3a:	48 01 d0             	add    %rdx,%rax
  3d:	48 c1 e0 02          	shl    $0x2,%rax
  41:	48 89 c7             	mov    %rax,%rdi
  44:	e8 00 00 00 00       	callq  49 <_ZN9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8allocateEmPKv+0x49>
      }
  49:	c9                   	leaveq 
  4a:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP6VectorIfLm3EEEC2ES2_:

0000000000000000 <_ZNSt13move_iteratorIP6VectorIfLm3EEEC1ES2_>:
      move_iterator(iterator_type __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 89 10             	mov    %rdx,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

Disassembly of section .text._ZSt18uninitialized_copyISt13move_iteratorIP6VectorIfLm3EEES3_ET0_T_S6_S5_:

0000000000000000 <_ZSt18uninitialized_copyISt13move_iteratorIP6VectorIfLm3EEES3_ET0_T_S6_S5_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
  14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_copy(__first, __last, __result);
  18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  1c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt18uninitialized_copyISt13move_iteratorIP6VectorIfLm3EEES3_ET0_T_S6_S5_+0x2f>
    }
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI8TriangleIfEEC2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI8TriangleIfEEC1Ev>:
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorI5LightEC2Ev:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorI5LightEC1Ev>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt10_Head_baseILm1ESt14default_deleteIA_5ColorELb1EEC2Ev:

0000000000000000 <_ZNSt10_Head_baseILm1ESt14default_deleteIA_5ColorELb1EEC1Ev>:
      constexpr _Head_base()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      : _Head() { }
   8:	90                   	nop
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt10_Head_baseILm0EP5ColorLb0EE7_M_headERS2_:

0000000000000000 <_ZNSt10_Head_baseILm0EP5ColorLb0EE7_M_headERS2_>:
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEE7_M_headERS4_:

0000000000000000 <_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEE7_M_headERS4_>:
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt11_Tuple_implILm1EJSt14default_deleteIA_5ColorEEE7_M_headERS4_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERKS5_:

0000000000000000 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERKS5_>:
      _M_head(const _Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt11_Tuple_implILm0EJP5ColorSt14default_deleteIA_S0_EEE7_M_headERKS5_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx13new_allocatorI8TriangleIfEE8max_sizeEv:

0000000000000000 <_ZNK9__gnu_cxx13new_allocatorI8TriangleIfEE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_t(-1) / sizeof(_Tp); }
   8:	48 b8 8e e3 38 8e e3 	movabs $0x38e38e38e38e38e,%rax
   f:	38 8e 03 
  12:	5d                   	pop    %rbp
  13:	c3                   	retq   

Disassembly of section .text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_:

0000000000000000 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 38          	sub    $0x38,%rsp
   9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  11:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	  _ForwardIterator __cur = __result;
  15:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	      for (; __first != __last; ++__first, (void)++__cur)
  1d:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  21:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  25:	48 89 d6             	mov    %rdx,%rsi
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x30>
  30:	84 c0                	test   %al,%al
  32:	74 39                	je     6d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x6d>
		std::_Construct(std::__addressof(*__cur), *__first);
  34:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x40>
  40:	48 89 c3             	mov    %rax,%rbx
  43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x4f>
  4f:	48 89 de             	mov    %rbx,%rsi
  52:	48 89 c7             	mov    %rax,%rdi
  55:	e8 00 00 00 00       	callq  5a <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x5a>
	      for (; __first != __last; ++__first, (void)++__cur)
  5a:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	callq  66 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x66>
  66:	48 83 45 e8 48       	addq   $0x48,-0x18(%rbp)
  6b:	eb b0                	jmp    1d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x1d>
	      return __cur;
  6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  71:	eb 33                	jmp    a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0xa6>
	  __catch(...)
  73:	48 89 c7             	mov    %rax,%rdi
  76:	e8 00 00 00 00       	callq  7b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x7b>
	      std::_Destroy(__result, __cur);
  7b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  83:	48 89 d6             	mov    %rdx,%rsi
  86:	48 89 c7             	mov    %rax,%rdi
  89:	e8 00 00 00 00       	callq  8e <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x8e>
	      __throw_exception_again;
  8e:	e8 00 00 00 00       	callq  93 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x93>
  93:	48 89 c3             	mov    %rax,%rbx
	  __catch(...)
  96:	e8 00 00 00 00       	callq  9b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0x9b>
  9b:	48 89 d8             	mov    %rbx,%rax
  9e:	48 89 c7             	mov    %rax,%rdi
  a1:	e8 00 00 00 00       	callq  a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP8TriangleIfEES5_EET0_T_S8_S7_+0xa6>
	}
  a6:	48 83 c4 38          	add    $0x38,%rsp
  aa:	5b                   	pop    %rbx
  ab:	5d                   	pop    %rbp
  ac:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx13new_allocatorI5LightE8max_sizeEv:

0000000000000000 <_ZNK9__gnu_cxx13new_allocatorI5LightE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_t(-1) / sizeof(_Tp); }
   8:	48 b8 aa aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaa,%rax
   f:	aa aa 0a 
  12:	5d                   	pop    %rbp
  13:	c3                   	retq   

Disassembly of section .text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_:

0000000000000000 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 38          	sub    $0x38,%rsp
   9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  11:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	  _ForwardIterator __cur = __result;
  15:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	      for (; __first != __last; ++__first, (void)++__cur)
  1d:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  21:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  25:	48 89 d6             	mov    %rdx,%rsi
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x30>
  30:	84 c0                	test   %al,%al
  32:	74 39                	je     6d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x6d>
		std::_Construct(std::__addressof(*__cur), *__first);
  34:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x40>
  40:	48 89 c3             	mov    %rax,%rbx
  43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x4f>
  4f:	48 89 de             	mov    %rbx,%rsi
  52:	48 89 c7             	mov    %rax,%rdi
  55:	e8 00 00 00 00       	callq  5a <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x5a>
	      for (; __first != __last; ++__first, (void)++__cur)
  5a:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	callq  66 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x66>
  66:	48 83 45 e8 18       	addq   $0x18,-0x18(%rbp)
  6b:	eb b0                	jmp    1d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x1d>
	      return __cur;
  6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  71:	eb 33                	jmp    a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0xa6>
	  __catch(...)
  73:	48 89 c7             	mov    %rax,%rdi
  76:	e8 00 00 00 00       	callq  7b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x7b>
	      std::_Destroy(__result, __cur);
  7b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  83:	48 89 d6             	mov    %rdx,%rsi
  86:	48 89 c7             	mov    %rax,%rdi
  89:	e8 00 00 00 00       	callq  8e <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x8e>
	      __throw_exception_again;
  8e:	e8 00 00 00 00       	callq  93 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x93>
  93:	48 89 c3             	mov    %rax,%rbx
	  __catch(...)
  96:	e8 00 00 00 00       	callq  9b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0x9b>
  9b:	48 89 d8             	mov    %rbx,%rax
  9e:	48 89 c7             	mov    %rax,%rdi
  a1:	e8 00 00 00 00       	callq  a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP5LightES4_EET0_T_S7_S6_+0xa6>
	}
  a6:	48 83 c4 38          	add    $0x38,%rsp
  aa:	5b                   	pop    %rbx
  ab:	5d                   	pop    %rbp
  ac:	c3                   	retq   

Disassembly of section .text._ZNSt16allocator_traitsISaIP8TriangleIfEEE8max_sizeERKS3_:

0000000000000000 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE8max_sizeERKS3_>:
      max_size(const allocator_type& __a) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return __a.max_size(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt16allocator_traitsISaIP8TriangleIfEEE8max_sizeERKS3_+0x18>
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNKSt12_Vector_baseIP8TriangleIfESaIS2_EE19_M_get_Tp_allocatorEv:

0000000000000000 <_ZNKSt12_Vector_baseIP8TriangleIfESaIS2_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv:

0000000000000000 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->max_size())
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv+0x20>
  20:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  24:	0f 97 c0             	seta   %al
  27:	84 c0                	test   %al,%al
  29:	74 05                	je     30 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv+0x30>
	  std::__throw_bad_alloc();
  2b:	e8 00 00 00 00       	callq  30 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv+0x30>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  30:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  34:	48 c1 e0 03          	shl    $0x3,%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZN9__gnu_cxx13new_allocatorIP8TriangleIfEE8allocateEmPKv+0x40>
      }
  40:	c9                   	leaveq 
  41:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIPP8TriangleIfEEC2ES3_:

0000000000000000 <_ZNSt13move_iteratorIPP8TriangleIfEEC1ES3_>:
      move_iterator(iterator_type __i)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 89 10             	mov    %rdx,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

Disassembly of section .text._ZSt18uninitialized_copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_:

0000000000000000 <_ZSt18uninitialized_copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
  14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_copy(__first, __last, __result);
  18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  1c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt18uninitialized_copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_+0x2f>
    }
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8max_sizeEv:

0000000000000000 <_ZNK9__gnu_cxx13new_allocatorI6VectorIfLm3EEE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_t(-1) / sizeof(_Tp); }
   8:	48 b8 55 55 55 55 55 	movabs $0x1555555555555555,%rax
   f:	55 55 15 
  12:	5d                   	pop    %rbp
  13:	c3                   	retq   

Disassembly of section .text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_:

0000000000000000 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 38          	sub    $0x38,%rsp
   9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  11:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	  _ForwardIterator __cur = __result;
  15:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	      for (; __first != __last; ++__first, (void)++__cur)
  1d:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  21:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  25:	48 89 d6             	mov    %rdx,%rsi
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x30>
  30:	84 c0                	test   %al,%al
  32:	74 39                	je     6d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x6d>
		std::_Construct(std::__addressof(*__cur), *__first);
  34:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	callq  40 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x40>
  40:	48 89 c3             	mov    %rax,%rbx
  43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x4f>
  4f:	48 89 de             	mov    %rbx,%rsi
  52:	48 89 c7             	mov    %rax,%rdi
  55:	e8 00 00 00 00       	callq  5a <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x5a>
	      for (; __first != __last; ++__first, (void)++__cur)
  5a:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  5e:	48 89 c7             	mov    %rax,%rdi
  61:	e8 00 00 00 00       	callq  66 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x66>
  66:	48 83 45 e8 0c       	addq   $0xc,-0x18(%rbp)
  6b:	eb b0                	jmp    1d <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x1d>
	      return __cur;
  6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  71:	eb 33                	jmp    a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0xa6>
	  __catch(...)
  73:	48 89 c7             	mov    %rax,%rdi
  76:	e8 00 00 00 00       	callq  7b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x7b>
	      std::_Destroy(__result, __cur);
  7b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  83:	48 89 d6             	mov    %rdx,%rsi
  86:	48 89 c7             	mov    %rax,%rdi
  89:	e8 00 00 00 00       	callq  8e <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x8e>
	      __throw_exception_again;
  8e:	e8 00 00 00 00       	callq  93 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x93>
  93:	48 89 c3             	mov    %rax,%rbx
	  __catch(...)
  96:	e8 00 00 00 00       	callq  9b <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0x9b>
  9b:	48 89 d8             	mov    %rbx,%rax
  9e:	48 89 c7             	mov    %rax,%rdi
  a1:	e8 00 00 00 00       	callq  a6 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIP6VectorIfLm3EEES5_EET0_T_S8_S7_+0xa6>
	}
  a6:	48 83 c4 38          	add    $0x38,%rsp
  aa:	5b                   	pop    %rbx
  ab:	5d                   	pop    %rbp
  ac:	c3                   	retq   

Disassembly of section .text._ZNSt10_Head_baseILm1ESt14default_deleteIA_5ColorELb1EE7_M_headERS4_:

0000000000000000 <_ZNSt10_Head_baseILm1ESt14default_deleteIA_5ColorELb1EE7_M_headERS4_>:
      _M_head(_Head_base& __b) noexcept { return __b; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNSt10_Head_baseILm0EP5ColorLb0EE7_M_headERKS2_:

0000000000000000 <_ZNSt10_Head_baseILm0EP5ColorLb0EE7_M_headERKS2_>:
      _M_head(const _Head_base& __b) noexcept { return __b._M_head_impl; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZStneIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_:

0000000000000000 <_ZStneIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_>:
    operator!=(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { return !(__x == __y); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZStneIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_+0x23>
  23:	83 f0 01             	xor    $0x1,%eax
  26:	c9                   	leaveq 
  27:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP8TriangleIfEEppEv:

0000000000000000 <_ZNSt13move_iteratorIP8TriangleIfEEppEv>:
      operator++()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	48 8d 50 48          	lea    0x48(%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  1e:	5d                   	pop    %rbp
  1f:	c3                   	retq   

Disassembly of section .text._ZSt11__addressofI8TriangleIfEEPT_RS2_:

0000000000000000 <_ZSt11__addressofI8TriangleIfEEPT_RS2_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP8TriangleIfEEdeEv:

0000000000000000 <_ZNKSt13move_iteratorIP8TriangleIfEEdeEv>:
      operator*() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<reference>(*_M_current); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZSt7forwardI8TriangleIfEEOT_RNSt16remove_referenceIS2_E4typeE:

0000000000000000 <_ZSt7forwardI8TriangleIfEEOT_RNSt16remove_referenceIS2_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt10_ConstructI8TriangleIfEJS1_EEvPT_DpOT0_:

0000000000000000 <_ZSt10_ConstructI8TriangleIfEJS1_EEvPT_DpOT0_>:
    _Construct(_T1* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { ::new(static_cast<void*>(__p)) _T1(std::forward<_Args>(__args)...); }
  11:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSt10_ConstructI8TriangleIfEJS1_EEvPT_DpOT0_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 c6             	mov    %rax,%rsi
  27:	bf 48 00 00 00       	mov    $0x48,%edi
  2c:	e8 00 00 00 00       	callq  31 <_ZSt10_ConstructI8TriangleIfEJS1_EEvPT_DpOT0_+0x31>
  31:	48 85 c0             	test   %rax,%rax
  34:	74 46                	je     7c <_ZSt10_ConstructI8TriangleIfEJS1_EEvPT_DpOT0_+0x7c>
  36:	48 8b 13             	mov    (%rbx),%rdx
  39:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  3d:	48 89 10             	mov    %rdx,(%rax)
  40:	48 89 48 08          	mov    %rcx,0x8(%rax)
  44:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  48:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
  4c:	48 89 50 10          	mov    %rdx,0x10(%rax)
  50:	48 89 48 18          	mov    %rcx,0x18(%rax)
  54:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  58:	48 8b 4b 28          	mov    0x28(%rbx),%rcx
  5c:	48 89 50 20          	mov    %rdx,0x20(%rax)
  60:	48 89 48 28          	mov    %rcx,0x28(%rax)
  64:	48 8b 53 30          	mov    0x30(%rbx),%rdx
  68:	48 8b 4b 38          	mov    0x38(%rbx),%rcx
  6c:	48 89 50 30          	mov    %rdx,0x30(%rax)
  70:	48 89 48 38          	mov    %rcx,0x38(%rax)
  74:	48 8b 53 40          	mov    0x40(%rbx),%rdx
  78:	48 89 50 40          	mov    %rdx,0x40(%rax)
  7c:	90                   	nop
  7d:	48 83 c4 18          	add    $0x18,%rsp
  81:	5b                   	pop    %rbx
  82:	5d                   	pop    %rbp
  83:	c3                   	retq   

Disassembly of section .text._ZStneIP5LightEbRKSt13move_iteratorIT_ES6_:

0000000000000000 <_ZStneIP5LightEbRKSt13move_iteratorIT_ES6_>:
    operator!=(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { return !(__x == __y); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZStneIP5LightEbRKSt13move_iteratorIT_ES6_+0x23>
  23:	83 f0 01             	xor    $0x1,%eax
  26:	c9                   	leaveq 
  27:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP5LightEppEv:

0000000000000000 <_ZNSt13move_iteratorIP5LightEppEv>:
      operator++()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	48 8d 50 18          	lea    0x18(%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  1e:	5d                   	pop    %rbp
  1f:	c3                   	retq   

Disassembly of section .text._ZSt11__addressofI5LightEPT_RS1_:

0000000000000000 <_ZSt11__addressofI5LightEPT_RS1_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP5LightEdeEv:

0000000000000000 <_ZNKSt13move_iteratorIP5LightEdeEv>:
      operator*() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<reference>(*_M_current); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZSt7forwardI5LightEOT_RNSt16remove_referenceIS1_E4typeE:

0000000000000000 <_ZSt7forwardI5LightEOT_RNSt16remove_referenceIS1_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt10_ConstructI5LightJS0_EEvPT_DpOT0_:

0000000000000000 <_ZSt10_ConstructI5LightJS0_EEvPT_DpOT0_>:
    _Construct(_T1* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { ::new(static_cast<void*>(__p)) _T1(std::forward<_Args>(__args)...); }
  11:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSt10_ConstructI5LightJS0_EEvPT_DpOT0_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 c6             	mov    %rax,%rsi
  27:	bf 18 00 00 00       	mov    $0x18,%edi
  2c:	e8 00 00 00 00       	callq  31 <_ZSt10_ConstructI5LightJS0_EEvPT_DpOT0_+0x31>
  31:	48 89 c1             	mov    %rax,%rcx
  34:	48 85 c9             	test   %rcx,%rcx
  37:	74 16                	je     4f <_ZSt10_ConstructI5LightJS0_EEvPT_DpOT0_+0x4f>
  39:	48 8b 03             	mov    (%rbx),%rax
  3c:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  40:	48 89 01             	mov    %rax,(%rcx)
  43:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  47:	48 8b 43 10          	mov    0x10(%rbx),%rax
  4b:	48 89 41 10          	mov    %rax,0x10(%rcx)
  4f:	90                   	nop
  50:	48 83 c4 18          	add    $0x18,%rsp
  54:	5b                   	pop    %rbx
  55:	5d                   	pop    %rbp
  56:	c3                   	retq   

Disassembly of section .text._ZNK9__gnu_cxx13new_allocatorIP8TriangleIfEE8max_sizeEv:

0000000000000000 <_ZNK9__gnu_cxx13new_allocatorIP8TriangleIfEE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_t(-1) / sizeof(_Tp); }
   8:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
   f:	ff ff 1f 
  12:	5d                   	pop    %rbp
  13:	c3                   	retq   

Disassembly of section .text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP8TriangleIfEES6_EET0_T_S9_S8_:

0000000000000000 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP8TriangleIfEES6_EET0_T_S9_S8_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
        { return std::copy(__first, __last, __result); }
  14:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  18:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 ce             	mov    %rcx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP8TriangleIfEES6_EET0_T_S9_S8_+0x2b>
  2b:	c9                   	leaveq 
  2c:	c3                   	retq   

Disassembly of section .text._ZStneIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_:

0000000000000000 <_ZStneIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_>:
    operator!=(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { return !(__x == __y); }
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZStneIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_+0x23>
  23:	83 f0 01             	xor    $0x1,%eax
  26:	c9                   	leaveq 
  27:	c3                   	retq   

Disassembly of section .text._ZNSt13move_iteratorIP6VectorIfLm3EEEppEv:

0000000000000000 <_ZNSt13move_iteratorIP6VectorIfLm3EEEppEv>:
      operator++()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  1e:	5d                   	pop    %rbp
  1f:	c3                   	retq   

Disassembly of section .text._ZSt11__addressofI6VectorIfLm3EEEPT_RS2_:

0000000000000000 <_ZSt11__addressofI6VectorIfLm3EEEPT_RS2_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP6VectorIfLm3EEEdeEv:

0000000000000000 <_ZNKSt13move_iteratorIP6VectorIfLm3EEEdeEv>:
      operator*() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return static_cast<reference>(*_M_current); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZSt7forwardI6VectorIfLm3EEEOT_RNSt16remove_referenceIS2_E4typeE:

0000000000000000 <_ZSt7forwardI6VectorIfLm3EEEOT_RNSt16remove_referenceIS2_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt10_ConstructI6VectorIfLm3EEJS1_EEvPT_DpOT0_:

0000000000000000 <_ZSt10_ConstructI6VectorIfLm3EEJS1_EEvPT_DpOT0_>:
    _Construct(_T1* __p, _Args&&... __args)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { ::new(static_cast<void*>(__p)) _T1(std::forward<_Args>(__args)...); }
  11:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSt10_ConstructI6VectorIfLm3EEJS1_EEvPT_DpOT0_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 c6             	mov    %rax,%rsi
  27:	bf 0c 00 00 00       	mov    $0xc,%edi
  2c:	e8 00 00 00 00       	callq  31 <_ZSt10_ConstructI6VectorIfLm3EEJS1_EEvPT_DpOT0_+0x31>
  31:	48 85 c0             	test   %rax,%rax
  34:	74 0c                	je     42 <_ZSt10_ConstructI6VectorIfLm3EEJS1_EEvPT_DpOT0_+0x42>
  36:	48 8b 13             	mov    (%rbx),%rdx
  39:	48 89 10             	mov    %rdx,(%rax)
  3c:	8b 53 08             	mov    0x8(%rbx),%edx
  3f:	89 50 08             	mov    %edx,0x8(%rax)
  42:	90                   	nop
  43:	48 83 c4 18          	add    $0x18,%rsp
  47:	5b                   	pop    %rbx
  48:	5d                   	pop    %rbp
  49:	c3                   	retq   

Disassembly of section .text._ZSteqIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_:

0000000000000000 <_ZSteqIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_>:
    operator==(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __x.base() == __y.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSteqIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	callq  2c <_ZSteqIP8TriangleIfEEbRKSt13move_iteratorIT_ES7_+0x2c>
  2c:	48 39 c3             	cmp    %rax,%rbx
  2f:	0f 94 c0             	sete   %al
  32:	48 83 c4 18          	add    $0x18,%rsp
  36:	5b                   	pop    %rbx
  37:	5d                   	pop    %rbp
  38:	c3                   	retq   

Disassembly of section .text._ZSteqIP5LightEbRKSt13move_iteratorIT_ES6_:

0000000000000000 <_ZSteqIP5LightEbRKSt13move_iteratorIT_ES6_>:
    operator==(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __x.base() == __y.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSteqIP5LightEbRKSt13move_iteratorIT_ES6_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	callq  2c <_ZSteqIP5LightEbRKSt13move_iteratorIT_ES6_+0x2c>
  2c:	48 39 c3             	cmp    %rax,%rbx
  2f:	0f 94 c0             	sete   %al
  32:	48 83 c4 18          	add    $0x18,%rsp
  36:	5b                   	pop    %rbx
  37:	5d                   	pop    %rbp
  38:	c3                   	retq   

Disassembly of section .text._ZSt4copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_:

0000000000000000 <_ZSt4copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_>:
   *  Note that the end of the output range is permitted to be contained
   *  within [first,last).
  */
  template<typename _II, typename _OI>
    inline _OI
    copy(_II __first, _II __last, _OI __result)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 28          	sub    $0x28,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  11:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      __glibcxx_function_requires(_OutputIteratorConcept<_OI,
	    typename iterator_traits<_II>::value_type>)
      __glibcxx_requires_valid_range(__first, __last);

      return (std::__copy_move_a2<__is_move_iterator<_II>::__value>
	      (std::__miter_base(__first), std::__miter_base(__last),
  15:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	e8 00 00 00 00       	callq  21 <_ZSt4copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_+0x21>
  21:	48 89 c3             	mov    %rax,%rbx
  24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  28:	48 89 c7             	mov    %rax,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZSt4copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_+0x30>
  30:	48 89 c1             	mov    %rax,%rcx
	       __result));
  33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  37:	48 89 c2             	mov    %rax,%rdx
  3a:	48 89 de             	mov    %rbx,%rsi
  3d:	48 89 cf             	mov    %rcx,%rdi
  40:	e8 00 00 00 00       	callq  45 <_ZSt4copyISt13move_iteratorIPP8TriangleIfEES4_ET0_T_S7_S6_+0x45>
    }
  45:	48 83 c4 28          	add    $0x28,%rsp
  49:	5b                   	pop    %rbx
  4a:	5d                   	pop    %rbp
  4b:	c3                   	retq   

Disassembly of section .text._ZSteqIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_:

0000000000000000 <_ZSteqIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_>:
    operator==(const move_iterator<_Iterator>& __x,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __x.base() == __y.base(); }
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	48 89 c7             	mov    %rax,%rdi
  18:	e8 00 00 00 00       	callq  1d <_ZSteqIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_+0x1d>
  1d:	48 89 c3             	mov    %rax,%rbx
  20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	callq  2c <_ZSteqIP6VectorIfLm3EEEbRKSt13move_iteratorIT_ES7_+0x2c>
  2c:	48 39 c3             	cmp    %rax,%rbx
  2f:	0f 94 c0             	sete   %al
  32:	48 83 c4 18          	add    $0x18,%rsp
  36:	5b                   	pop    %rbx
  37:	5d                   	pop    %rbp
  38:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP8TriangleIfEE4baseEv:

0000000000000000 <_ZNKSt13move_iteratorIP8TriangleIfEE4baseEv>:
      base() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP5LightE4baseEv:

0000000000000000 <_ZNKSt13move_iteratorIP5LightE4baseEv>:
      base() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZSt12__miter_baseIPP8TriangleIfEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:

0000000000000000 <_ZSt12__miter_baseIPP8TriangleIfEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>:
      typedef __true_type __type;
    };

  template<typename _Iterator>
    auto
    __miter_base(move_iterator<_Iterator> __it)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    -> decltype(__miter_base(__it.base()))
    { return __miter_base(__it.base()); }
   c:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZSt12__miter_baseIPP8TriangleIfEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E+0x18>
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	callq  20 <_ZSt12__miter_baseIPP8TriangleIfEEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E+0x20>
  20:	c9                   	leaveq 
  21:	c3                   	retq   

Disassembly of section .text._ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_:

0000000000000000 <_ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_>:
    __copy_move_a2(_II __first, _II __last, _OI __result)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 20          	sub    $0x20,%rsp
   b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  13:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      return _OI(std::__copy_move_a<_IsMove>(std::__niter_base(__first),
  17:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_+0x23>
  23:	49 89 c4             	mov    %rax,%r12
  26:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_+0x32>
  32:	48 89 c3             	mov    %rax,%rbx
  35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  39:	48 89 c7             	mov    %rax,%rdi
  3c:	e8 00 00 00 00       	callq  41 <_ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_+0x41>
					     std::__niter_base(__result)));
  41:	4c 89 e2             	mov    %r12,%rdx
  44:	48 89 de             	mov    %rbx,%rsi
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZSt14__copy_move_a2ILb1EPP8TriangleIfES3_ET1_T0_S5_S4_+0x4f>
    }
  4f:	48 83 c4 20          	add    $0x20,%rsp
  53:	5b                   	pop    %rbx
  54:	41 5c                	pop    %r12
  56:	5d                   	pop    %rbp
  57:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIP6VectorIfLm3EEE4baseEv:

0000000000000000 <_ZNKSt13move_iteratorIP6VectorIfLm3EEE4baseEv>:
      base() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNKSt13move_iteratorIPP8TriangleIfEE4baseEv:

0000000000000000 <_ZNKSt13move_iteratorIPP8TriangleIfEE4baseEv>:
      base() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZSt12__miter_baseIPP8TriangleIfEET_S4_:

0000000000000000 <_ZSt12__miter_baseIPP8TriangleIfEET_S4_>:

  // Fallback implementation of the function in bits/stl_iterator.h used to
  // remove the move_iterator wrapper.
  template<typename _Iterator>
    inline _Iterator
    __miter_base(_Iterator __it)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __it; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt12__niter_baseIPP8TriangleIfEET_S4_:

0000000000000000 <_ZSt12__niter_baseIPP8TriangleIfEET_S4_>:
    __niter_base(_Iterator __it)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __it; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	5d                   	pop    %rbp
   d:	c3                   	retq   

Disassembly of section .text._ZSt13__copy_move_aILb1EPP8TriangleIfES3_ET1_T0_S5_S4_:

0000000000000000 <_ZSt13__copy_move_aILb1EPP8TriangleIfES3_ET1_T0_S5_S4_>:
    __copy_move_a(_II __first, _II __last, _OI __result)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __simple = (__is_trivial(_ValueTypeI)
  14:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	                      _Category>::__copy_m(__first, __last, __result);
  18:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  1c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 89 ce             	mov    %rcx,%rsi
  27:	48 89 c7             	mov    %rax,%rdi
  2a:	e8 00 00 00 00       	callq  2f <_ZSt13__copy_move_aILb1EPP8TriangleIfES3_ET1_T0_S5_S4_+0x2f>
    }
  2f:	c9                   	leaveq 
  30:	c3                   	retq   

Disassembly of section .text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8TriangleIfEEEPT_PKS6_S9_S7_:

0000000000000000 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8TriangleIfEEEPT_PKS6_S9_S7_>:
        __copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	  const ptrdiff_t _Num = __last - __first;
  14:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  18:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1c:	48 29 c2             	sub    %rax,%rdx
  1f:	48 89 d0             	mov    %rdx,%rax
  22:	48 c1 f8 03          	sar    $0x3,%rax
  26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  if (_Num)
  2a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  2f:	74 1f                	je     50 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8TriangleIfEEEPT_PKS6_S9_S7_+0x50>
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
  31:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  35:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  3c:	00 
  3d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  45:	48 89 ce             	mov    %rcx,%rsi
  48:	48 89 c7             	mov    %rax,%rdi
  4b:	e8 00 00 00 00       	callq  50 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP8TriangleIfEEEPT_PKS6_S9_S7_+0x50>
	  return __result + _Num;
  50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  54:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  5b:	00 
  5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  60:	48 01 d0             	add    %rdx,%rax
	}
  63:	c9                   	leaveq 
  64:	c3                   	retq   
