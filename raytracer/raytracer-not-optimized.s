
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
      e9:	0f 84 86 01 00 00    	je     275 <_ZlsRSoRK6Screen+0x275>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
      ef:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
      f6:	00 
      f7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
      fb:	48 89 c7             	mov    %rax,%rdi
      fe:	e8 00 00 00 00       	callq  103 <_ZlsRSoRK6Screen+0x103>
     103:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
     107:	0f 92 c0             	setb   %al
     10a:	84 c0                	test   %al,%al
     10c:	0f 84 43 01 00 00    	je     255 <_ZlsRSoRK6Screen+0x255>
      std::cout << (unsigned short) (screen.getPixel(x,y).getRed() * 255.0) << " "
     112:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     116:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     11a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     11e:	48 89 ce             	mov    %rcx,%rsi
     121:	48 89 c7             	mov    %rax,%rdi
     124:	e8 00 00 00 00       	callq  129 <_ZlsRSoRK6Screen+0x129>
     129:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     12e:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     132:	48 89 45 c4          	mov    %rax,-0x3c(%rbp)
     136:	c5 fa 11 45 cc       	vmovss %xmm0,-0x34(%rbp)
     13b:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
     13f:	48 89 c7             	mov    %rax,%rdi
     142:	e8 00 00 00 00       	callq  147 <_ZlsRSoRK6Screen+0x147>
     147:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     14b:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 153 <_ZlsRSoRK6Screen+0x153>
     152:	00 
     153:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     157:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     15b:	0f b7 c0             	movzwl %ax,%eax
     15e:	89 c6                	mov    %eax,%esi
     160:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 167 <_ZlsRSoRK6Screen+0x167>
     167:	e8 00 00 00 00       	callq  16c <_ZlsRSoRK6Screen+0x16c>
     16c:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 173 <_ZlsRSoRK6Screen+0x173>
     173:	48 89 c7             	mov    %rax,%rdi
     176:	e8 00 00 00 00       	callq  17b <_ZlsRSoRK6Screen+0x17b>
     17b:	48 89 c3             	mov    %rax,%rbx
                << (unsigned short) (screen.getPixel(x,y).getGreen() * 255.0) << " "
     17e:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     182:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     186:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     18a:	48 89 ce             	mov    %rcx,%rsi
     18d:	48 89 c7             	mov    %rax,%rdi
     190:	e8 00 00 00 00       	callq  195 <_ZlsRSoRK6Screen+0x195>
     195:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     19a:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     19e:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
     1a2:	c5 fa 11 45 d8       	vmovss %xmm0,-0x28(%rbp)
     1a7:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
     1ab:	48 89 c7             	mov    %rax,%rdi
     1ae:	e8 00 00 00 00       	callq  1b3 <_ZlsRSoRK6Screen+0x1b3>
     1b3:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     1b7:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 1bf <_ZlsRSoRK6Screen+0x1bf>
     1be:	00 
     1bf:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     1c3:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     1c7:	0f b7 c0             	movzwl %ax,%eax
     1ca:	89 c6                	mov    %eax,%esi
     1cc:	48 89 df             	mov    %rbx,%rdi
     1cf:	e8 00 00 00 00       	callq  1d4 <_ZlsRSoRK6Screen+0x1d4>
     1d4:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1db <_ZlsRSoRK6Screen+0x1db>
     1db:	48 89 c7             	mov    %rax,%rdi
     1de:	e8 00 00 00 00       	callq  1e3 <_ZlsRSoRK6Screen+0x1e3>
     1e3:	48 89 c3             	mov    %rax,%rbx
                << (unsigned short) (screen.getPixel(x,y).getBlue() * 255.0) << " ";
     1e6:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
     1ea:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
     1ee:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     1f2:	48 89 ce             	mov    %rcx,%rsi
     1f5:	48 89 c7             	mov    %rax,%rdi
     1f8:	e8 00 00 00 00       	callq  1fd <_ZlsRSoRK6Screen+0x1fd>
     1fd:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     202:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     206:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     20a:	c5 fa 11 45 e4       	vmovss %xmm0,-0x1c(%rbp)
     20f:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     213:	48 89 c7             	mov    %rax,%rdi
     216:	e8 00 00 00 00       	callq  21b <_ZlsRSoRK6Screen+0x21b>
     21b:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     21f:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 227 <_ZlsRSoRK6Screen+0x227>
     226:	00 
     227:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     22b:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     22f:	0f b7 c0             	movzwl %ax,%eax
     232:	89 c6                	mov    %eax,%esi
     234:	48 89 df             	mov    %rbx,%rdi
     237:	e8 00 00 00 00       	callq  23c <_ZlsRSoRK6Screen+0x23c>
     23c:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 243 <_ZlsRSoRK6Screen+0x243>
     243:	48 89 c7             	mov    %rax,%rdi
     246:	e8 00 00 00 00       	callq  24b <_ZlsRSoRK6Screen+0x24b>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     24b:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
     250:	e9 a2 fe ff ff       	jmpq   f7 <_ZlsRSoRK6Screen+0xf7>
    }
    std::cout << std::endl;
     255:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 25c <_ZlsRSoRK6Screen+0x25c>
     25c:	48 89 c6             	mov    %rax,%rsi
     25f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 266 <_ZlsRSoRK6Screen+0x266>
     266:	e8 00 00 00 00       	callq  26b <_ZlsRSoRK6Screen+0x26b>
  for (size_t y = 0u; y < screen.getHeight(); y++) {
     26b:	48 83 45 b0 01       	addq   $0x1,-0x50(%rbp)
     270:	e9 5f fe ff ff       	jmpq   d4 <_ZlsRSoRK6Screen+0xd4>
  }
  std::cout << std::endl;
     275:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 27c <_ZlsRSoRK6Screen+0x27c>
     27c:	48 89 c6             	mov    %rax,%rsi
     27f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 286 <_ZlsRSoRK6Screen+0x286>
     286:	e8 00 00 00 00       	callq  28b <_ZlsRSoRK6Screen+0x28b>
  return out;
     28b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
}
     28f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     293:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
     29a:	00 00 
     29c:	74 05                	je     2a3 <_ZlsRSoRK6Screen+0x2a3>
     29e:	e8 00 00 00 00       	callq  2a3 <_ZlsRSoRK6Screen+0x2a3>
     2a3:	48 83 c4 58          	add    $0x58,%rsp
     2a7:	5b                   	pop    %rbx
     2a8:	5d                   	pop    %rbp
     2a9:	c3                   	retq   

00000000000002aa <_Z9write_bmpRSoRK6Screen>:

// writes out the image as binary BMP (for windows)
void write_bmp(std::ostream & out, const Screen & screen) {
     2aa:	55                   	push   %rbp
     2ab:	48 89 e5             	mov    %rsp,%rbp
     2ae:	53                   	push   %rbx
     2af:	48 83 ec 58          	sub    $0x58,%rsp
     2b3:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     2b7:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     2bb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     2c2:	00 00 
     2c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     2c8:	31 c0                	xor    %eax,%eax
  unsigned long long size_of_bitmap_data = screen.getWidth() * screen.getHeight() * 4;
     2ca:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     2ce:	48 89 c7             	mov    %rax,%rdi
     2d1:	e8 00 00 00 00       	callq  2d6 <_Z9write_bmpRSoRK6Screen+0x2c>
     2d6:	48 89 c3             	mov    %rax,%rbx
     2d9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     2dd:	48 89 c7             	mov    %rax,%rdi
     2e0:	e8 00 00 00 00       	callq  2e5 <_Z9write_bmpRSoRK6Screen+0x3b>
     2e5:	48 0f af c3          	imul   %rbx,%rax
     2e9:	48 c1 e0 02          	shl    $0x2,%rax
     2ed:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  out.put(0x42); out.put(0x4D); // "BM"
     2f1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     2f5:	be 42 00 00 00       	mov    $0x42,%esi
     2fa:	48 89 c7             	mov    %rax,%rdi
     2fd:	e8 00 00 00 00       	callq  302 <_Z9write_bmpRSoRK6Screen+0x58>
     302:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     306:	be 4d 00 00 00       	mov    $0x4d,%esi
     30b:	48 89 c7             	mov    %rax,%rdi
     30e:	e8 00 00 00 00       	callq  313 <_Z9write_bmpRSoRK6Screen+0x69>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // size of bmp file
     313:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     317:	be 00 00 00 00       	mov    $0x0,%esi
     31c:	48 89 c7             	mov    %rax,%rdi
     31f:	e8 00 00 00 00       	callq  324 <_Z9write_bmpRSoRK6Screen+0x7a>
     324:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     328:	be 00 00 00 00       	mov    $0x0,%esi
     32d:	48 89 c7             	mov    %rax,%rdi
     330:	e8 00 00 00 00       	callq  335 <_Z9write_bmpRSoRK6Screen+0x8b>
     335:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     339:	be 00 00 00 00       	mov    $0x0,%esi
     33e:	48 89 c7             	mov    %rax,%rdi
     341:	e8 00 00 00 00       	callq  346 <_Z9write_bmpRSoRK6Screen+0x9c>
     346:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     34a:	be 00 00 00 00       	mov    $0x0,%esi
     34f:	48 89 c7             	mov    %rax,%rdi
     352:	e8 00 00 00 00       	callq  357 <_Z9write_bmpRSoRK6Screen+0xad>
  out.put(0x00); out.put(0x00);
     357:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     35b:	be 00 00 00 00       	mov    $0x0,%esi
     360:	48 89 c7             	mov    %rax,%rdi
     363:	e8 00 00 00 00       	callq  368 <_Z9write_bmpRSoRK6Screen+0xbe>
     368:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     36c:	be 00 00 00 00       	mov    $0x0,%esi
     371:	48 89 c7             	mov    %rax,%rdi
     374:	e8 00 00 00 00       	callq  379 <_Z9write_bmpRSoRK6Screen+0xcf>
  out.put(0x00); out.put(0x00);
     379:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     37d:	be 00 00 00 00       	mov    $0x0,%esi
     382:	48 89 c7             	mov    %rax,%rdi
     385:	e8 00 00 00 00       	callq  38a <_Z9write_bmpRSoRK6Screen+0xe0>
     38a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     38e:	be 00 00 00 00       	mov    $0x0,%esi
     393:	48 89 c7             	mov    %rax,%rdi
     396:	e8 00 00 00 00       	callq  39b <_Z9write_bmpRSoRK6Screen+0xf1>
  out.put(0x36); out.put(0x00);out.put(0x00); out.put(0x00); // offset to start of pixel array
     39b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     39f:	be 36 00 00 00       	mov    $0x36,%esi
     3a4:	48 89 c7             	mov    %rax,%rdi
     3a7:	e8 00 00 00 00       	callq  3ac <_Z9write_bmpRSoRK6Screen+0x102>
     3ac:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3b0:	be 00 00 00 00       	mov    $0x0,%esi
     3b5:	48 89 c7             	mov    %rax,%rdi
     3b8:	e8 00 00 00 00       	callq  3bd <_Z9write_bmpRSoRK6Screen+0x113>
     3bd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3c1:	be 00 00 00 00       	mov    $0x0,%esi
     3c6:	48 89 c7             	mov    %rax,%rdi
     3c9:	e8 00 00 00 00       	callq  3ce <_Z9write_bmpRSoRK6Screen+0x124>
     3ce:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3d2:	be 00 00 00 00       	mov    $0x0,%esi
     3d7:	48 89 c7             	mov    %rax,%rdi
     3da:	e8 00 00 00 00       	callq  3df <_Z9write_bmpRSoRK6Screen+0x135>
  // Header
  out.put(0x28); out.put(0x00); out.put(0x00); out.put(0x00);  // 40 bytes Number of bytes in the DIB header (from this point)
     3df:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3e3:	be 28 00 00 00       	mov    $0x28,%esi
     3e8:	48 89 c7             	mov    %rax,%rdi
     3eb:	e8 00 00 00 00       	callq  3f0 <_Z9write_bmpRSoRK6Screen+0x146>
     3f0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     3f4:	be 00 00 00 00       	mov    $0x0,%esi
     3f9:	48 89 c7             	mov    %rax,%rdi
     3fc:	e8 00 00 00 00       	callq  401 <_Z9write_bmpRSoRK6Screen+0x157>
     401:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     405:	be 00 00 00 00       	mov    $0x0,%esi
     40a:	48 89 c7             	mov    %rax,%rdi
     40d:	e8 00 00 00 00       	callq  412 <_Z9write_bmpRSoRK6Screen+0x168>
     412:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     416:	be 00 00 00 00       	mov    $0x0,%esi
     41b:	48 89 c7             	mov    %rax,%rdi
     41e:	e8 00 00 00 00       	callq  423 <_Z9write_bmpRSoRK6Screen+0x179>
  out.put( screen.getWidth() & 0xFF ); out.put( screen.getWidth() >> 8 & 0xFF );
     423:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     427:	48 89 c7             	mov    %rax,%rdi
     42a:	e8 00 00 00 00       	callq  42f <_Z9write_bmpRSoRK6Screen+0x185>
     42f:	0f be d0             	movsbl %al,%edx
     432:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     436:	89 d6                	mov    %edx,%esi
     438:	48 89 c7             	mov    %rax,%rdi
     43b:	e8 00 00 00 00       	callq  440 <_Z9write_bmpRSoRK6Screen+0x196>
     440:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     444:	48 89 c7             	mov    %rax,%rdi
     447:	e8 00 00 00 00       	callq  44c <_Z9write_bmpRSoRK6Screen+0x1a2>
     44c:	48 c1 e8 08          	shr    $0x8,%rax
     450:	0f be d0             	movsbl %al,%edx
     453:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     457:	89 d6                	mov    %edx,%esi
     459:	48 89 c7             	mov    %rax,%rdi
     45c:	e8 00 00 00 00       	callq  461 <_Z9write_bmpRSoRK6Screen+0x1b7>
  out.put(0x00); out.put(0x00); // width in pixel
     461:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     465:	be 00 00 00 00       	mov    $0x0,%esi
     46a:	48 89 c7             	mov    %rax,%rdi
     46d:	e8 00 00 00 00       	callq  472 <_Z9write_bmpRSoRK6Screen+0x1c8>
     472:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     476:	be 00 00 00 00       	mov    $0x0,%esi
     47b:	48 89 c7             	mov    %rax,%rdi
     47e:	e8 00 00 00 00       	callq  483 <_Z9write_bmpRSoRK6Screen+0x1d9>
  out.put( screen.getHeight() & 0xFF ); out.put( screen.getHeight() >> 8 & 0xFF );
     483:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     487:	48 89 c7             	mov    %rax,%rdi
     48a:	e8 00 00 00 00       	callq  48f <_Z9write_bmpRSoRK6Screen+0x1e5>
     48f:	0f be d0             	movsbl %al,%edx
     492:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     496:	89 d6                	mov    %edx,%esi
     498:	48 89 c7             	mov    %rax,%rdi
     49b:	e8 00 00 00 00       	callq  4a0 <_Z9write_bmpRSoRK6Screen+0x1f6>
     4a0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     4a4:	48 89 c7             	mov    %rax,%rdi
     4a7:	e8 00 00 00 00       	callq  4ac <_Z9write_bmpRSoRK6Screen+0x202>
     4ac:	48 c1 e8 08          	shr    $0x8,%rax
     4b0:	0f be d0             	movsbl %al,%edx
     4b3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4b7:	89 d6                	mov    %edx,%esi
     4b9:	48 89 c7             	mov    %rax,%rdi
     4bc:	e8 00 00 00 00       	callq  4c1 <_Z9write_bmpRSoRK6Screen+0x217>
  out.put(0x00); out.put(0x00); // height in pixel
     4c1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4c5:	be 00 00 00 00       	mov    $0x0,%esi
     4ca:	48 89 c7             	mov    %rax,%rdi
     4cd:	e8 00 00 00 00       	callq  4d2 <_Z9write_bmpRSoRK6Screen+0x228>
     4d2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4d6:	be 00 00 00 00       	mov    $0x0,%esi
     4db:	48 89 c7             	mov    %rax,%rdi
     4de:	e8 00 00 00 00       	callq  4e3 <_Z9write_bmpRSoRK6Screen+0x239>
  out.put(0x01); out.put(0x00); // 1 = number of color planes used
     4e3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4e7:	be 01 00 00 00       	mov    $0x1,%esi
     4ec:	48 89 c7             	mov    %rax,%rdi
     4ef:	e8 00 00 00 00       	callq  4f4 <_Z9write_bmpRSoRK6Screen+0x24a>
     4f4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     4f8:	be 00 00 00 00       	mov    $0x0,%esi
     4fd:	48 89 c7             	mov    %rax,%rdi
     500:	e8 00 00 00 00       	callq  505 <_Z9write_bmpRSoRK6Screen+0x25b>
  out.put(0x18); out.put(0x00); // 24 bits per pixel (RGB)
     505:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     509:	be 18 00 00 00       	mov    $0x18,%esi
     50e:	48 89 c7             	mov    %rax,%rdi
     511:	e8 00 00 00 00       	callq  516 <_Z9write_bmpRSoRK6Screen+0x26c>
     516:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     51a:	be 00 00 00 00       	mov    $0x0,%esi
     51f:	48 89 c7             	mov    %rax,%rdi
     522:	e8 00 00 00 00       	callq  527 <_Z9write_bmpRSoRK6Screen+0x27d>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = no compression
     527:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     52b:	be 00 00 00 00       	mov    $0x0,%esi
     530:	48 89 c7             	mov    %rax,%rdi
     533:	e8 00 00 00 00       	callq  538 <_Z9write_bmpRSoRK6Screen+0x28e>
     538:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     53c:	be 00 00 00 00       	mov    $0x0,%esi
     541:	48 89 c7             	mov    %rax,%rdi
     544:	e8 00 00 00 00       	callq  549 <_Z9write_bmpRSoRK6Screen+0x29f>
     549:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     54d:	be 00 00 00 00       	mov    $0x0,%esi
     552:	48 89 c7             	mov    %rax,%rdi
     555:	e8 00 00 00 00       	callq  55a <_Z9write_bmpRSoRK6Screen+0x2b0>
     55a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     55e:	be 00 00 00 00       	mov    $0x0,%esi
     563:	48 89 c7             	mov    %rax,%rdi
     566:	e8 00 00 00 00       	callq  56b <_Z9write_bmpRSoRK6Screen+0x2c1>
  // size of raw bitmap data 16 bytes
  out.put(size_of_bitmap_data & 0xFF); 
     56b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     56f:	0f be d0             	movsbl %al,%edx
     572:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     576:	89 d6                	mov    %edx,%esi
     578:	48 89 c7             	mov    %rax,%rdi
     57b:	e8 00 00 00 00       	callq  580 <_Z9write_bmpRSoRK6Screen+0x2d6>
  out.put(size_of_bitmap_data >> 8 & 0xFF); 
     580:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     584:	48 c1 e8 08          	shr    $0x8,%rax
     588:	0f be d0             	movsbl %al,%edx
     58b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     58f:	89 d6                	mov    %edx,%esi
     591:	48 89 c7             	mov    %rax,%rdi
     594:	e8 00 00 00 00       	callq  599 <_Z9write_bmpRSoRK6Screen+0x2ef>
  out.put(size_of_bitmap_data >> 16 & 0xFF); 
     599:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     59d:	48 c1 e8 10          	shr    $0x10,%rax
     5a1:	0f be d0             	movsbl %al,%edx
     5a4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5a8:	89 d6                	mov    %edx,%esi
     5aa:	48 89 c7             	mov    %rax,%rdi
     5ad:	e8 00 00 00 00       	callq  5b2 <_Z9write_bmpRSoRK6Screen+0x308>
  out.put(size_of_bitmap_data >> 32 & 0xFF); 
     5b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     5b6:	48 c1 e8 20          	shr    $0x20,%rax
     5ba:	0f be d0             	movsbl %al,%edx
     5bd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5c1:	89 d6                	mov    %edx,%esi
     5c3:	48 89 c7             	mov    %rax,%rdi
     5c6:	e8 00 00 00 00       	callq  5cb <_Z9write_bmpRSoRK6Screen+0x321>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); // 72 DPI resolution for printing
     5cb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5cf:	be 13 00 00 00       	mov    $0x13,%esi
     5d4:	48 89 c7             	mov    %rax,%rdi
     5d7:	e8 00 00 00 00       	callq  5dc <_Z9write_bmpRSoRK6Screen+0x332>
     5dc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5e0:	be 0b 00 00 00       	mov    $0xb,%esi
     5e5:	48 89 c7             	mov    %rax,%rdi
     5e8:	e8 00 00 00 00       	callq  5ed <_Z9write_bmpRSoRK6Screen+0x343>
     5ed:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     5f1:	be 00 00 00 00       	mov    $0x0,%esi
     5f6:	48 89 c7             	mov    %rax,%rdi
     5f9:	e8 00 00 00 00       	callq  5fe <_Z9write_bmpRSoRK6Screen+0x354>
     5fe:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     602:	be 00 00 00 00       	mov    $0x0,%esi
     607:	48 89 c7             	mov    %rax,%rdi
     60a:	e8 00 00 00 00       	callq  60f <_Z9write_bmpRSoRK6Screen+0x365>
  out.put(0x13); out.put(0x0B); out.put(0x00); out.put(0x00); //           "
     60f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     613:	be 13 00 00 00       	mov    $0x13,%esi
     618:	48 89 c7             	mov    %rax,%rdi
     61b:	e8 00 00 00 00       	callq  620 <_Z9write_bmpRSoRK6Screen+0x376>
     620:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     624:	be 0b 00 00 00       	mov    $0xb,%esi
     629:	48 89 c7             	mov    %rax,%rdi
     62c:	e8 00 00 00 00       	callq  631 <_Z9write_bmpRSoRK6Screen+0x387>
     631:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     635:	be 00 00 00 00       	mov    $0x0,%esi
     63a:	48 89 c7             	mov    %rax,%rdi
     63d:	e8 00 00 00 00       	callq  642 <_Z9write_bmpRSoRK6Screen+0x398>
     642:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     646:	be 00 00 00 00       	mov    $0x0,%esi
     64b:	48 89 c7             	mov    %rax,%rdi
     64e:	e8 00 00 00 00       	callq  653 <_Z9write_bmpRSoRK6Screen+0x3a9>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 colors in the palette
     653:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     657:	be 00 00 00 00       	mov    $0x0,%esi
     65c:	48 89 c7             	mov    %rax,%rdi
     65f:	e8 00 00 00 00       	callq  664 <_Z9write_bmpRSoRK6Screen+0x3ba>
     664:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     668:	be 00 00 00 00       	mov    $0x0,%esi
     66d:	48 89 c7             	mov    %rax,%rdi
     670:	e8 00 00 00 00       	callq  675 <_Z9write_bmpRSoRK6Screen+0x3cb>
     675:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     679:	be 00 00 00 00       	mov    $0x0,%esi
     67e:	48 89 c7             	mov    %rax,%rdi
     681:	e8 00 00 00 00       	callq  686 <_Z9write_bmpRSoRK6Screen+0x3dc>
     686:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     68a:	be 00 00 00 00       	mov    $0x0,%esi
     68f:	48 89 c7             	mov    %rax,%rdi
     692:	e8 00 00 00 00       	callq  697 <_Z9write_bmpRSoRK6Screen+0x3ed>
  out.put(0x00); out.put(0x00); out.put(0x00); out.put(0x00); // 0 = all colors are important
     697:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     69b:	be 00 00 00 00       	mov    $0x0,%esi
     6a0:	48 89 c7             	mov    %rax,%rdi
     6a3:	e8 00 00 00 00       	callq  6a8 <_Z9write_bmpRSoRK6Screen+0x3fe>
     6a8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6ac:	be 00 00 00 00       	mov    $0x0,%esi
     6b1:	48 89 c7             	mov    %rax,%rdi
     6b4:	e8 00 00 00 00       	callq  6b9 <_Z9write_bmpRSoRK6Screen+0x40f>
     6b9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6bd:	be 00 00 00 00       	mov    $0x0,%esi
     6c2:	48 89 c7             	mov    %rax,%rdi
     6c5:	e8 00 00 00 00       	callq  6ca <_Z9write_bmpRSoRK6Screen+0x420>
     6ca:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     6ce:	be 00 00 00 00       	mov    $0x0,%esi
     6d3:	48 89 c7             	mov    %rax,%rdi
     6d6:	e8 00 00 00 00       	callq  6db <_Z9write_bmpRSoRK6Screen+0x431>
  // start of pixel map array, 4 byte alignment padding at end of line if nedded
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     6db:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
     6e2:	00 
     6e3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     6e7:	48 89 c7             	mov    %rax,%rdi
     6ea:	e8 00 00 00 00       	callq  6ef <_Z9write_bmpRSoRK6Screen+0x445>
     6ef:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
     6f3:	0f 92 c0             	setb   %al
     6f6:	84 c0                	test   %al,%al
     6f8:	0f 84 af 01 00 00    	je     8ad <_Z9write_bmpRSoRK6Screen+0x603>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     6fe:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     705:	00 
     706:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     70a:	48 89 c7             	mov    %rax,%rdi
     70d:	e8 00 00 00 00       	callq  712 <_Z9write_bmpRSoRK6Screen+0x468>
     712:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
     716:	0f 92 c0             	setb   %al
     719:	84 c0                	test   %al,%al
     71b:	0f 84 48 01 00 00    	je     869 <_Z9write_bmpRSoRK6Screen+0x5bf>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getRed() * 255.0) ) & 0xFF );
     721:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     725:	48 89 c7             	mov    %rax,%rdi
     728:	e8 00 00 00 00       	callq  72d <_Z9write_bmpRSoRK6Screen+0x483>
     72d:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     731:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     735:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     739:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     73d:	48 89 ce             	mov    %rcx,%rsi
     740:	48 89 c7             	mov    %rax,%rdi
     743:	e8 00 00 00 00       	callq  748 <_Z9write_bmpRSoRK6Screen+0x49e>
     748:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     74d:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     751:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     755:	c5 fa 11 45 e4       	vmovss %xmm0,-0x1c(%rbp)
     75a:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     75e:	48 89 c7             	mov    %rax,%rdi
     761:	e8 00 00 00 00       	callq  766 <_Z9write_bmpRSoRK6Screen+0x4bc>
     766:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     76a:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 772 <_Z9write_bmpRSoRK6Screen+0x4c8>
     771:	00 
     772:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     776:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     77a:	0f be d0             	movsbl %al,%edx
     77d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     781:	89 d6                	mov    %edx,%esi
     783:	48 89 c7             	mov    %rax,%rdi
     786:	e8 00 00 00 00       	callq  78b <_Z9write_bmpRSoRK6Screen+0x4e1>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getGreen() * 255.0) ) & 0xFF );
     78b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     78f:	48 89 c7             	mov    %rax,%rdi
     792:	e8 00 00 00 00       	callq  797 <_Z9write_bmpRSoRK6Screen+0x4ed>
     797:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     79b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     79f:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     7a3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7a7:	48 89 ce             	mov    %rcx,%rsi
     7aa:	48 89 c7             	mov    %rax,%rdi
     7ad:	e8 00 00 00 00       	callq  7b2 <_Z9write_bmpRSoRK6Screen+0x508>
     7b2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     7b7:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     7bb:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     7bf:	c5 fa 11 45 e4       	vmovss %xmm0,-0x1c(%rbp)
     7c4:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     7c8:	48 89 c7             	mov    %rax,%rdi
     7cb:	e8 00 00 00 00       	callq  7d0 <_Z9write_bmpRSoRK6Screen+0x526>
     7d0:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     7d4:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 7dc <_Z9write_bmpRSoRK6Screen+0x532>
     7db:	00 
     7dc:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     7e0:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     7e4:	0f be d0             	movsbl %al,%edx
     7e7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     7eb:	89 d6                	mov    %edx,%esi
     7ed:	48 89 c7             	mov    %rax,%rdi
     7f0:	e8 00 00 00 00       	callq  7f5 <_Z9write_bmpRSoRK6Screen+0x54b>
      out.put( ((unsigned short) (screen.getPixel(x, screen.getHeight() - 1 - y).getBlue() * 255.0) ) & 0xFF );
     7f5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     7f9:	48 89 c7             	mov    %rax,%rdi
     7fc:	e8 00 00 00 00       	callq  801 <_Z9write_bmpRSoRK6Screen+0x557>
     801:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
     805:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     809:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
     80d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     811:	48 89 ce             	mov    %rcx,%rsi
     814:	48 89 c7             	mov    %rax,%rdi
     817:	e8 00 00 00 00       	callq  81c <_Z9write_bmpRSoRK6Screen+0x572>
     81c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
     821:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
     825:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
     829:	c5 fa 11 45 e4       	vmovss %xmm0,-0x1c(%rbp)
     82e:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
     832:	48 89 c7             	mov    %rax,%rdi
     835:	e8 00 00 00 00       	callq  83a <_Z9write_bmpRSoRK6Screen+0x590>
     83a:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
     83e:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 846 <_Z9write_bmpRSoRK6Screen+0x59c>
     845:	00 
     846:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
     84a:	c5 fb 2c c0          	vcvttsd2si %xmm0,%eax
     84e:	0f be d0             	movsbl %al,%edx
     851:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     855:	89 d6                	mov    %edx,%esi
     857:	48 89 c7             	mov    %rax,%rdi
     85a:	e8 00 00 00 00       	callq  85f <_Z9write_bmpRSoRK6Screen+0x5b5>
    for (size_t x = 0u; x < screen.getWidth(); x++) {
     85f:	48 83 45 c0 01       	addq   $0x1,-0x40(%rbp)
     864:	e9 9d fe ff ff       	jmpq   706 <_Z9write_bmpRSoRK6Screen+0x45c>
    }
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     869:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
     870:	00 
     871:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     875:	48 89 c7             	mov    %rax,%rdi
     878:	e8 00 00 00 00       	callq  87d <_Z9write_bmpRSoRK6Screen+0x5d3>
     87d:	83 e0 03             	and    $0x3,%eax
     880:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
     884:	0f 92 c0             	setb   %al
     887:	84 c0                	test   %al,%al
     889:	74 18                	je     8a3 <_Z9write_bmpRSoRK6Screen+0x5f9>
      out.put( 0x00 );
     88b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     88f:	be 00 00 00 00       	mov    $0x0,%esi
     894:	48 89 c7             	mov    %rax,%rdi
     897:	e8 00 00 00 00       	callq  89c <_Z9write_bmpRSoRK6Screen+0x5f2>
    for (size_t padding_bytes = 0u; padding_bytes < screen.getWidth() % 4; padding_bytes++) {
     89c:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
     8a1:	eb ce                	jmp    871 <_Z9write_bmpRSoRK6Screen+0x5c7>
  for (size_t y = 0u; y < screen.getHeight(); y++ ) {
     8a3:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
     8a8:	e9 36 fe ff ff       	jmpq   6e3 <_Z9write_bmpRSoRK6Screen+0x439>
    }
  } 
}
     8ad:	90                   	nop
     8ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8b2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     8b9:	00 00 
     8bb:	74 05                	je     8c2 <_Z9write_bmpRSoRK6Screen+0x618>
     8bd:	e8 00 00 00 00       	callq  8c2 <_Z9write_bmpRSoRK6Screen+0x618>
     8c2:	48 83 c4 58          	add    $0x58,%rsp
     8c6:	5b                   	pop    %rbx
     8c7:	5d                   	pop    %rbp
     8c8:	c3                   	retq   

00000000000008c9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene>:

// Reads in 3d scene from Wavefront.obj
// only triangles are read in, no polygones, no normals
// only lines starting with v (vertexes) and f (faces) are read in
// other lines are ignored
void read_wavefront(std::ifstream & in, Scene & scene) {
     8c9:	55                   	push   %rbp
     8ca:	48 89 e5             	mov    %rsp,%rbp
     8cd:	41 57                	push   %r15
     8cf:	41 56                	push   %r14
     8d1:	41 55                	push   %r13
     8d3:	41 54                	push   %r12
     8d5:	53                   	push   %rbx
     8d6:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
     8dd:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
     8e4:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
     8eb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     8f2:	00 00 
     8f4:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     8f8:	31 c0                	xor    %eax,%eax
  std::vector< Vector<FLOAT, 3> > vertices;
     8fa:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     901:	48 89 c7             	mov    %rax,%rdi
     904:	e8 00 00 00 00       	callq  909 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x40>
  std::vector< Vector<FLOAT, 3> > normals;
     909:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     910:	48 89 c7             	mov    %rax,%rdi
     913:	e8 00 00 00 00       	callq  918 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4f>
  size_t no_of_triangles = 0u;
     918:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
     91f:	00 00 00 00 
  Vector<FLOAT, 3> vertice;
     923:	48 8d 85 5c ff ff ff 	lea    -0xa4(%rbp),%rax
     92a:	48 89 c7             	mov    %rax,%rdi
     92d:	e8 00 00 00 00       	callq  932 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x69>
  Vector<FLOAT, 3> normal;
     932:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
     939:	48 89 c7             	mov    %rax,%rdi
     93c:	e8 00 00 00 00       	callq  941 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x78>
  char c;
  while (in >> c) {
     941:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     948:	48 8d 95 e7 fe ff ff 	lea    -0x119(%rbp),%rdx
     94f:	48 89 d6             	mov    %rdx,%rsi
     952:	48 89 c7             	mov    %rax,%rdi
     955:	e8 00 00 00 00       	callq  95a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x91>
     95a:	48 8b 10             	mov    (%rax),%rdx
     95d:	48 83 ea 18          	sub    $0x18,%rdx
     961:	48 8b 12             	mov    (%rdx),%rdx
     964:	48 01 d0             	add    %rdx,%rax
     967:	48 89 c7             	mov    %rax,%rdi
     96a:	e8 00 00 00 00       	callq  96f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xa6>
     96f:	84 c0                	test   %al,%al
     971:	0f 84 77 07 00 00    	je     10ee <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x825>
    if (c == 'v' && in.peek() == ' ') {
     977:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     97e:	3c 76                	cmp    $0x76,%al
     980:	75 1b                	jne    99d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd4>
     982:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     989:	48 89 c7             	mov    %rax,%rdi
     98c:	e8 00 00 00 00       	callq  991 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xc8>
     991:	83 f8 20             	cmp    $0x20,%eax
     994:	75 07                	jne    99d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd4>
     996:	b8 01 00 00 00       	mov    $0x1,%eax
     99b:	eb 05                	jmp    9a2 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xd9>
     99d:	b8 00 00 00 00       	mov    $0x0,%eax
     9a2:	84 c0                	test   %al,%al
     9a4:	0f 84 e9 00 00 00    	je     a93 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1ca>
       FLOAT x, y, z;
       in >> x;
     9aa:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9b1:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     9b8:	48 89 d6             	mov    %rdx,%rsi
     9bb:	48 89 c7             	mov    %rax,%rdi
     9be:	e8 00 00 00 00       	callq  9c3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0xfa>
       in >> y;
     9c3:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9ca:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
     9d1:	48 89 d6             	mov    %rdx,%rsi
     9d4:	48 89 c7             	mov    %rax,%rdi
     9d7:	e8 00 00 00 00       	callq  9dc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x113>
       in >> z;
     9dc:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     9e3:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     9ea:	48 89 d6             	mov    %rdx,%rsi
     9ed:	48 89 c7             	mov    %rax,%rdi
     9f0:	e8 00 00 00 00       	callq  9f5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x12c>
       vertice = Vector<FLOAT, 3>( {x, y, z} );
     9f5:	c5 fa 10 85 00 ff ff 	vmovss -0x100(%rbp),%xmm0
     9fc:	ff 
     9fd:	c5 fa 11 85 74 ff ff 	vmovss %xmm0,-0x8c(%rbp)
     a04:	ff 
     a05:	c5 fa 10 85 08 ff ff 	vmovss -0xf8(%rbp),%xmm0
     a0c:	ff 
     a0d:	c5 fa 11 85 78 ff ff 	vmovss %xmm0,-0x88(%rbp)
     a14:	ff 
     a15:	c5 fa 10 85 10 ff ff 	vmovss -0xf0(%rbp),%xmm0
     a1c:	ff 
     a1d:	c5 fa 11 85 7c ff ff 	vmovss %xmm0,-0x84(%rbp)
     a24:	ff 
     a25:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
     a2c:	48 89 85 b0 fe ff ff 	mov    %rax,-0x150(%rbp)
     a33:	48 c7 85 b8 fe ff ff 	movq   $0x3,-0x148(%rbp)
     a3a:	03 00 00 00 
     a3e:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
     a45:	48 8b 95 b8 fe ff ff 	mov    -0x148(%rbp),%rdx
     a4c:	48 89 c1             	mov    %rax,%rcx
     a4f:	48 89 d3             	mov    %rdx,%rbx
     a52:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     a56:	48 89 ce             	mov    %rcx,%rsi
     a59:	48 89 c7             	mov    %rax,%rdi
     a5c:	e8 00 00 00 00       	callq  a61 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x198>
     a61:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     a65:	48 89 85 5c ff ff ff 	mov    %rax,-0xa4(%rbp)
     a6c:	8b 45 88             	mov    -0x78(%rbp),%eax
     a6f:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
       vertices.push_back( vertice ); 
     a75:	48 8d 95 5c ff ff ff 	lea    -0xa4(%rbp),%rdx
     a7c:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     a83:	48 89 d6             	mov    %rdx,%rsi
     a86:	48 89 c7             	mov    %rax,%rdi
     a89:	e8 00 00 00 00       	callq  a8e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1c5>
     a8e:	e9 3a 06 00 00       	jmpq   10cd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
    } else if (c == 'f' && in.peek() == ' ') {
     a93:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     a9a:	3c 66                	cmp    $0x66,%al
     a9c:	75 1b                	jne    ab9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f0>
     a9e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     aa5:	48 89 c7             	mov    %rax,%rdi
     aa8:	e8 00 00 00 00       	callq  aad <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1e4>
     aad:	83 f8 20             	cmp    $0x20,%eax
     ab0:	75 07                	jne    ab9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f0>
     ab2:	b8 01 00 00 00       	mov    $0x1,%eax
     ab7:	eb 05                	jmp    abe <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x1f5>
     ab9:	b8 00 00 00 00       	mov    $0x0,%eax
     abe:	84 c0                	test   %al,%al
     ac0:	0f 84 ba 04 00 00    	je     f80 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6b7>

       size_t xv, yv, zv;
       size_t xn = 0, yn, zn;
     ac6:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
     acd:	00 00 00 00 
       in >> xv;
     ad1:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     ad8:	48 8d 95 e8 fe ff ff 	lea    -0x118(%rbp),%rdx
     adf:	48 89 d6             	mov    %rdx,%rsi
     ae2:	48 89 c7             	mov    %rax,%rdi
     ae5:	e8 00 00 00 00       	callq  aea <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x221>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     aea:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     af1:	48 89 c7             	mov    %rax,%rdi
     af4:	e8 00 00 00 00       	callq  af9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x230>
     af9:	83 f8 2f             	cmp    $0x2f,%eax
     afc:	0f 94 c0             	sete   %al
     aff:	84 c0                	test   %al,%al
     b01:	74 0f                	je     b12 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x249>
     b03:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b0a:	48 89 c7             	mov    %rax,%rdi
     b0d:	e8 00 00 00 00       	callq  b12 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x249>
       if (in.peek() == '/') { in.ignore(); in >> xn;}
     b12:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b19:	48 89 c7             	mov    %rax,%rdi
     b1c:	e8 00 00 00 00       	callq  b21 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x258>
     b21:	83 f8 2f             	cmp    $0x2f,%eax
     b24:	0f 94 c0             	sete   %al
     b27:	84 c0                	test   %al,%al
     b29:	74 28                	je     b53 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x28a>
     b2b:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b32:	48 89 c7             	mov    %rax,%rdi
     b35:	e8 00 00 00 00       	callq  b3a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x271>
     b3a:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b41:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     b48:	48 89 d6             	mov    %rdx,%rsi
     b4b:	48 89 c7             	mov    %rax,%rdi
     b4e:	e8 00 00 00 00       	callq  b53 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x28a>
       in >> yv;
     b53:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b5a:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
     b61:	48 89 d6             	mov    %rdx,%rsi
     b64:	48 89 c7             	mov    %rax,%rdi
     b67:	e8 00 00 00 00       	callq  b6c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2a3>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     b6c:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b73:	48 89 c7             	mov    %rax,%rdi
     b76:	e8 00 00 00 00       	callq  b7b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2b2>
     b7b:	83 f8 2f             	cmp    $0x2f,%eax
     b7e:	0f 94 c0             	sete   %al
     b81:	84 c0                	test   %al,%al
     b83:	74 0f                	je     b94 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2cb>
     b85:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b8c:	48 89 c7             	mov    %rax,%rdi
     b8f:	e8 00 00 00 00       	callq  b94 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2cb>
       if (in.peek() == '/') { in.ignore(); in >> yn;}
     b94:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     b9b:	48 89 c7             	mov    %rax,%rdi
     b9e:	e8 00 00 00 00       	callq  ba3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2da>
     ba3:	83 f8 2f             	cmp    $0x2f,%eax
     ba6:	0f 94 c0             	sete   %al
     ba9:	84 c0                	test   %al,%al
     bab:	74 28                	je     bd5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x30c>
     bad:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bb4:	48 89 c7             	mov    %rax,%rdi
     bb7:	e8 00 00 00 00       	callq  bbc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x2f3>
     bbc:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bc3:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
     bca:	48 89 d6             	mov    %rdx,%rsi
     bcd:	48 89 c7             	mov    %rax,%rdi
     bd0:	e8 00 00 00 00       	callq  bd5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x30c>
       in >> zv;
     bd5:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bdc:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
     be3:	48 89 d6             	mov    %rdx,%rsi
     be6:	48 89 c7             	mov    %rax,%rdi
     be9:	e8 00 00 00 00       	callq  bee <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x325>
       if (in.peek() == '/') in.ignore(); // no texture coordinates supported
     bee:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     bf5:	48 89 c7             	mov    %rax,%rdi
     bf8:	e8 00 00 00 00       	callq  bfd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x334>
     bfd:	83 f8 2f             	cmp    $0x2f,%eax
     c00:	0f 94 c0             	sete   %al
     c03:	84 c0                	test   %al,%al
     c05:	74 0f                	je     c16 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x34d>
     c07:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c0e:	48 89 c7             	mov    %rax,%rdi
     c11:	e8 00 00 00 00       	callq  c16 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x34d>
       if (in.peek() == '/') { in.ignore(); in >> zn;}
     c16:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c1d:	48 89 c7             	mov    %rax,%rdi
     c20:	e8 00 00 00 00       	callq  c25 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x35c>
     c25:	83 f8 2f             	cmp    $0x2f,%eax
     c28:	0f 94 c0             	sete   %al
     c2b:	84 c0                	test   %al,%al
     c2d:	74 28                	je     c57 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
     c2f:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c36:	48 89 c7             	mov    %rax,%rdi
     c39:	e8 00 00 00 00       	callq  c3e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x375>
     c3e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     c45:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     c4c:	48 89 d6             	mov    %rdx,%rsi
     c4f:	48 89 c7             	mov    %rax,%rdi
     c52:	e8 00 00 00 00       	callq  c57 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x38e>
       
       if (reverse_vertice_order) {
     c57:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # c5e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x395>
     c5e:	84 c0                	test   %al,%al
     c60:	74 32                	je     c94 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3cb>
         std::swap(yv, zv);
     c62:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
     c69:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
     c70:	48 89 d6             	mov    %rdx,%rsi
     c73:	48 89 c7             	mov    %rax,%rdi
     c76:	e8 00 00 00 00       	callq  c7b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3b2>
         std::swap(yn, zn);
     c7b:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
     c82:	48 8d 85 08 ff ff ff 	lea    -0xf8(%rbp),%rax
     c89:	48 89 d6             	mov    %rdx,%rsi
     c8c:	48 89 c7             	mov    %rax,%rdi
     c8f:	e8 00 00 00 00       	callq  c94 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3cb>
       }
       if (xn == 0) { // no normals 
     c94:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
     c9b:	48 85 c0             	test   %rax,%rax
     c9e:	0f 85 10 01 00 00    	jne    db4 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4eb>
         scene.add(Triangle<FLOAT> ( {vertices[xv - 1], vertices[yv - 1], vertices[zv - 1]} ));
     ca4:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     cab:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     caf:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cb6:	48 89 d6             	mov    %rdx,%rsi
     cb9:	48 89 c7             	mov    %rax,%rdi
     cbc:	e8 00 00 00 00       	callq  cc1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x3f8>
     cc1:	48 89 c3             	mov    %rax,%rbx
     cc4:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     ccb:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     ccf:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cd6:	48 89 d6             	mov    %rdx,%rsi
     cd9:	48 89 c7             	mov    %rax,%rdi
     cdc:	e8 00 00 00 00       	callq  ce1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x418>
     ce1:	49 89 c4             	mov    %rax,%r12
     ce4:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     ceb:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     cef:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     cf6:	48 89 d6             	mov    %rdx,%rsi
     cf9:	48 89 c7             	mov    %rax,%rdi
     cfc:	e8 00 00 00 00       	callq  d01 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x438>
     d01:	4c 8b 08             	mov    (%rax),%r9
     d04:	44 8b 40 08          	mov    0x8(%rax),%r8d
     d08:	49 8b 3c 24          	mov    (%r12),%rdi
     d0c:	41 8b 74 24 08       	mov    0x8(%r12),%esi
     d11:	48 8b 0b             	mov    (%rbx),%rcx
     d14:	8b 53 08             	mov    0x8(%rbx),%edx
     d17:	48 8d 45 80          	lea    -0x80(%rbp),%rax
     d1b:	4c 89 8d a8 fe ff ff 	mov    %r9,-0x158(%rbp)
     d22:	c5 fa 7e a5 a8 fe ff 	vmovq  -0x158(%rbp),%xmm4
     d29:	ff 
     d2a:	4c 89 85 a8 fe ff ff 	mov    %r8,-0x158(%rbp)
     d31:	c5 fa 7e ad a8 fe ff 	vmovq  -0x158(%rbp),%xmm5
     d38:	ff 
     d39:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
     d40:	c5 fa 7e 95 a8 fe ff 	vmovq  -0x158(%rbp),%xmm2
     d47:	ff 
     d48:	48 89 b5 a8 fe ff ff 	mov    %rsi,-0x158(%rbp)
     d4f:	c5 fa 7e 9d a8 fe ff 	vmovq  -0x158(%rbp),%xmm3
     d56:	ff 
     d57:	48 89 8d a8 fe ff ff 	mov    %rcx,-0x158(%rbp)
     d5e:	c5 fa 7e 85 a8 fe ff 	vmovq  -0x158(%rbp),%xmm0
     d65:	ff 
     d66:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
     d6d:	c5 fa 7e 8d a8 fe ff 	vmovq  -0x158(%rbp),%xmm1
     d74:	ff 
     d75:	48 89 c7             	mov    %rax,%rdi
     d78:	e8 00 00 00 00       	callq  d7d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4b4>
     d7d:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     d84:	48 83 ec 08          	sub    $0x8,%rsp
     d88:	ff 75 c0             	pushq  -0x40(%rbp)
     d8b:	ff 75 b8             	pushq  -0x48(%rbp)
     d8e:	ff 75 b0             	pushq  -0x50(%rbp)
     d91:	ff 75 a8             	pushq  -0x58(%rbp)
     d94:	ff 75 a0             	pushq  -0x60(%rbp)
     d97:	ff 75 98             	pushq  -0x68(%rbp)
     d9a:	ff 75 90             	pushq  -0x70(%rbp)
     d9d:	ff 75 88             	pushq  -0x78(%rbp)
     da0:	ff 75 80             	pushq  -0x80(%rbp)
     da3:	48 89 c7             	mov    %rax,%rdi
     da6:	e8 00 00 00 00       	callq  dab <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x4e2>
     dab:	48 83 c4 50          	add    $0x50,%rsp
     daf:	e9 bf 01 00 00       	jmpq   f73 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6aa>
       } else {
         scene.add(Triangle<FLOAT> ( {vertices[xv - 1], vertices[yv - 1], vertices[zv - 1], normals[xn - 1], normals[yn - 1], normals[zn - 1]} ));
     db4:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
     dbb:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     dbf:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     dc6:	48 89 d6             	mov    %rdx,%rsi
     dc9:	48 89 c7             	mov    %rax,%rdi
     dcc:	e8 00 00 00 00       	callq  dd1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x508>
     dd1:	48 89 c3             	mov    %rax,%rbx
     dd4:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
     ddb:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     ddf:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     de6:	48 89 d6             	mov    %rdx,%rsi
     de9:	48 89 c7             	mov    %rax,%rdi
     dec:	e8 00 00 00 00       	callq  df1 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x528>
     df1:	49 89 c4             	mov    %rax,%r12
     df4:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     dfb:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     dff:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
     e06:	48 89 d6             	mov    %rdx,%rsi
     e09:	48 89 c7             	mov    %rax,%rdi
     e0c:	e8 00 00 00 00       	callq  e11 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x548>
     e11:	49 89 c5             	mov    %rax,%r13
     e14:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
     e1b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e1f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e26:	48 89 d6             	mov    %rdx,%rsi
     e29:	48 89 c7             	mov    %rax,%rdi
     e2c:	e8 00 00 00 00       	callq  e31 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x568>
     e31:	49 89 c6             	mov    %rax,%r14
     e34:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
     e3b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e3f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e46:	48 89 d6             	mov    %rdx,%rsi
     e49:	48 89 c7             	mov    %rax,%rdi
     e4c:	e8 00 00 00 00       	callq  e51 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x588>
     e51:	49 89 c7             	mov    %rax,%r15
     e54:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
     e5b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
     e5f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     e66:	48 89 d6             	mov    %rdx,%rsi
     e69:	48 89 c7             	mov    %rax,%rdi
     e6c:	e8 00 00 00 00       	callq  e71 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x5a8>
     e71:	48 89 c1             	mov    %rax,%rcx
     e74:	49 8b 06             	mov    (%r14),%rax
     e77:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
     e7e:	41 8b 46 08          	mov    0x8(%r14),%eax
     e82:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
     e89:	4d 8b 75 00          	mov    0x0(%r13),%r14
     e8d:	45 8b 5d 08          	mov    0x8(%r13),%r11d
     e91:	4d 8b 14 24          	mov    (%r12),%r10
     e95:	45 8b 4c 24 08       	mov    0x8(%r12),%r9d
     e9a:	4c 8b 03             	mov    (%rbx),%r8
     e9d:	8b 7b 08             	mov    0x8(%rbx),%edi
     ea0:	48 8d 75 80          	lea    -0x80(%rbp),%rsi
     ea4:	48 83 ec 10          	sub    $0x10,%rsp
     ea8:	48 89 e2             	mov    %rsp,%rdx
     eab:	48 8b 01             	mov    (%rcx),%rax
     eae:	48 89 02             	mov    %rax,(%rdx)
     eb1:	8b 41 08             	mov    0x8(%rcx),%eax
     eb4:	89 42 08             	mov    %eax,0x8(%rdx)
     eb7:	48 83 ec 10          	sub    $0x10,%rsp
     ebb:	48 89 e2             	mov    %rsp,%rdx
     ebe:	49 8b 07             	mov    (%r15),%rax
     ec1:	48 89 02             	mov    %rax,(%rdx)
     ec4:	41 8b 47 08          	mov    0x8(%r15),%eax
     ec8:	89 42 08             	mov    %eax,0x8(%rdx)
     ecb:	c5 fa 7e b5 a8 fe ff 	vmovq  -0x158(%rbp),%xmm6
     ed2:	ff 
     ed3:	c5 fa 7e bd a0 fe ff 	vmovq  -0x160(%rbp),%xmm7
     eda:	ff 
     edb:	4c 89 b5 a8 fe ff ff 	mov    %r14,-0x158(%rbp)
     ee2:	c5 fa 7e a5 a8 fe ff 	vmovq  -0x158(%rbp),%xmm4
     ee9:	ff 
     eea:	4c 89 9d a8 fe ff ff 	mov    %r11,-0x158(%rbp)
     ef1:	c5 fa 7e ad a8 fe ff 	vmovq  -0x158(%rbp),%xmm5
     ef8:	ff 
     ef9:	4c 89 95 a8 fe ff ff 	mov    %r10,-0x158(%rbp)
     f00:	c5 fa 7e 95 a8 fe ff 	vmovq  -0x158(%rbp),%xmm2
     f07:	ff 
     f08:	4c 89 8d a8 fe ff ff 	mov    %r9,-0x158(%rbp)
     f0f:	c5 fa 7e 9d a8 fe ff 	vmovq  -0x158(%rbp),%xmm3
     f16:	ff 
     f17:	4c 89 85 a8 fe ff ff 	mov    %r8,-0x158(%rbp)
     f1e:	c5 fa 7e 85 a8 fe ff 	vmovq  -0x158(%rbp),%xmm0
     f25:	ff 
     f26:	48 89 bd a8 fe ff ff 	mov    %rdi,-0x158(%rbp)
     f2d:	c5 fa 7e 8d a8 fe ff 	vmovq  -0x158(%rbp),%xmm1
     f34:	ff 
     f35:	48 89 f7             	mov    %rsi,%rdi
     f38:	e8 00 00 00 00       	callq  f3d <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x674>
     f3d:	48 83 c4 20          	add    $0x20,%rsp
     f41:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
     f48:	48 83 ec 08          	sub    $0x8,%rsp
     f4c:	ff 75 c0             	pushq  -0x40(%rbp)
     f4f:	ff 75 b8             	pushq  -0x48(%rbp)
     f52:	ff 75 b0             	pushq  -0x50(%rbp)
     f55:	ff 75 a8             	pushq  -0x58(%rbp)
     f58:	ff 75 a0             	pushq  -0x60(%rbp)
     f5b:	ff 75 98             	pushq  -0x68(%rbp)
     f5e:	ff 75 90             	pushq  -0x70(%rbp)
     f61:	ff 75 88             	pushq  -0x78(%rbp)
     f64:	ff 75 80             	pushq  -0x80(%rbp)
     f67:	48 89 c7             	mov    %rax,%rdi
     f6a:	e8 00 00 00 00       	callq  f6f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6a6>
     f6f:	48 83 c4 50          	add    $0x50,%rsp
       }
       no_of_triangles++;
     f73:	48 83 85 18 ff ff ff 	addq   $0x1,-0xe8(%rbp)
     f7a:	01 
     f7b:	e9 4d 01 00 00       	jmpq   10cd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
    } else if (c == 'v' && in.peek() == 'n') {
     f80:	0f b6 85 e7 fe ff ff 	movzbl -0x119(%rbp),%eax
     f87:	3c 76                	cmp    $0x76,%al
     f89:	75 1b                	jne    fa6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6dd>
     f8b:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     f92:	48 89 c7             	mov    %rax,%rdi
     f95:	e8 00 00 00 00       	callq  f9a <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6d1>
     f9a:	83 f8 6e             	cmp    $0x6e,%eax
     f9d:	75 07                	jne    fa6 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6dd>
     f9f:	b8 01 00 00 00       	mov    $0x1,%eax
     fa4:	eb 05                	jmp    fab <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x6e2>
     fa6:	b8 00 00 00 00       	mov    $0x0,%eax
     fab:	84 c0                	test   %al,%al
     fad:	0f 84 1a 01 00 00    	je     10cd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
       in >> c;
     fb3:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     fba:	48 8d 95 e7 fe ff ff 	lea    -0x119(%rbp),%rdx
     fc1:	48 89 d6             	mov    %rdx,%rsi
     fc4:	48 89 c7             	mov    %rax,%rdi
     fc7:	e8 00 00 00 00       	callq  fcc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x703>
       if ( in.peek() == ' ' ) {
     fcc:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     fd3:	48 89 c7             	mov    %rax,%rdi
     fd6:	e8 00 00 00 00       	callq  fdb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x712>
     fdb:	83 f8 20             	cmp    $0x20,%eax
     fde:	0f 94 c0             	sete   %al
     fe1:	84 c0                	test   %al,%al
     fe3:	0f 84 e4 00 00 00    	je     10cd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
         FLOAT nx, ny, nz;
         in >> nx;
     fe9:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
     ff0:	48 8d 95 00 ff ff ff 	lea    -0x100(%rbp),%rdx
     ff7:	48 89 d6             	mov    %rdx,%rsi
     ffa:	48 89 c7             	mov    %rax,%rdi
     ffd:	e8 00 00 00 00       	callq  1002 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x739>
         in >> ny;
    1002:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1009:	48 8d 95 08 ff ff ff 	lea    -0xf8(%rbp),%rdx
    1010:	48 89 d6             	mov    %rdx,%rsi
    1013:	48 89 c7             	mov    %rax,%rdi
    1016:	e8 00 00 00 00       	callq  101b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x752>
         in >> nz;
    101b:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1022:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
    1029:	48 89 d6             	mov    %rdx,%rsi
    102c:	48 89 c7             	mov    %rax,%rdi
    102f:	e8 00 00 00 00       	callq  1034 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x76b>
         normal = Vector<FLOAT, 3>( {nx, ny, nz} );
    1034:	c5 fa 10 85 00 ff ff 	vmovss -0x100(%rbp),%xmm0
    103b:	ff 
    103c:	c5 fa 11 85 74 ff ff 	vmovss %xmm0,-0x8c(%rbp)
    1043:	ff 
    1044:	c5 fa 10 85 08 ff ff 	vmovss -0xf8(%rbp),%xmm0
    104b:	ff 
    104c:	c5 fa 11 85 78 ff ff 	vmovss %xmm0,-0x88(%rbp)
    1053:	ff 
    1054:	c5 fa 10 85 10 ff ff 	vmovss -0xf0(%rbp),%xmm0
    105b:	ff 
    105c:	c5 fa 11 85 7c ff ff 	vmovss %xmm0,-0x84(%rbp)
    1063:	ff 
    1064:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
    106b:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    1072:	48 c7 85 c8 fe ff ff 	movq   $0x3,-0x138(%rbp)
    1079:	03 00 00 00 
    107d:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    1084:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
    108b:	48 89 c1             	mov    %rax,%rcx
    108e:	48 89 d3             	mov    %rdx,%rbx
    1091:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1095:	48 89 ce             	mov    %rcx,%rsi
    1098:	48 89 c7             	mov    %rax,%rdi
    109b:	e8 00 00 00 00       	callq  10a0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x7d7>
    10a0:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    10a4:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    10ab:	8b 45 88             	mov    -0x78(%rbp),%eax
    10ae:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
         normals.push_back( normal );         
    10b4:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    10bb:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    10c2:	48 89 d6             	mov    %rdx,%rsi
    10c5:	48 89 c7             	mov    %rax,%rdi
    10c8:	e8 00 00 00 00       	callq  10cd <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x804>
       }
    }
    // read to end of line
    in.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    10cd:	48 8b 9d d8 fe ff ff 	mov    -0x128(%rbp),%rbx
    10d4:	e8 00 00 00 00       	callq  10d9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x810>
    10d9:	ba 0a 00 00 00       	mov    $0xa,%edx
    10de:	48 89 c6             	mov    %rax,%rsi
    10e1:	48 89 df             	mov    %rbx,%rdi
    10e4:	e8 00 00 00 00       	callq  10e9 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x820>
  while (in >> c) {
    10e9:	e9 53 f8 ff ff       	jmpq   941 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x78>
  }

  std::cerr << "no of triangles : " << no_of_triangles << std::endl;
    10ee:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 10f5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x82c>
    10f5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 10fc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x833>
    10fc:	e8 00 00 00 00       	callq  1101 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x838>
    1101:	48 89 c2             	mov    %rax,%rdx
    1104:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    110b:	48 89 c6             	mov    %rax,%rsi
    110e:	48 89 d7             	mov    %rdx,%rdi
    1111:	e8 00 00 00 00       	callq  1116 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x84d>
    1116:	48 89 c2             	mov    %rax,%rdx
    1119:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1120 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x857>
    1120:	48 89 c6             	mov    %rax,%rsi
    1123:	48 89 d7             	mov    %rdx,%rdi
    1126:	e8 00 00 00 00       	callq  112b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x862>
  std::cerr << "no of vertices : " << vertices.size() << std::endl;
    112b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1132 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x869>
    1132:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1139 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x870>
    1139:	e8 00 00 00 00       	callq  113e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x875>
    113e:	48 89 c3             	mov    %rax,%rbx
    1141:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1148:	48 89 c7             	mov    %rax,%rdi
    114b:	e8 00 00 00 00       	callq  1150 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x887>
    1150:	48 89 c6             	mov    %rax,%rsi
    1153:	48 89 df             	mov    %rbx,%rdi
    1156:	e8 00 00 00 00       	callq  115b <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x892>
    115b:	48 89 c2             	mov    %rax,%rdx
    115e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1165 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x89c>
    1165:	48 89 c6             	mov    %rax,%rsi
    1168:	48 89 d7             	mov    %rdx,%rdi
    116b:	e8 00 00 00 00       	callq  1170 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8a7>
  std::cerr << "no of normals : " << normals.size() << std::endl;
    1170:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1177 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ae>
    1177:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 117e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8b5>
    117e:	e8 00 00 00 00       	callq  1183 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ba>
    1183:	48 89 c3             	mov    %rax,%rbx
    1186:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    118d:	48 89 c7             	mov    %rax,%rdi
    1190:	e8 00 00 00 00       	callq  1195 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8cc>
    1195:	48 89 c6             	mov    %rax,%rsi
    1198:	48 89 df             	mov    %rbx,%rdi
    119b:	e8 00 00 00 00       	callq  11a0 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8d7>
    11a0:	48 89 c2             	mov    %rax,%rdx
    11a3:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11aa <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8e1>
    11aa:	48 89 c6             	mov    %rax,%rsi
    11ad:	48 89 d7             	mov    %rdx,%rdi
    11b0:	e8 00 00 00 00       	callq  11b5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ec>
  std::cerr << "memory used for all triangles [byte] : " << no_of_triangles * sizeof(Triangle<FLOAT>) << std::endl;   
    11b5:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 11bc <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8f3>
    11bc:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 11c3 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8fa>
    11c3:	e8 00 00 00 00       	callq  11c8 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x8ff>
    11c8:	48 89 c1             	mov    %rax,%rcx
    11cb:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
    11d2:	48 89 d0             	mov    %rdx,%rax
    11d5:	48 c1 e0 03          	shl    $0x3,%rax
    11d9:	48 01 d0             	add    %rdx,%rax
    11dc:	48 c1 e0 03          	shl    $0x3,%rax
    11e0:	48 89 c6             	mov    %rax,%rsi
    11e3:	48 89 cf             	mov    %rcx,%rdi
    11e6:	e8 00 00 00 00       	callq  11eb <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x922>
    11eb:	48 89 c2             	mov    %rax,%rdx
    11ee:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11f5 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x92c>
    11f5:	48 89 c6             	mov    %rax,%rsi
    11f8:	48 89 d7             	mov    %rdx,%rdi
    11fb:	e8 00 00 00 00       	callq  1200 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x937>
  std::vector< Vector<FLOAT, 3> > normals;
    1200:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    1207:	48 89 c7             	mov    %rax,%rdi
    120a:	e8 00 00 00 00       	callq  120f <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x946>
  std::vector< Vector<FLOAT, 3> > vertices;
    120f:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1216:	48 89 c7             	mov    %rax,%rdi
    1219:	e8 00 00 00 00       	callq  121e <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x955>
}
    121e:	90                   	nop
    121f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1223:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    122a:	00 00 
    122c:	74 33                	je     1261 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x998>
    122e:	eb 2c                	jmp    125c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x993>
    1230:	48 89 c3             	mov    %rax,%rbx
  std::vector< Vector<FLOAT, 3> > normals;
    1233:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    123a:	48 89 c7             	mov    %rax,%rdi
    123d:	e8 00 00 00 00       	callq  1242 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x979>
  std::vector< Vector<FLOAT, 3> > vertices;
    1242:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    1249:	48 89 c7             	mov    %rax,%rdi
    124c:	e8 00 00 00 00       	callq  1251 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x988>
    1251:	48 89 d8             	mov    %rbx,%rax
    1254:	48 89 c7             	mov    %rax,%rdi
    1257:	e8 00 00 00 00       	callq  125c <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x993>
}
    125c:	e8 00 00 00 00       	callq  1261 <_Z14read_wavefrontRSt14basic_ifstreamIcSt11char_traitsIcEER5Scene+0x998>
    1261:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    1265:	5b                   	pop    %rbx
    1266:	41 5c                	pop    %r12
    1268:	41 5d                	pop    %r13
    126a:	41 5e                	pop    %r14
    126c:	41 5f                	pop    %r15
    126e:	5d                   	pop    %rbp
    126f:	c3                   	retq   

0000000000001270 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree>:


// the raytrace algorithm but without refraction and reflection
void raytrace(Camera &camera, Scene & scene, Screen & screen, KDTree *tree = nullptr) {
    1270:	55                   	push   %rbp
    1271:	48 89 e5             	mov    %rsp,%rbp
    1274:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    127b:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    1282:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
    1289:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
    1290:	48 89 8d 60 ff ff ff 	mov    %rcx,-0xa0(%rbp)
    1297:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    129e:	00 00 
    12a0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12a4:	31 c0                	xor    %eax,%eax
  screen.clear();
    12a6:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    12aa:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    12ae:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    12b2:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    12b6:	48 89 c7             	mov    %rax,%rdi
    12b9:	e8 00 00 00 00       	callq  12be <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x4e>
    12be:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    12c2:	c5 fa 10 4d c8       	vmovss -0x38(%rbp),%xmm1
    12c7:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    12ce:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    12d5:	c5 fa 7e 85 58 ff ff 	vmovq  -0xa8(%rbp),%xmm0
    12dc:	ff 
    12dd:	48 89 c7             	mov    %rax,%rdi
    12e0:	e8 00 00 00 00       	callq  12e5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x75>
  Material material;
    12e5:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    12e9:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 12f1 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x81>
    12f0:	00 
    12f1:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 12f9 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x89>
    12f8:	00 
    12f9:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 1301 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x91>
    1300:	00 
    1301:	48 89 c7             	mov    %rax,%rdi
    1304:	e8 00 00 00 00       	callq  1309 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x99>
    1309:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    130d:	c5 fa 10 4d b8       	vmovss -0x48(%rbp),%xmm1
    1312:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1316:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
    131a:	c5 d8 57 e4          	vxorps %xmm4,%xmm4,%xmm4
    131e:	c5 fa 10 1d 00 00 00 	vmovss 0x0(%rip),%xmm3        # 1326 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xb6>
    1325:	00 
    1326:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 132e <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xbe>
    132d:	00 
    132e:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    1335:	c5 fa 7e 85 58 ff ff 	vmovq  -0xa8(%rbp),%xmm0
    133c:	ff 
    133d:	48 89 c7             	mov    %rax,%rdi
    1340:	e8 00 00 00 00       	callq  1345 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xd5>
  Color color;
    1345:	48 8d 45 a4          	lea    -0x5c(%rbp),%rax
    1349:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    134d:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    1351:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1355:	48 89 c7             	mov    %rax,%rdi
    1358:	e8 00 00 00 00       	callq  135d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xed>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    135d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1361:	c5 fa 11 45 9c       	vmovss %xmm0,-0x64(%rbp)
    1366:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    136d:	48 89 c7             	mov    %rax,%rdi
    1370:	e8 00 00 00 00       	callq  1375 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x105>
    1375:	48 85 c0             	test   %rax,%rax
    1378:	78 07                	js     1381 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x111>
    137a:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    137f:	eb 15                	jmp    1396 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x126>
    1381:	48 89 c2             	mov    %rax,%rdx
    1384:	48 d1 ea             	shr    %rdx
    1387:	83 e0 01             	and    $0x1,%eax
    138a:	48 09 c2             	or     %rax,%rdx
    138d:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
    1392:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    1396:	c5 f8 2e 45 9c       	vucomiss -0x64(%rbp),%xmm0
    139b:	0f 97 c0             	seta   %al
    139e:	84 c0                	test   %al,%al
    13a0:	0f 84 82 02 00 00    	je     1628 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3b8>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
    13a6:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    13aa:	c5 fa 11 45 a0       	vmovss %xmm0,-0x60(%rbp)
    13af:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    13b6:	48 89 c7             	mov    %rax,%rdi
    13b9:	e8 00 00 00 00       	callq  13be <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x14e>
    13be:	48 85 c0             	test   %rax,%rax
    13c1:	78 07                	js     13ca <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x15a>
    13c3:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
    13c8:	eb 15                	jmp    13df <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x16f>
    13ca:	48 89 c2             	mov    %rax,%rdx
    13cd:	48 d1 ea             	shr    %rdx
    13d0:	83 e0 01             	and    $0x1,%eax
    13d3:	48 09 c2             	or     %rax,%rdx
    13d6:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
    13db:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
    13df:	c5 f8 2e 45 a0       	vucomiss -0x60(%rbp),%xmm0
    13e4:	0f 97 c0             	seta   %al
    13e7:	84 c0                	test   %al,%al
    13e9:	0f 84 1e 02 00 00    	je     160d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x39d>
      color = Color(0.0, 0.0, 0.0);
    13ef:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    13f3:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
    13f7:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    13fb:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    13ff:	48 89 c7             	mov    %rax,%rdi
    1402:	e8 00 00 00 00       	callq  1407 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x197>
    1407:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    140b:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
    140f:	8b 45 b8             	mov    -0x48(%rbp),%eax
    1412:	89 45 ac             	mov    %eax,-0x54(%rbp)
      const Ray<FLOAT> ray = camera.getRay(x,y);
    1415:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    141a:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1422 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1b2>
    1421:	00 
    1422:	73 0c                	jae    1430 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1c0>
    1424:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    1429:	c4 e1 fa 2c d0       	vcvttss2si %xmm0,%rdx
    142e:	eb 23                	jmp    1453 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1e3>
    1430:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    1435:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 143d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1cd>
    143c:	00 
    143d:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    1441:	c4 e1 fa 2c d0       	vcvttss2si %xmm0,%rdx
    1446:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    144d:	00 00 80 
    1450:	48 31 c2             	xor    %rax,%rdx
    1453:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    1458:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1460 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1f0>
    145f:	00 
    1460:	73 0c                	jae    146e <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x1fe>
    1462:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    1467:	c4 e1 fa 2c c0       	vcvttss2si %xmm0,%rax
    146c:	eb 23                	jmp    1491 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x221>
    146e:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    1473:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 147b <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x20b>
    147a:	00 
    147b:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    147f:	c4 e1 fa 2c c0       	vcvttss2si %xmm0,%rax
    1484:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    148b:	00 00 80 
    148e:	48 31 c8             	xor    %rcx,%rax
    1491:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
    1495:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    149c:	48 89 d1             	mov    %rdx,%rcx
    149f:	48 89 c2             	mov    %rax,%rdx
    14a2:	e8 00 00 00 00       	callq  14a7 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x237>
      Triangle<FLOAT> *nearest_triangle = nullptr;
    14a7:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    14ae:	00 
      FLOAT t = INFINITY, u = 0, v = 0;
    14af:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 14b7 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x247>
    14b6:	00 
    14b7:	c5 fa 11 45 90       	vmovss %xmm0,-0x70(%rbp)
    14bc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    14c0:	c5 fa 11 45 94       	vmovss %xmm0,-0x6c(%rbp)
    14c5:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    14c9:	c5 fa 11 45 98       	vmovss %xmm0,-0x68(%rbp)
#ifndef USE_KDTREE
      bool hasNearestTriangle = scene.hasNearestTriangle(ray, nearest_triangle, t, u, v);
    14ce:	4c 8d 45 98          	lea    -0x68(%rbp),%r8
    14d2:	48 8d 7d 94          	lea    -0x6c(%rbp),%rdi
    14d6:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
    14da:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    14de:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    14e2:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    14e9:	48 83 ec 08          	sub    $0x8,%rsp
    14ed:	6a 01                	pushq  $0x1
    14ef:	4d 89 c1             	mov    %r8,%r9
    14f2:	49 89 f8             	mov    %rdi,%r8
    14f5:	48 89 c7             	mov    %rax,%rdi
    14f8:	e8 00 00 00 00       	callq  14fd <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x28d>
    14fd:	48 83 c4 10          	add    $0x10,%rsp
    1501:	88 45 8f             	mov    %al,-0x71(%rbp)
#else
      bool hasNearestTriangle = tree->hasNearestTriangle(ray.getOrigin(), ray.getDirection(),  nearest_triangle, t, u, v);
#endif
      if ( hasNearestTriangle ) {
    1504:	80 7d 8f 00          	cmpb   $0x0,-0x71(%rbp)
    1508:	74 42                	je     154c <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2dc>
        // no reflection and refraction
        color = scene.shade(ray, *nearest_triangle, material, t, u, v);
    150a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    150e:	4c 8d 4d 94          	lea    -0x6c(%rbp),%r9
    1512:	4c 8d 45 90          	lea    -0x70(%rbp),%r8
    1516:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    151a:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
    151e:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1525:	48 83 ec 08          	sub    $0x8,%rsp
    1529:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
    152d:	57                   	push   %rdi
    152e:	48 89 c7             	mov    %rax,%rdi
    1531:	e8 00 00 00 00       	callq  1536 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2c6>
    1536:	48 83 c4 10          	add    $0x10,%rsp
    153a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
    153f:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
    1543:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
    1547:	c5 fa 11 45 ac       	vmovss %xmm0,-0x54(%rbp)
      }
      screen.setPixel(x, y, color);
    154c:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    1551:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1559 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2e9>
    1558:	00 
    1559:	73 0c                	jae    1567 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x2f7>
    155b:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    1560:	c4 e1 fa 2c d0       	vcvttss2si %xmm0,%rdx
    1565:	eb 23                	jmp    158a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x31a>
    1567:	c5 fa 10 45 a0       	vmovss -0x60(%rbp),%xmm0
    156c:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 1574 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x304>
    1573:	00 
    1574:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    1578:	c4 e1 fa 2c d0       	vcvttss2si %xmm0,%rdx
    157d:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    1584:	00 00 80 
    1587:	48 31 c2             	xor    %rax,%rdx
    158a:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    158f:	c5 f8 2e 05 00 00 00 	vucomiss 0x0(%rip),%xmm0        # 1597 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x327>
    1596:	00 
    1597:	73 0c                	jae    15a5 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x335>
    1599:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    159e:	c4 e1 fa 2c c0       	vcvttss2si %xmm0,%rax
    15a3:	eb 23                	jmp    15c8 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x358>
    15a5:	c5 fa 10 45 9c       	vmovss -0x64(%rbp),%xmm0
    15aa:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 15b2 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x342>
    15b1:	00 
    15b2:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
    15b6:	c4 e1 fa 2c c0       	vcvttss2si %xmm0,%rax
    15bb:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    15c2:	00 00 80 
    15c5:	48 31 c8             	xor    %rcx,%rax
    15c8:	48 8b 75 a4          	mov    -0x5c(%rbp),%rsi
    15cc:	c5 fa 10 4d ac       	vmovss -0x54(%rbp),%xmm1
    15d1:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
    15d8:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    15df:	c5 fa 7e 85 58 ff ff 	vmovq  -0xa8(%rbp),%xmm0
    15e6:	ff 
    15e7:	48 89 c6             	mov    %rax,%rsi
    15ea:	48 89 cf             	mov    %rcx,%rdi
    15ed:	e8 00 00 00 00       	callq  15f2 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x382>
    for (FLOAT y = 0.0; y < screen.getHeight(); y++) {
    15f2:	c5 fa 10 4d a0       	vmovss -0x60(%rbp),%xmm1
    15f7:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 15ff <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x38f>
    15fe:	00 
    15ff:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
    1603:	c5 fa 11 45 a0       	vmovss %xmm0,-0x60(%rbp)
    1608:	e9 a2 fd ff ff       	jmpq   13af <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x13f>
  for (FLOAT x = 0.0; x < screen.getWidth(); x++) {
    160d:	c5 fa 10 4d 9c       	vmovss -0x64(%rbp),%xmm1
    1612:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 161a <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3aa>
    1619:	00 
    161a:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
    161e:	c5 fa 11 45 9c       	vmovss %xmm0,-0x64(%rbp)
    1623:	e9 3e fd ff ff       	jmpq   1366 <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0xf6>
    }
  }
}
    1628:	90                   	nop
    1629:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    162d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1634:	00 00 
    1636:	74 05                	je     163d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3cd>
    1638:	e8 00 00 00 00       	callq  163d <_Z8raytraceR6CameraR5SceneR6ScreenP6KDTree+0x3cd>
    163d:	c9                   	leaveq 
    163e:	c3                   	retq   

000000000000163f <_Z15parse_argumentsiPPc>:




void parse_arguments(int argc, char *argv[]) {
    163f:	55                   	push   %rbp
    1640:	48 89 e5             	mov    %rsp,%rbp
    1643:	53                   	push   %rbx
    1644:	48 83 ec 58          	sub    $0x58,%rsp
    1648:	89 7d ac             	mov    %edi,-0x54(%rbp)
    164b:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    164f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1656:	00 00 
    1658:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    165c:	31 c0                	xor    %eax,%eax
   {"no_ppm", optional_argument, 0, 'n'},
  };
  int c;
  int option_index;

  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    165e:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    1662:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
    1666:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1669:	49 89 d0             	mov    %rdx,%r8
    166c:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 1673 <_Z15parse_argumentsiPPc+0x34>
    1673:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 167a <_Z15parse_argumentsiPPc+0x3b>
    167a:	89 c7                	mov    %eax,%edi
    167c:	e8 00 00 00 00       	callq  1681 <_Z15parse_argumentsiPPc+0x42>
    1681:	89 45 bc             	mov    %eax,-0x44(%rbp)
    1684:	83 7d bc ff          	cmpl   $0xffffffff,-0x44(%rbp)
    1688:	0f 95 c0             	setne  %al
    168b:	84 c0                	test   %al,%al
    168d:	0f 84 23 03 00 00    	je     19b6 <_Z15parse_argumentsiPPc+0x377>
    switch (c) {
    1693:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1696:	83 e8 66             	sub    $0x66,%eax
    1699:	83 f8 11             	cmp    $0x11,%eax
    169c:	77 c0                	ja     165e <_Z15parse_argumentsiPPc+0x1f>
    169e:	89 c0                	mov    %eax,%eax
    16a0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    16a7:	00 
    16a8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16af <_Z15parse_argumentsiPPc+0x70>
    16af:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    16b2:	48 63 d0             	movslq %eax,%rdx
    16b5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 16bc <_Z15parse_argumentsiPPc+0x7d>
    16bc:	48 01 d0             	add    %rdx,%rax
    16bf:	ff e0                	jmpq   *%rax
    case 'f': input_file_name = std::string(optarg);
    16c1:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    16c5:	48 89 c7             	mov    %rax,%rdi
    16c8:	e8 00 00 00 00       	callq  16cd <_Z15parse_argumentsiPPc+0x8e>
    16cd:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 16d4 <_Z15parse_argumentsiPPc+0x95>
    16d4:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    16d8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16dc:	48 89 ce             	mov    %rcx,%rsi
    16df:	48 89 c7             	mov    %rax,%rdi
    16e2:	e8 00 00 00 00       	callq  16e7 <_Z15parse_argumentsiPPc+0xa8>
    16e7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16eb:	48 89 c6             	mov    %rax,%rsi
    16ee:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 16f5 <_Z15parse_argumentsiPPc+0xb6>
    16f5:	e8 00 00 00 00       	callq  16fa <_Z15parse_argumentsiPPc+0xbb>
    16fa:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    16fe:	48 89 c7             	mov    %rax,%rdi
    1701:	e8 00 00 00 00       	callq  1706 <_Z15parse_argumentsiPPc+0xc7>
    1706:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    170a:	48 89 c7             	mov    %rax,%rdi
    170d:	e8 00 00 00 00       	callq  1712 <_Z15parse_argumentsiPPc+0xd3>
              break;
    1712:	e9 9a 02 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'r': reverse_vertice_order = true;
    1717:	c6 05 00 00 00 00 01 	movb   $0x1,0x0(%rip)        # 171e <_Z15parse_argumentsiPPc+0xdf>
              break;
    171e:	e9 8e 02 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'w': resolution_x = std::stoi(optarg);
    1723:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1727:	48 89 c7             	mov    %rax,%rdi
    172a:	e8 00 00 00 00       	callq  172f <_Z15parse_argumentsiPPc+0xf0>
    172f:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1736 <_Z15parse_argumentsiPPc+0xf7>
    1736:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    173a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    173e:	48 89 ce             	mov    %rcx,%rsi
    1741:	48 89 c7             	mov    %rax,%rdi
    1744:	e8 00 00 00 00       	callq  1749 <_Z15parse_argumentsiPPc+0x10a>
    1749:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    174d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1752:	be 00 00 00 00       	mov    $0x0,%esi
    1757:	48 89 c7             	mov    %rax,%rdi
    175a:	e8 00 00 00 00       	callq  175f <_Z15parse_argumentsiPPc+0x120>
    175f:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 1765 <_Z15parse_argumentsiPPc+0x126>
    1765:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1769:	48 89 c7             	mov    %rax,%rdi
    176c:	e8 00 00 00 00       	callq  1771 <_Z15parse_argumentsiPPc+0x132>
    1771:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1775:	48 89 c7             	mov    %rax,%rdi
    1778:	e8 00 00 00 00       	callq  177d <_Z15parse_argumentsiPPc+0x13e>
              break;
    177d:	e9 2f 02 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'h': resolution_y = std::stoi(optarg);
    1782:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1786:	48 89 c7             	mov    %rax,%rdi
    1789:	e8 00 00 00 00       	callq  178e <_Z15parse_argumentsiPPc+0x14f>
    178e:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 1795 <_Z15parse_argumentsiPPc+0x156>
    1795:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    1799:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    179d:	48 89 ce             	mov    %rcx,%rsi
    17a0:	48 89 c7             	mov    %rax,%rdi
    17a3:	e8 00 00 00 00       	callq  17a8 <_Z15parse_argumentsiPPc+0x169>
    17a8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17ac:	ba 0a 00 00 00       	mov    $0xa,%edx
    17b1:	be 00 00 00 00       	mov    $0x0,%esi
    17b6:	48 89 c7             	mov    %rax,%rdi
    17b9:	e8 00 00 00 00       	callq  17be <_Z15parse_argumentsiPPc+0x17f>
    17be:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 17c4 <_Z15parse_argumentsiPPc+0x185>
    17c4:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17c8:	48 89 c7             	mov    %rax,%rdi
    17cb:	e8 00 00 00 00       	callq  17d0 <_Z15parse_argumentsiPPc+0x191>
    17d0:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    17d4:	48 89 c7             	mov    %rax,%rdi
    17d7:	e8 00 00 00 00       	callq  17dc <_Z15parse_argumentsiPPc+0x19d>
              break;
    17dc:	e9 d0 01 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'o': output_bmp_file_name = std::string(optarg);
    17e1:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    17e5:	48 89 c7             	mov    %rax,%rdi
    17e8:	e8 00 00 00 00       	callq  17ed <_Z15parse_argumentsiPPc+0x1ae>
    17ed:	48 8b 0d 00 00 00 00 	mov    0x0(%rip),%rcx        # 17f4 <_Z15parse_argumentsiPPc+0x1b5>
    17f4:	48 8d 55 b7          	lea    -0x49(%rbp),%rdx
    17f8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    17fc:	48 89 ce             	mov    %rcx,%rsi
    17ff:	48 89 c7             	mov    %rax,%rdi
    1802:	e8 00 00 00 00       	callq  1807 <_Z15parse_argumentsiPPc+0x1c8>
    1807:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    180b:	48 89 c6             	mov    %rax,%rsi
    180e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1815 <_Z15parse_argumentsiPPc+0x1d6>
    1815:	e8 00 00 00 00       	callq  181a <_Z15parse_argumentsiPPc+0x1db>
    181a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    181e:	48 89 c7             	mov    %rax,%rdi
    1821:	e8 00 00 00 00       	callq  1826 <_Z15parse_argumentsiPPc+0x1e7>
    1826:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    182a:	48 89 c7             	mov    %rax,%rdi
    182d:	e8 00 00 00 00       	callq  1832 <_Z15parse_argumentsiPPc+0x1f3>
              break;
    1832:	e9 7a 01 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'n': write_ppm_to_stdout = false;
    1837:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 183e <_Z15parse_argumentsiPPc+0x1ff>
              break;
    183e:	e9 6e 01 00 00       	jmpq   19b1 <_Z15parse_argumentsiPPc+0x372>
    case 'u': std::cout << "Aufruf: " << argv[0] << " [options]" << std::endl;
    1843:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 184a <_Z15parse_argumentsiPPc+0x20b>
    184a:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1851 <_Z15parse_argumentsiPPc+0x212>
    1851:	e8 00 00 00 00       	callq  1856 <_Z15parse_argumentsiPPc+0x217>
    1856:	48 89 c2             	mov    %rax,%rdx
    1859:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    185d:	48 8b 00             	mov    (%rax),%rax
    1860:	48 89 c6             	mov    %rax,%rsi
    1863:	48 89 d7             	mov    %rdx,%rdi
    1866:	e8 00 00 00 00       	callq  186b <_Z15parse_argumentsiPPc+0x22c>
    186b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1872 <_Z15parse_argumentsiPPc+0x233>
    1872:	48 89 c7             	mov    %rax,%rdi
    1875:	e8 00 00 00 00       	callq  187a <_Z15parse_argumentsiPPc+0x23b>
    187a:	48 89 c2             	mov    %rax,%rdx
    187d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1884 <_Z15parse_argumentsiPPc+0x245>
    1884:	48 89 c6             	mov    %rax,%rsi
    1887:	48 89 d7             	mov    %rdx,%rdi
    188a:	e8 00 00 00 00       	callq  188f <_Z15parse_argumentsiPPc+0x250>
              std::cout << "  --file FILE          wavefront obj input file ('example/teapot.obj')" << std::endl;
    188f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1896 <_Z15parse_argumentsiPPc+0x257>
    1896:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 189d <_Z15parse_argumentsiPPc+0x25e>
    189d:	e8 00 00 00 00       	callq  18a2 <_Z15parse_argumentsiPPc+0x263>
    18a2:	48 89 c2             	mov    %rax,%rdx
    18a5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18ac <_Z15parse_argumentsiPPc+0x26d>
    18ac:	48 89 c6             	mov    %rax,%rsi
    18af:	48 89 d7             	mov    %rdx,%rdi
    18b2:	e8 00 00 00 00       	callq  18b7 <_Z15parse_argumentsiPPc+0x278>
              std::cout << "  --width WIDTH        horizontal resolution (256)" << std::endl;
    18b7:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 18be <_Z15parse_argumentsiPPc+0x27f>
    18be:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 18c5 <_Z15parse_argumentsiPPc+0x286>
    18c5:	e8 00 00 00 00       	callq  18ca <_Z15parse_argumentsiPPc+0x28b>
    18ca:	48 89 c2             	mov    %rax,%rdx
    18cd:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18d4 <_Z15parse_argumentsiPPc+0x295>
    18d4:	48 89 c6             	mov    %rax,%rsi
    18d7:	48 89 d7             	mov    %rdx,%rdi
    18da:	e8 00 00 00 00       	callq  18df <_Z15parse_argumentsiPPc+0x2a0>
              std::cout << "  --height HEIGHT      vertical resolution (256)" << std::endl;
    18df:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 18e6 <_Z15parse_argumentsiPPc+0x2a7>
    18e6:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 18ed <_Z15parse_argumentsiPPc+0x2ae>
    18ed:	e8 00 00 00 00       	callq  18f2 <_Z15parse_argumentsiPPc+0x2b3>
    18f2:	48 89 c2             	mov    %rax,%rdx
    18f5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18fc <_Z15parse_argumentsiPPc+0x2bd>
    18fc:	48 89 c6             	mov    %rax,%rsi
    18ff:	48 89 d7             	mov    %rdx,%rdi
    1902:	e8 00 00 00 00       	callq  1907 <_Z15parse_argumentsiPPc+0x2c8>
              std::cout << "  --help               this help text" << std::endl;
    1907:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 190e <_Z15parse_argumentsiPPc+0x2cf>
    190e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1915 <_Z15parse_argumentsiPPc+0x2d6>
    1915:	e8 00 00 00 00       	callq  191a <_Z15parse_argumentsiPPc+0x2db>
    191a:	48 89 c2             	mov    %rax,%rdx
    191d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1924 <_Z15parse_argumentsiPPc+0x2e5>
    1924:	48 89 c6             	mov    %rax,%rsi
    1927:	48 89 d7             	mov    %rdx,%rdi
    192a:	e8 00 00 00 00       	callq  192f <_Z15parse_argumentsiPPc+0x2f0>
              std::cout << "  --no_ppm             no PPM output is generated" << std::endl;
    192f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1936 <_Z15parse_argumentsiPPc+0x2f7>
    1936:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 193d <_Z15parse_argumentsiPPc+0x2fe>
    193d:	e8 00 00 00 00       	callq  1942 <_Z15parse_argumentsiPPc+0x303>
    1942:	48 89 c2             	mov    %rax,%rdx
    1945:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 194c <_Z15parse_argumentsiPPc+0x30d>
    194c:	48 89 c6             	mov    %rax,%rsi
    194f:	48 89 d7             	mov    %rdx,%rdi
    1952:	e8 00 00 00 00       	callq  1957 <_Z15parse_argumentsiPPc+0x318>
              std::cout << "  -o BMP               BMP output file ('output.bmp')" << std::endl;
    1957:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 195e <_Z15parse_argumentsiPPc+0x31f>
    195e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1965 <_Z15parse_argumentsiPPc+0x326>
    1965:	e8 00 00 00 00       	callq  196a <_Z15parse_argumentsiPPc+0x32b>
    196a:	48 89 c2             	mov    %rax,%rdx
    196d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1974 <_Z15parse_argumentsiPPc+0x335>
    1974:	48 89 c6             	mov    %rax,%rsi
    1977:	48 89 d7             	mov    %rdx,%rdi
    197a:	e8 00 00 00 00       	callq  197f <_Z15parse_argumentsiPPc+0x340>
              std::cout << "  -r                   reverse vertice order of triangles in input file" << std::endl;
    197f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1986 <_Z15parse_argumentsiPPc+0x347>
    1986:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 198d <_Z15parse_argumentsiPPc+0x34e>
    198d:	e8 00 00 00 00       	callq  1992 <_Z15parse_argumentsiPPc+0x353>
    1992:	48 89 c2             	mov    %rax,%rdx
    1995:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 199c <_Z15parse_argumentsiPPc+0x35d>
    199c:	48 89 c6             	mov    %rax,%rsi
    199f:	48 89 d7             	mov    %rdx,%rdi
    19a2:	e8 00 00 00 00       	callq  19a7 <_Z15parse_argumentsiPPc+0x368>
              exit(0);
    19a7:	bf 00 00 00 00       	mov    $0x0,%edi
    19ac:	e8 00 00 00 00       	callq  19b1 <_Z15parse_argumentsiPPc+0x372>
  while ( (c = getopt_long (argc, argv, "ro:", long_options, &option_index)) != -1 ) {
    19b1:	e9 a8 fc ff ff       	jmpq   165e <_Z15parse_argumentsiPPc+0x1f>
    } 
  }

  std::cerr << "reading from       : " << input_file_name << std::endl;
    19b6:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19bd <_Z15parse_argumentsiPPc+0x37e>
    19bd:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 19c4 <_Z15parse_argumentsiPPc+0x385>
    19c4:	e8 00 00 00 00       	callq  19c9 <_Z15parse_argumentsiPPc+0x38a>
    19c9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19d0 <_Z15parse_argumentsiPPc+0x391>
    19d0:	48 89 c7             	mov    %rax,%rdi
    19d3:	e8 00 00 00 00       	callq  19d8 <_Z15parse_argumentsiPPc+0x399>
    19d8:	48 89 c2             	mov    %rax,%rdx
    19db:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 19e2 <_Z15parse_argumentsiPPc+0x3a3>
    19e2:	48 89 c6             	mov    %rax,%rsi
    19e5:	48 89 d7             	mov    %rdx,%rdi
    19e8:	e8 00 00 00 00       	callq  19ed <_Z15parse_argumentsiPPc+0x3ae>
  std::cerr << "writing bmp to     : " << output_bmp_file_name << std::endl;
    19ed:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 19f4 <_Z15parse_argumentsiPPc+0x3b5>
    19f4:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 19fb <_Z15parse_argumentsiPPc+0x3bc>
    19fb:	e8 00 00 00 00       	callq  1a00 <_Z15parse_argumentsiPPc+0x3c1>
    1a00:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a07 <_Z15parse_argumentsiPPc+0x3c8>
    1a07:	48 89 c7             	mov    %rax,%rdi
    1a0a:	e8 00 00 00 00       	callq  1a0f <_Z15parse_argumentsiPPc+0x3d0>
    1a0f:	48 89 c2             	mov    %rax,%rdx
    1a12:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a19 <_Z15parse_argumentsiPPc+0x3da>
    1a19:	48 89 c6             	mov    %rax,%rsi
    1a1c:	48 89 d7             	mov    %rdx,%rdi
    1a1f:	e8 00 00 00 00       	callq  1a24 <_Z15parse_argumentsiPPc+0x3e5>
  std::cerr << "resolution x set to: " << resolution_x << std::endl;
    1a24:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a2b <_Z15parse_argumentsiPPc+0x3ec>
    1a2b:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1a32 <_Z15parse_argumentsiPPc+0x3f3>
    1a32:	e8 00 00 00 00       	callq  1a37 <_Z15parse_argumentsiPPc+0x3f8>
    1a37:	48 89 c2             	mov    %rax,%rdx
    1a3a:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1a40 <_Z15parse_argumentsiPPc+0x401>
    1a40:	89 c6                	mov    %eax,%esi
    1a42:	48 89 d7             	mov    %rdx,%rdi
    1a45:	e8 00 00 00 00       	callq  1a4a <_Z15parse_argumentsiPPc+0x40b>
    1a4a:	48 89 c2             	mov    %rax,%rdx
    1a4d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a54 <_Z15parse_argumentsiPPc+0x415>
    1a54:	48 89 c6             	mov    %rax,%rsi
    1a57:	48 89 d7             	mov    %rdx,%rdi
    1a5a:	e8 00 00 00 00       	callq  1a5f <_Z15parse_argumentsiPPc+0x420>
  std::cerr << "resolution y set to: " << resolution_y << std::endl;
    1a5f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1a66 <_Z15parse_argumentsiPPc+0x427>
    1a66:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1a6d <_Z15parse_argumentsiPPc+0x42e>
    1a6d:	e8 00 00 00 00       	callq  1a72 <_Z15parse_argumentsiPPc+0x433>
    1a72:	48 89 c2             	mov    %rax,%rdx
    1a75:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1a7b <_Z15parse_argumentsiPPc+0x43c>
    1a7b:	89 c6                	mov    %eax,%esi
    1a7d:	48 89 d7             	mov    %rdx,%rdi
    1a80:	e8 00 00 00 00       	callq  1a85 <_Z15parse_argumentsiPPc+0x446>
    1a85:	48 89 c2             	mov    %rax,%rdx
    1a88:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a8f <_Z15parse_argumentsiPPc+0x450>
    1a8f:	48 89 c6             	mov    %rax,%rsi
    1a92:	48 89 d7             	mov    %rdx,%rdi
    1a95:	e8 00 00 00 00       	callq  1a9a <_Z15parse_argumentsiPPc+0x45b>
  std::cerr << "vertices reversed  : " << reverse_vertice_order << std::endl;
    1a9a:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1aa1 <_Z15parse_argumentsiPPc+0x462>
    1aa1:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1aa8 <_Z15parse_argumentsiPPc+0x469>
    1aa8:	e8 00 00 00 00       	callq  1aad <_Z15parse_argumentsiPPc+0x46e>
    1aad:	48 89 c2             	mov    %rax,%rdx
    1ab0:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1ab7 <_Z15parse_argumentsiPPc+0x478>
    1ab7:	0f b6 c0             	movzbl %al,%eax
    1aba:	89 c6                	mov    %eax,%esi
    1abc:	48 89 d7             	mov    %rdx,%rdi
    1abf:	e8 00 00 00 00       	callq  1ac4 <_Z15parse_argumentsiPPc+0x485>
    1ac4:	48 89 c2             	mov    %rax,%rdx
    1ac7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ace <_Z15parse_argumentsiPPc+0x48f>
    1ace:	48 89 c6             	mov    %rax,%rsi
    1ad1:	48 89 d7             	mov    %rdx,%rdi
    1ad4:	e8 00 00 00 00       	callq  1ad9 <_Z15parse_argumentsiPPc+0x49a>
  std::cerr << "write ppm          : " << write_ppm_to_stdout << std::endl;
    1ad9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1ae0 <_Z15parse_argumentsiPPc+0x4a1>
    1ae0:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1ae7 <_Z15parse_argumentsiPPc+0x4a8>
    1ae7:	e8 00 00 00 00       	callq  1aec <_Z15parse_argumentsiPPc+0x4ad>
    1aec:	48 89 c2             	mov    %rax,%rdx
    1aef:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1af6 <_Z15parse_argumentsiPPc+0x4b7>
    1af6:	0f b6 c0             	movzbl %al,%eax
    1af9:	89 c6                	mov    %eax,%esi
    1afb:	48 89 d7             	mov    %rdx,%rdi
    1afe:	e8 00 00 00 00       	callq  1b03 <_Z15parse_argumentsiPPc+0x4c4>
    1b03:	48 89 c2             	mov    %rax,%rdx
    1b06:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b0d <_Z15parse_argumentsiPPc+0x4ce>
    1b0d:	48 89 c6             	mov    %rax,%rsi
    1b10:	48 89 d7             	mov    %rdx,%rdi
    1b13:	e8 00 00 00 00       	callq  1b18 <_Z15parse_argumentsiPPc+0x4d9>
}
    1b18:	90                   	nop
    1b19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b1d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b24:	00 00 
    1b26:	0f 84 94 00 00 00    	je     1bc0 <_Z15parse_argumentsiPPc+0x581>
    1b2c:	e9 8a 00 00 00       	jmpq   1bbb <_Z15parse_argumentsiPPc+0x57c>
    1b31:	48 89 c3             	mov    %rax,%rbx
    case 'f': input_file_name = std::string(optarg);
    1b34:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b38:	48 89 c7             	mov    %rax,%rdi
    1b3b:	e8 00 00 00 00       	callq  1b40 <_Z15parse_argumentsiPPc+0x501>
    1b40:	48 89 d8             	mov    %rbx,%rax
    1b43:	48 89 c7             	mov    %rax,%rdi
    1b46:	e8 00 00 00 00       	callq  1b4b <_Z15parse_argumentsiPPc+0x50c>
    1b4b:	48 89 c3             	mov    %rax,%rbx
    case 'w': resolution_x = std::stoi(optarg);
    1b4e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1b52:	48 89 c7             	mov    %rax,%rdi
    1b55:	e8 00 00 00 00       	callq  1b5a <_Z15parse_argumentsiPPc+0x51b>
    1b5a:	eb 03                	jmp    1b5f <_Z15parse_argumentsiPPc+0x520>
    1b5c:	48 89 c3             	mov    %rax,%rbx
    1b5f:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b63:	48 89 c7             	mov    %rax,%rdi
    1b66:	e8 00 00 00 00       	callq  1b6b <_Z15parse_argumentsiPPc+0x52c>
    1b6b:	48 89 d8             	mov    %rbx,%rax
    1b6e:	48 89 c7             	mov    %rax,%rdi
    1b71:	e8 00 00 00 00       	callq  1b76 <_Z15parse_argumentsiPPc+0x537>
    1b76:	48 89 c3             	mov    %rax,%rbx
    case 'h': resolution_y = std::stoi(optarg);
    1b79:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1b7d:	48 89 c7             	mov    %rax,%rdi
    1b80:	e8 00 00 00 00       	callq  1b85 <_Z15parse_argumentsiPPc+0x546>
    1b85:	eb 03                	jmp    1b8a <_Z15parse_argumentsiPPc+0x54b>
    1b87:	48 89 c3             	mov    %rax,%rbx
    1b8a:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1b8e:	48 89 c7             	mov    %rax,%rdi
    1b91:	e8 00 00 00 00       	callq  1b96 <_Z15parse_argumentsiPPc+0x557>
    1b96:	48 89 d8             	mov    %rbx,%rax
    1b99:	48 89 c7             	mov    %rax,%rdi
    1b9c:	e8 00 00 00 00       	callq  1ba1 <_Z15parse_argumentsiPPc+0x562>
    1ba1:	48 89 c3             	mov    %rax,%rbx
    case 'o': output_bmp_file_name = std::string(optarg);
    1ba4:	48 8d 45 b7          	lea    -0x49(%rbp),%rax
    1ba8:	48 89 c7             	mov    %rax,%rdi
    1bab:	e8 00 00 00 00       	callq  1bb0 <_Z15parse_argumentsiPPc+0x571>
    1bb0:	48 89 d8             	mov    %rbx,%rax
    1bb3:	48 89 c7             	mov    %rax,%rdi
    1bb6:	e8 00 00 00 00       	callq  1bbb <_Z15parse_argumentsiPPc+0x57c>
}
    1bbb:	e8 00 00 00 00       	callq  1bc0 <_Z15parse_argumentsiPPc+0x581>
    1bc0:	48 83 c4 58          	add    $0x58,%rsp
    1bc4:	5b                   	pop    %rbx
    1bc5:	5d                   	pop    %rbp
    1bc6:	c3                   	retq   

0000000000001bc7 <main>:

int main(int argc, char *argv[]) {
    1bc7:	55                   	push   %rbp
    1bc8:	48 89 e5             	mov    %rsp,%rbp
    1bcb:	41 57                	push   %r15
    1bcd:	41 56                	push   %r14
    1bcf:	41 55                	push   %r13
    1bd1:	41 54                	push   %r12
    1bd3:	53                   	push   %rbx
    1bd4:	48 81 ec 38 05 00 00 	sub    $0x538,%rsp
    1bdb:	89 bd dc fa ff ff    	mov    %edi,-0x524(%rbp)
    1be1:	48 89 b5 d0 fa ff ff 	mov    %rsi,-0x530(%rbp)
    1be8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bef:	00 00 
    1bf1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1bf5:	31 c0                	xor    %eax,%eax
  parse_arguments(argc, argv);
    1bf7:	48 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%rdx
    1bfe:	8b 85 dc fa ff ff    	mov    -0x524(%rbp),%eax
    1c04:	48 89 d6             	mov    %rdx,%rsi
    1c07:	89 c7                	mov    %eax,%edi
    1c09:	e8 00 00 00 00       	callq  1c0e <main+0x47>
  Scene scene;
    1c0e:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    1c15:	48 89 c7             	mov    %rax,%rdi
    1c18:	e8 00 00 00 00       	callq  1c1d <main+0x56>
  scene.addLight( Light( Vector<FLOAT,3>{500.0, 500.0, 1000.0}) );
    1c1d:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1c24:	c5 fa 10 15 00 00 00 	vmovss 0x0(%rip),%xmm2        # 1c2c <main+0x65>
    1c2b:	00 
    1c2c:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 1c34 <main+0x6d>
    1c33:	00 
    1c34:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 1c3c <main+0x75>
    1c3b:	00 
    1c3c:	48 89 c7             	mov    %rax,%rdi
    1c3f:	e8 00 00 00 00       	callq  1c44 <main+0x7d>
    1c44:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1c4b <main+0x84>
    1c4b:	48 89 85 a0 fa ff ff 	mov    %rax,-0x560(%rbp)
    1c52:	48 c7 85 a8 fa ff ff 	movq   $0x3,-0x558(%rbp)
    1c59:	03 00 00 00 
    1c5d:	48 8b 85 a0 fa ff ff 	mov    -0x560(%rbp),%rax
    1c64:	48 8b 95 a8 fa ff ff 	mov    -0x558(%rbp),%rdx
    1c6b:	48 89 c1             	mov    %rax,%rcx
    1c6e:	48 89 d3             	mov    %rdx,%rbx
    1c71:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1c78:	48 89 ce             	mov    %rcx,%rsi
    1c7b:	48 89 c7             	mov    %rax,%rdi
    1c7e:	e8 00 00 00 00       	callq  1c83 <main+0xbc>
    1c83:	48 8b b5 00 fb ff ff 	mov    -0x500(%rbp),%rsi
    1c8a:	c5 fa 10 85 08 fb ff 	vmovss -0x4f8(%rbp),%xmm0
    1c91:	ff 
    1c92:	48 8b 8d c0 fb ff ff 	mov    -0x440(%rbp),%rcx
    1c99:	8b 95 c8 fb ff ff    	mov    -0x438(%rbp),%edx
    1c9f:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1ca6:	48 89 b5 a0 fa ff ff 	mov    %rsi,-0x560(%rbp)
    1cad:	c5 fa 7e 95 a0 fa ff 	vmovq  -0x560(%rbp),%xmm2
    1cb4:	ff 
    1cb5:	c5 f8 28 d8          	vmovaps %xmm0,%xmm3
    1cb9:	48 89 8d a0 fa ff ff 	mov    %rcx,-0x560(%rbp)
    1cc0:	c5 fa 7e 85 a0 fa ff 	vmovq  -0x560(%rbp),%xmm0
    1cc7:	ff 
    1cc8:	48 89 95 a0 fa ff ff 	mov    %rdx,-0x560(%rbp)
    1ccf:	c5 fa 7e 8d a0 fa ff 	vmovq  -0x560(%rbp),%xmm1
    1cd6:	ff 
    1cd7:	48 89 c7             	mov    %rax,%rdi
    1cda:	e8 00 00 00 00       	callq  1cdf <main+0x118>
    1cdf:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    1ce6:	48 83 ec 08          	sub    $0x8,%rsp
    1cea:	ff b5 d0 fd ff ff    	pushq  -0x230(%rbp)
    1cf0:	ff b5 c8 fd ff ff    	pushq  -0x238(%rbp)
    1cf6:	ff b5 c0 fd ff ff    	pushq  -0x240(%rbp)
    1cfc:	48 89 c7             	mov    %rax,%rdi
    1cff:	e8 00 00 00 00       	callq  1d04 <main+0x13d>
    1d04:	48 83 c4 20          	add    $0x20,%rsp
  std::ifstream input(input_file_name);
    1d08:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1d0f:	ba 08 00 00 00       	mov    $0x8,%edx
    1d14:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d1b <main+0x154>
    1d1b:	48 89 c7             	mov    %rax,%rdi
    1d1e:	e8 00 00 00 00       	callq  1d23 <main+0x15c>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    1d23:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1d2a:	ba 04 00 00 00       	mov    $0x4,%edx
    1d2f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1d36 <main+0x16f>
    1d36:	48 89 c7             	mov    %rax,%rdi
    1d39:	e8 00 00 00 00       	callq  1d3e <main+0x177>
  read_wavefront(input, scene);
    1d3e:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    1d45:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1d4c:	48 89 d6             	mov    %rdx,%rsi
    1d4f:	48 89 c7             	mov    %rax,%rdi
    1d52:	e8 00 00 00 00       	callq  1d57 <main+0x190>
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    1d57:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    1d5e:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    1d65:	48 89 d6             	mov    %rdx,%rsi
    1d68:	48 89 c7             	mov    %rax,%rdi
    1d6b:	e8 00 00 00 00       	callq  1d70 <main+0x1a9>
  Screen screen(resolution_x, resolution_y);
    1d70:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1d76 <main+0x1af>
    1d76:	48 63 d0             	movslq %eax,%rdx
    1d79:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 1d7f <main+0x1b8>
    1d7f:	48 63 c8             	movslq %eax,%rcx
    1d82:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1d89:	48 89 ce             	mov    %rcx,%rsi
    1d8c:	48 89 c7             	mov    %rax,%rdi
    1d8f:	e8 00 00 00 00       	callq  1d94 <main+0x1cd>
  // camera for teapot_large.obj
  Camera camera( Vector<FLOAT, 3>( {  0.05, 1.0, 200.0} ),
                 Vector<FLOAT, 3>( {  0.05, 1.0, 100.0} ),
                 Vector<FLOAT, 3>( {  0.0, 1.6, 0.0} ),
                 Vector<FLOAT, 3>( {  1.6, 0.0,  0.0} ),
                 screen );
    1d94:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1d9b <main+0x1d4>
    1d9b:	48 89 85 b0 fa ff ff 	mov    %rax,-0x550(%rbp)
    1da2:	48 c7 85 b8 fa ff ff 	movq   $0x3,-0x548(%rbp)
    1da9:	03 00 00 00 
    1dad:	48 8b 85 b0 fa ff ff 	mov    -0x550(%rbp),%rax
    1db4:	48 8b 95 b8 fa ff ff 	mov    -0x548(%rbp),%rdx
    1dbb:	48 89 c1             	mov    %rax,%rcx
    1dbe:	48 89 d3             	mov    %rdx,%rbx
    1dc1:	48 8d 85 74 fb ff ff 	lea    -0x48c(%rbp),%rax
    1dc8:	48 89 ce             	mov    %rcx,%rsi
    1dcb:	48 89 c7             	mov    %rax,%rdi
    1dce:	e8 00 00 00 00       	callq  1dd3 <main+0x20c>
    1dd3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1dda <main+0x213>
    1dda:	48 89 85 c0 fa ff ff 	mov    %rax,-0x540(%rbp)
    1de1:	48 c7 85 c8 fa ff ff 	movq   $0x3,-0x538(%rbp)
    1de8:	03 00 00 00 
    1dec:	48 8b 85 c0 fa ff ff 	mov    -0x540(%rbp),%rax
    1df3:	48 8b 95 c8 fa ff ff 	mov    -0x538(%rbp),%rdx
    1dfa:	48 89 c1             	mov    %rax,%rcx
    1dfd:	48 89 d3             	mov    %rdx,%rbx
    1e00:	48 8d 85 68 fb ff ff 	lea    -0x498(%rbp),%rax
    1e07:	48 89 ce             	mov    %rcx,%rsi
    1e0a:	48 89 c7             	mov    %rax,%rdi
    1e0d:	e8 00 00 00 00       	callq  1e12 <main+0x24b>
    1e12:	4c 8d 35 00 00 00 00 	lea    0x0(%rip),%r14        # 1e19 <main+0x252>
    1e19:	41 bf 03 00 00 00    	mov    $0x3,%r15d
    1e1f:	4c 89 f1             	mov    %r14,%rcx
    1e22:	4c 89 fb             	mov    %r15,%rbx
    1e25:	4c 89 f0             	mov    %r14,%rax
    1e28:	4c 89 fa             	mov    %r15,%rdx
    1e2b:	48 8d 85 5c fb ff ff 	lea    -0x4a4(%rbp),%rax
    1e32:	48 89 ce             	mov    %rcx,%rsi
    1e35:	48 89 c7             	mov    %rax,%rdi
    1e38:	e8 00 00 00 00       	callq  1e3d <main+0x276>
    1e3d:	4c 8d 25 00 00 00 00 	lea    0x0(%rip),%r12        # 1e44 <main+0x27d>
    1e44:	41 bd 03 00 00 00    	mov    $0x3,%r13d
    1e4a:	4c 89 e1             	mov    %r12,%rcx
    1e4d:	4c 89 eb             	mov    %r13,%rbx
    1e50:	4c 89 e0             	mov    %r12,%rax
    1e53:	4c 89 ea             	mov    %r13,%rdx
    1e56:	48 8d 85 50 fb ff ff 	lea    -0x4b0(%rbp),%rax
    1e5d:	48 89 ce             	mov    %rcx,%rsi
    1e60:	48 89 c7             	mov    %rax,%rdi
    1e63:	e8 00 00 00 00       	callq  1e68 <main+0x2a1>
    1e68:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1e6f:	4c 8b a5 74 fb ff ff 	mov    -0x48c(%rbp),%r12
    1e76:	8b 9d 7c fb ff ff    	mov    -0x484(%rbp),%ebx
    1e7c:	4c 8b 9d 68 fb ff ff 	mov    -0x498(%rbp),%r11
    1e83:	44 8b 95 70 fb ff ff 	mov    -0x490(%rbp),%r10d
    1e8a:	4c 8b 8d 5c fb ff ff 	mov    -0x4a4(%rbp),%r9
    1e91:	44 8b 85 64 fb ff ff 	mov    -0x49c(%rbp),%r8d
    1e98:	48 8b bd 50 fb ff ff 	mov    -0x4b0(%rbp),%rdi
    1e9f:	8b 8d 58 fb ff ff    	mov    -0x4a8(%rbp),%ecx
    1ea5:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    1eac:	48 89 d6             	mov    %rdx,%rsi
    1eaf:	4c 89 a5 c0 fa ff ff 	mov    %r12,-0x540(%rbp)
    1eb6:	c5 fa 7e b5 c0 fa ff 	vmovq  -0x540(%rbp),%xmm6
    1ebd:	ff 
    1ebe:	48 89 9d c0 fa ff ff 	mov    %rbx,-0x540(%rbp)
    1ec5:	c5 fa 7e bd c0 fa ff 	vmovq  -0x540(%rbp),%xmm7
    1ecc:	ff 
    1ecd:	4c 89 9d c0 fa ff ff 	mov    %r11,-0x540(%rbp)
    1ed4:	c5 fa 7e a5 c0 fa ff 	vmovq  -0x540(%rbp),%xmm4
    1edb:	ff 
    1edc:	4c 89 95 c0 fa ff ff 	mov    %r10,-0x540(%rbp)
    1ee3:	c5 fa 7e ad c0 fa ff 	vmovq  -0x540(%rbp),%xmm5
    1eea:	ff 
    1eeb:	4c 89 8d c0 fa ff ff 	mov    %r9,-0x540(%rbp)
    1ef2:	c5 fa 7e 95 c0 fa ff 	vmovq  -0x540(%rbp),%xmm2
    1ef9:	ff 
    1efa:	4c 89 85 c0 fa ff ff 	mov    %r8,-0x540(%rbp)
    1f01:	c5 fa 7e 9d c0 fa ff 	vmovq  -0x540(%rbp),%xmm3
    1f08:	ff 
    1f09:	48 89 bd c0 fa ff ff 	mov    %rdi,-0x540(%rbp)
    1f10:	c5 fa 7e 85 c0 fa ff 	vmovq  -0x540(%rbp),%xmm0
    1f17:	ff 
    1f18:	48 89 8d c0 fa ff ff 	mov    %rcx,-0x540(%rbp)
    1f1f:	c5 fa 7e 8d c0 fa ff 	vmovq  -0x540(%rbp),%xmm1
    1f26:	ff 
    1f27:	48 89 c7             	mov    %rax,%rdi
    1f2a:	e8 00 00 00 00       	callq  1f2f <main+0x368>

  stats.time_start();
    1f2f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f36 <main+0x36f>
    1f36:	e8 00 00 00 00       	callq  1f3b <main+0x374>
#ifndef USE_KDTREE
  raytrace(camera, scene, screen);
    1f3b:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1f42:	48 8d b5 20 fb ff ff 	lea    -0x4e0(%rbp),%rsi
    1f49:	48 8d 85 80 fb ff ff 	lea    -0x480(%rbp),%rax
    1f50:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f55:	48 89 c7             	mov    %rax,%rdi
    1f58:	e8 00 00 00 00       	callq  1f5d <main+0x396>
#else
  std::unique_ptr<KDTree> tree =  std::unique_ptr<KDTree>( KDTree::buildTree( triangles ) );
  raytrace(camera, scene, screen, tree.get());
#endif
  stats.time_stop();
    1f5d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f64 <main+0x39d>
    1f64:	e8 00 00 00 00       	callq  1f69 <main+0x3a2>
  if (write_ppm_to_stdout) {
    1f69:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 1f70 <main+0x3a9>
    1f70:	84 c0                	test   %al,%al
    1f72:	74 16                	je     1f8a <main+0x3c3>
    std::cout << screen; // write image in PPM format to the standard output
    1f74:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1f7b:	48 89 c6             	mov    %rax,%rsi
    1f7e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1f85 <main+0x3be>
    1f85:	e8 00 00 00 00       	callq  1f8a <main+0x3c3>
  }
  write_bmp(output, screen);
    1f8a:	48 8d 95 00 fb ff ff 	lea    -0x500(%rbp),%rdx
    1f91:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1f98:	48 89 d6             	mov    %rdx,%rsi
    1f9b:	48 89 c7             	mov    %rax,%rdi
    1f9e:	e8 00 00 00 00       	callq  1fa3 <main+0x3dc>
  output.close();
    1fa3:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1faa:	48 89 c7             	mov    %rax,%rdi
    1fad:	e8 00 00 00 00       	callq  1fb2 <main+0x3eb>
  stats.print();
    1fb2:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1fb9 <main+0x3f2>
    1fb9:	e8 00 00 00 00       	callq  1fbe <main+0x3f7>

  return 0;
    1fbe:	bb 00 00 00 00       	mov    $0x0,%ebx
  Screen screen(resolution_x, resolution_y);
    1fc3:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    1fca:	48 89 c7             	mov    %rax,%rdi
    1fcd:	e8 00 00 00 00       	callq  1fd2 <main+0x40b>
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    1fd2:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    1fd9:	48 89 c7             	mov    %rax,%rdi
    1fdc:	e8 00 00 00 00       	callq  1fe1 <main+0x41a>
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    1fe1:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    1fe8:	48 89 c7             	mov    %rax,%rdi
    1feb:	e8 00 00 00 00       	callq  1ff0 <main+0x429>
  std::ifstream input(input_file_name);
    1ff0:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    1ff7:	48 89 c7             	mov    %rax,%rdi
    1ffa:	e8 00 00 00 00       	callq  1fff <main+0x438>
  Scene scene;
    1fff:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    2006:	48 89 c7             	mov    %rax,%rdi
    2009:	e8 00 00 00 00       	callq  200e <main+0x447>
    200e:	89 d8                	mov    %ebx,%eax
}
    2010:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    2014:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    201b:	00 00 
    201d:	74 74                	je     2093 <main+0x4cc>
    201f:	eb 6d                	jmp    208e <main+0x4c7>
    2021:	48 89 c3             	mov    %rax,%rbx
  Screen screen(resolution_x, resolution_y);
    2024:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    202b:	48 89 c7             	mov    %rax,%rdi
    202e:	e8 00 00 00 00       	callq  2033 <main+0x46c>
    2033:	eb 03                	jmp    2038 <main+0x471>
    2035:	48 89 c3             	mov    %rax,%rbx
  std::vector<Triangle<FLOAT> *> triangles = scene.getTriangles();
    2038:	48 8d 85 e0 fa ff ff 	lea    -0x520(%rbp),%rax
    203f:	48 89 c7             	mov    %rax,%rdi
    2042:	e8 00 00 00 00       	callq  2047 <main+0x480>
    2047:	eb 03                	jmp    204c <main+0x485>
    2049:	48 89 c3             	mov    %rax,%rbx
  std::ofstream output(output_bmp_file_name, std::ofstream::binary); // for windows
    204c:	48 8d 85 c0 fb ff ff 	lea    -0x440(%rbp),%rax
    2053:	48 89 c7             	mov    %rax,%rdi
    2056:	e8 00 00 00 00       	callq  205b <main+0x494>
    205b:	eb 03                	jmp    2060 <main+0x499>
    205d:	48 89 c3             	mov    %rax,%rbx
  std::ifstream input(input_file_name);
    2060:	48 8d 85 c0 fd ff ff 	lea    -0x240(%rbp),%rax
    2067:	48 89 c7             	mov    %rax,%rdi
    206a:	e8 00 00 00 00       	callq  206f <main+0x4a8>
    206f:	eb 03                	jmp    2074 <main+0x4ad>
    2071:	48 89 c3             	mov    %rax,%rbx
  Scene scene;
    2074:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    207b:	48 89 c7             	mov    %rax,%rdi
    207e:	e8 00 00 00 00       	callq  2083 <main+0x4bc>
    2083:	48 89 d8             	mov    %rbx,%rax
    2086:	48 89 c7             	mov    %rax,%rdi
    2089:	e8 00 00 00 00       	callq  208e <main+0x4c7>
}
    208e:	e8 00 00 00 00       	callq  2093 <main+0x4cc>
    2093:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    2097:	5b                   	pop    %rbx
    2098:	41 5c                	pop    %r12
    209a:	41 5d                	pop    %r13
    209c:	41 5e                	pop    %r14
    209e:	41 5f                	pop    %r15
    20a0:	5d                   	pop    %rbp
    20a1:	c3                   	retq   

00000000000020a2 <_Z41__static_initialization_and_destruction_0ii>:
    20a2:	55                   	push   %rbp
    20a3:	48 89 e5             	mov    %rsp,%rbp
    20a6:	53                   	push   %rbx
    20a7:	48 83 ec 28          	sub    $0x28,%rsp
    20ab:	89 7d dc             	mov    %edi,-0x24(%rbp)
    20ae:	89 75 d8             	mov    %esi,-0x28(%rbp)
    20b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20b8:	00 00 
    20ba:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    20be:	31 c0                	xor    %eax,%eax
    20c0:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
    20c4:	0f 85 0a 01 00 00    	jne    21d4 <_Z41__static_initialization_and_destruction_0ii+0x132>
    20ca:	81 7d d8 ff ff 00 00 	cmpl   $0xffff,-0x28(%rbp)
    20d1:	0f 85 fd 00 00 00    	jne    21d4 <_Z41__static_initialization_and_destruction_0ii+0x132>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    20d7:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 20de <_Z41__static_initialization_and_destruction_0ii+0x3c>
    20de:	e8 00 00 00 00       	callq  20e3 <_Z41__static_initialization_and_destruction_0ii+0x41>
    20e3:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 20ea <_Z41__static_initialization_and_destruction_0ii+0x48>
    20ea:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 20f1 <_Z41__static_initialization_and_destruction_0ii+0x4f>
    20f1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 20f8 <_Z41__static_initialization_and_destruction_0ii+0x56>
    20f8:	48 89 c7             	mov    %rax,%rdi
    20fb:	e8 00 00 00 00       	callq  2100 <_Z41__static_initialization_and_destruction_0ii+0x5e>
static std::string input_file_name = "examples/teapot.obj";
    2100:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2104:	48 89 c7             	mov    %rax,%rdi
    2107:	e8 00 00 00 00       	callq  210c <_Z41__static_initialization_and_destruction_0ii+0x6a>
    210c:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2110:	48 89 c2             	mov    %rax,%rdx
    2113:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 211a <_Z41__static_initialization_and_destruction_0ii+0x78>
    211a:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 2121 <_Z41__static_initialization_and_destruction_0ii+0x7f>
    2121:	e8 00 00 00 00       	callq  2126 <_Z41__static_initialization_and_destruction_0ii+0x84>
    2126:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    212a:	48 89 c7             	mov    %rax,%rdi
    212d:	e8 00 00 00 00       	callq  2132 <_Z41__static_initialization_and_destruction_0ii+0x90>
    2132:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2139 <_Z41__static_initialization_and_destruction_0ii+0x97>
    2139:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2140 <_Z41__static_initialization_and_destruction_0ii+0x9e>
    2140:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2147 <_Z41__static_initialization_and_destruction_0ii+0xa5>
    2147:	48 89 c7             	mov    %rax,%rdi
    214a:	e8 00 00 00 00       	callq  214f <_Z41__static_initialization_and_destruction_0ii+0xad>
static std::string output_bmp_file_name = "output.bmp";
    214f:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2153:	48 89 c7             	mov    %rax,%rdi
    2156:	e8 00 00 00 00       	callq  215b <_Z41__static_initialization_and_destruction_0ii+0xb9>
    215b:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    215f:	48 89 c2             	mov    %rax,%rdx
    2162:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2169 <_Z41__static_initialization_and_destruction_0ii+0xc7>
    2169:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 2170 <_Z41__static_initialization_and_destruction_0ii+0xce>
    2170:	e8 00 00 00 00       	callq  2175 <_Z41__static_initialization_and_destruction_0ii+0xd3>
    2175:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    2179:	48 89 c7             	mov    %rax,%rdi
    217c:	e8 00 00 00 00       	callq  2181 <_Z41__static_initialization_and_destruction_0ii+0xdf>
    2181:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2188 <_Z41__static_initialization_and_destruction_0ii+0xe6>
    2188:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 218f <_Z41__static_initialization_and_destruction_0ii+0xed>
    218f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2196 <_Z41__static_initialization_and_destruction_0ii+0xf4>
    2196:	48 89 c7             	mov    %rax,%rdi
    2199:	e8 00 00 00 00       	callq  219e <_Z41__static_initialization_and_destruction_0ii+0xfc>
}
    219e:	eb 34                	jmp    21d4 <_Z41__static_initialization_and_destruction_0ii+0x132>
    21a0:	48 89 c3             	mov    %rax,%rbx
static std::string input_file_name = "examples/teapot.obj";
    21a3:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    21a7:	48 89 c7             	mov    %rax,%rdi
    21aa:	e8 00 00 00 00       	callq  21af <_Z41__static_initialization_and_destruction_0ii+0x10d>
    21af:	48 89 d8             	mov    %rbx,%rax
    21b2:	48 89 c7             	mov    %rax,%rdi
    21b5:	e8 00 00 00 00       	callq  21ba <_Z41__static_initialization_and_destruction_0ii+0x118>
    21ba:	48 89 c3             	mov    %rax,%rbx
static std::string output_bmp_file_name = "output.bmp";
    21bd:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    21c1:	48 89 c7             	mov    %rax,%rdi
    21c4:	e8 00 00 00 00       	callq  21c9 <_Z41__static_initialization_and_destruction_0ii+0x127>
    21c9:	48 89 d8             	mov    %rbx,%rax
    21cc:	48 89 c7             	mov    %rax,%rdi
    21cf:	e8 00 00 00 00       	callq  21d4 <_Z41__static_initialization_and_destruction_0ii+0x132>
}
    21d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    21d8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    21df:	00 00 
    21e1:	74 05                	je     21e8 <_Z41__static_initialization_and_destruction_0ii+0x146>
    21e3:	e8 00 00 00 00       	callq  21e8 <_Z41__static_initialization_and_destruction_0ii+0x146>
    21e8:	48 83 c4 28          	add    $0x28,%rsp
    21ec:	5b                   	pop    %rbx
    21ed:	5d                   	pop    %rbp
    21ee:	c3                   	retq   

00000000000021ef <_GLOBAL__sub_I__ZlsRSoRK6Screen>:
    21ef:	55                   	push   %rbp
    21f0:	48 89 e5             	mov    %rsp,%rbp
    21f3:	be ff ff 00 00       	mov    $0xffff,%esi
    21f8:	bf 01 00 00 00       	mov    $0x1,%edi
    21fd:	e8 a0 fe ff ff       	callq  20a2 <_Z41__static_initialization_and_destruction_0ii>
    2202:	5d                   	pop    %rbp
    2203:	c3                   	retq   

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
   8:	c5 fa 11 45 f4       	vmovss %xmm0,-0xc(%rbp)
   d:	c5 fa 11 4d f0       	vmovss %xmm1,-0x10(%rbp)
  12:	c5 fa 11 55 ec       	vmovss %xmm2,-0x14(%rbp)
     : red(red), green(green), blue(blue)
  17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1b:	c5 fa 10 45 f4       	vmovss -0xc(%rbp),%xmm0
  20:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  24:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  28:	c5 fa 10 45 f0       	vmovss -0x10(%rbp),%xmm0
  2d:	c5 fa 11 40 04       	vmovss %xmm0,0x4(%rax)
  32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  36:	c5 fa 10 45 ec       	vmovss -0x14(%rbp),%xmm0
  3b:	c5 fa 11 40 08       	vmovss %xmm0,0x8(%rax)
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
   c:	c5 fa 10 00          	vmovss (%rax),%xmm0
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
   c:	c5 fa 10 40 04       	vmovss 0x4(%rax),%xmm0
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
   c:	c5 fa 10 40 08       	vmovss 0x8(%rax),%xmm0
  }
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZNK5ColorplES_:

0000000000000000 <_ZNK5ColorplES_>:
  Color operator+(Color addend) const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  23:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  27:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  2b:	c5 fa 11 45 c0       	vmovss %xmm0,-0x40(%rbp)
  30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  37:	00 00 
  39:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3d:	31 c0                	xor    %eax,%eax
    return Color(red + addend.red, green + addend.green, blue + addend.blue);
  3f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  43:	c5 fa 10 48 08       	vmovss 0x8(%rax),%xmm1
  48:	c5 fa 10 45 c0       	vmovss -0x40(%rbp),%xmm0
  4d:	c5 f2 58 d0          	vaddss %xmm0,%xmm1,%xmm2
  51:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  55:	c5 fa 10 48 04       	vmovss 0x4(%rax),%xmm1
  5a:	c5 fa 10 45 bc       	vmovss -0x44(%rbp),%xmm0
  5f:	c5 f2 58 d8          	vaddss %xmm0,%xmm1,%xmm3
  63:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  67:	c5 fa 10 08          	vmovss (%rax),%xmm1
  6b:	c5 fa 10 45 b8       	vmovss -0x48(%rbp),%xmm0
  70:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  74:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  78:	c5 f8 28 cb          	vmovaps %xmm3,%xmm1
  7c:	48 89 c7             	mov    %rax,%rdi
  7f:	e8 00 00 00 00       	callq  84 <_ZNK5ColorplES_+0x84>
  84:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  88:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  8c:	8b 45 d8             	mov    -0x28(%rbp),%eax
  8f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  92:	48 8b 45 dc          	mov    -0x24(%rbp),%rax
  96:	c5 fa 10 45 e4       	vmovss -0x1c(%rbp),%xmm0
  9b:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  9f:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  a3:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  b3:	00 00 
  b5:	74 05                	je     bc <_ZNK5ColorplES_+0xbc>
  b7:	e8 00 00 00 00       	callq  bc <_ZNK5ColorplES_+0xbc>
  bc:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  c3:	41 5a                	pop    %r10
  c5:	5d                   	pop    %rbp
  c6:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  ca:	c3                   	retq   

Disassembly of section .text._ZNK5ColormlES_:

0000000000000000 <_ZNK5ColormlES_>:
  Color operator*(Color factor) const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  23:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  27:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  2b:	c5 fa 11 45 c0       	vmovss %xmm0,-0x40(%rbp)
  30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  37:	00 00 
  39:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3d:	31 c0                	xor    %eax,%eax
    return Color(red * factor.red, green * factor.green, blue * factor.blue);
  3f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  43:	c5 fa 10 48 08       	vmovss 0x8(%rax),%xmm1
  48:	c5 fa 10 45 c0       	vmovss -0x40(%rbp),%xmm0
  4d:	c5 f2 59 d0          	vmulss %xmm0,%xmm1,%xmm2
  51:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  55:	c5 fa 10 48 04       	vmovss 0x4(%rax),%xmm1
  5a:	c5 fa 10 45 bc       	vmovss -0x44(%rbp),%xmm0
  5f:	c5 f2 59 d8          	vmulss %xmm0,%xmm1,%xmm3
  63:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  67:	c5 fa 10 08          	vmovss (%rax),%xmm1
  6b:	c5 fa 10 45 b8       	vmovss -0x48(%rbp),%xmm0
  70:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
  74:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  78:	c5 f8 28 cb          	vmovaps %xmm3,%xmm1
  7c:	48 89 c7             	mov    %rax,%rdi
  7f:	e8 00 00 00 00       	callq  84 <_ZNK5ColormlES_+0x84>
  84:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  88:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  8c:	8b 45 d8             	mov    -0x28(%rbp),%eax
  8f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  92:	48 8b 45 dc          	mov    -0x24(%rbp),%rax
  96:	c5 fa 10 45 e4       	vmovss -0x1c(%rbp),%xmm0
  9b:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  9f:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  a3:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  b3:	00 00 
  b5:	74 05                	je     bc <_ZNK5ColormlES_+0xbc>
  b7:	e8 00 00 00 00       	callq  bc <_ZNK5ColormlES_+0xbc>
  bc:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  c3:	41 5a                	pop    %r10
  c5:	5d                   	pop    %rbp
  c6:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  ca:	c3                   	retq   

Disassembly of section .text._Zmlf5Color:

0000000000000000 <_Zmlf5Color>:
  friend Color operator*(const FLOAT factor, Color color)  {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	c5 fa 11 45 cc       	vmovss %xmm0,-0x34(%rbp)
  1f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  24:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
  28:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  2c:	c5 fa 11 45 c0       	vmovss %xmm0,-0x40(%rbp)
  31:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  38:	00 00 
  3a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3e:	31 c0                	xor    %eax,%eax
    return Color(factor * color.red, factor * color.green, factor * color.blue);
  40:	c5 fa 10 45 c0       	vmovss -0x40(%rbp),%xmm0
  45:	c5 fa 59 55 cc       	vmulss -0x34(%rbp),%xmm0,%xmm2
  4a:	c5 fa 10 45 bc       	vmovss -0x44(%rbp),%xmm0
  4f:	c5 fa 59 4d cc       	vmulss -0x34(%rbp),%xmm0,%xmm1
  54:	c5 fa 10 45 b8       	vmovss -0x48(%rbp),%xmm0
  59:	c5 fa 59 45 cc       	vmulss -0x34(%rbp),%xmm0,%xmm0
  5e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  62:	48 89 c7             	mov    %rax,%rdi
  65:	e8 00 00 00 00       	callq  6a <_Zmlf5Color+0x6a>
  6a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  6e:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  72:	8b 45 d8             	mov    -0x28(%rbp),%eax
  75:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  78:	48 8b 45 dc          	mov    -0x24(%rbp),%rax
  7c:	c5 fa 10 45 e4       	vmovss -0x1c(%rbp),%xmm0
  81:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  85:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  89:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  92:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  99:	00 00 
  9b:	74 05                	je     a2 <_Zmlf5Color+0xa2>
  9d:	e8 00 00 00 00       	callq  a2 <_Zmlf5Color+0xa2>
  a2:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  a9:	41 5a                	pop    %r10
  ab:	5d                   	pop    %rbp
  ac:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  b0:	c3                   	retq   

Disassembly of section .text._ZN8MaterialC2E5Colorffff:

0000000000000000 <_ZN8MaterialC1E5Colorffff>:
  Material(Color color = Color(1.0, 0.7, 0.8),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
   d:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  11:	c5 fa 11 55 e4       	vmovss %xmm2,-0x1c(%rbp)
  16:	c5 fa 11 5d e0       	vmovss %xmm3,-0x20(%rbp)
  1b:	c5 fa 11 65 dc       	vmovss %xmm4,-0x24(%rbp)
  20:	c5 fa 11 6d d8       	vmovss %xmm5,-0x28(%rbp)
  25:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  29:	c5 fa 11 45 f0       	vmovss %xmm0,-0x10(%rbp)
    : color(color), ambient(ambient), diffuse(diffuse), reflection(reflection), transmission(transmission) {
  2e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  32:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  36:	48 89 10             	mov    %rdx,(%rax)
  39:	8b 55 f0             	mov    -0x10(%rbp),%edx
  3c:	89 50 08             	mov    %edx,0x8(%rax)
  3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  43:	c5 fa 10 45 e4       	vmovss -0x1c(%rbp),%xmm0
  48:	c5 fa 11 40 0c       	vmovss %xmm0,0xc(%rax)
  4d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  51:	c5 fa 10 45 e0       	vmovss -0x20(%rbp),%xmm0
  56:	c5 fa 11 40 10       	vmovss %xmm0,0x10(%rax)
  5b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5f:	c5 fa 10 45 dc       	vmovss -0x24(%rbp),%xmm0
  64:	c5 fa 11 40 14       	vmovss %xmm0,0x14(%rax)
  69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6d:	c5 fa 10 45 d8       	vmovss -0x28(%rbp),%xmm0
  72:	c5 fa 11 40 18       	vmovss %xmm0,0x18(%rax)
  }
  77:	90                   	nop
  78:	5d                   	pop    %rbp
  79:	c3                   	retq   

Disassembly of section .text._ZNK8Material8getColorEv:

0000000000000000 <_ZNK8Material8getColorEv>:
  Color getColor() const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    return color;
  17:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1b:	48 8b 10             	mov    (%rax),%rdx
  1e:	48 89 55 e4          	mov    %rdx,-0x1c(%rbp)
  22:	8b 40 08             	mov    0x8(%rax),%eax
  25:	89 45 ec             	mov    %eax,-0x14(%rbp)
  28:	48 8b 45 e4          	mov    -0x1c(%rbp),%rax
  2c:	c5 fa 10 45 ec       	vmovss -0x14(%rbp),%xmm0
  31:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  35:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  39:	c5 fa 7e 45 a8       	vmovq  -0x58(%rbp),%xmm0
  3e:	41 5a                	pop    %r10
  40:	5d                   	pop    %rbp
  41:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  45:	c3                   	retq   

Disassembly of section .text._ZNK8Material10getAmbientEv:

0000000000000000 <_ZNK8Material10getAmbientEv>:
  FLOAT getAmbient() const {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return ambient;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	c5 fa 10 40 0c       	vmovss 0xc(%rax),%xmm0
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
   c:	c5 fa 10 40 10       	vmovss 0x10(%rax),%xmm0
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
  86:	c5 e8 57 d2          	vxorps %xmm2,%xmm2,%xmm2
  8a:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
  8e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
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
  14:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  19:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  1d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  21:	c5 fa 11 45 e0       	vmovss %xmm0,-0x20(%rbp)
    buffer[x + y * width] = color;
  26:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  2a:	48 8b 00             	mov    (%rax),%rax
  2d:	48 0f af 45 e8       	imul   -0x18(%rbp),%rax
  32:	48 89 c2             	mov    %rax,%rdx
  35:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  39:	48 01 c2             	add    %rax,%rdx
  3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40:	48 83 c0 10          	add    $0x10,%rax
  44:	48 89 d6             	mov    %rdx,%rsi
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZN6Screen8setPixelEmm5Color+0x4f>
  4f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  53:	48 89 10             	mov    %rdx,(%rax)
  56:	8b 55 e0             	mov    -0x20(%rbp),%edx
  59:	89 50 08             	mov    %edx,0x8(%rax)
  }
  5c:	90                   	nop
  5d:	c9                   	leaveq 
  5e:	c3                   	retq   

Disassembly of section .text._ZN6Screen5clearE5Color:

0000000000000000 <_ZN6Screen5clearE5Color>:
  void clear(Color color = Color(0.0, 0.0, 0.0) ) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  11:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  15:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  19:	c5 fa 11 45 e0       	vmovss %xmm0,-0x20(%rbp)
    for (size_t x = 0u; x < getWidth(); x++) {
  1e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  25:	00 
  26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  2a:	48 89 c7             	mov    %rax,%rdi
  2d:	e8 00 00 00 00       	callq  32 <_ZN6Screen5clearE5Color+0x32>
  32:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  36:	0f 92 c0             	setb   %al
  39:	84 c0                	test   %al,%al
  3b:	74 56                	je     93 <_ZN6Screen5clearE5Color+0x93>
      for (size_t y = 0u; y < getHeight(); y++) {
  3d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  44:	00 
  45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  49:	48 89 c7             	mov    %rax,%rdi
  4c:	e8 00 00 00 00       	callq  51 <_ZN6Screen5clearE5Color+0x51>
  51:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  55:	0f 92 c0             	setb   %al
  58:	84 c0                	test   %al,%al
  5a:	74 30                	je     8c <_ZN6Screen5clearE5Color+0x8c>
         setPixel(x, y, color );
  5c:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  60:	c5 fa 10 4d e0       	vmovss -0x20(%rbp),%xmm1
  65:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  69:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  71:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  75:	c5 fa 7e 45 d0       	vmovq  -0x30(%rbp),%xmm0
  7a:	48 89 ce             	mov    %rcx,%rsi
  7d:	48 89 c7             	mov    %rax,%rdi
  80:	e8 00 00 00 00       	callq  85 <_ZN6Screen5clearE5Color+0x85>
      for (size_t y = 0u; y < getHeight(); y++) {
  85:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  8a:	eb b9                	jmp    45 <_ZN6Screen5clearE5Color+0x45>
    for (size_t x = 0u; x < getWidth(); x++) {
  8c:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  91:	eb 93                	jmp    26 <_ZN6Screen5clearE5Color+0x26>
  }
  93:	90                   	nop
  94:	c9                   	leaveq 
  95:	c3                   	retq   

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
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  1e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  22:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    return buffer[x + y * width];
  26:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  2a:	48 8b 00             	mov    (%rax),%rax
  2d:	48 0f af 45 c8       	imul   -0x38(%rbp),%rax
  32:	48 89 c2             	mov    %rax,%rdx
  35:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  39:	48 01 c2             	add    %rax,%rdx
  3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40:	48 83 c0 10          	add    $0x10,%rax
  44:	48 89 d6             	mov    %rdx,%rsi
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	callq  4f <_ZNK6Screen8getPixelEmm+0x4f>
  4f:	48 8b 10             	mov    (%rax),%rdx
  52:	48 89 55 e4          	mov    %rdx,-0x1c(%rbp)
  56:	8b 40 08             	mov    0x8(%rax),%eax
  59:	89 45 ec             	mov    %eax,-0x14(%rbp)
  5c:	48 8b 45 e4          	mov    -0x1c(%rbp),%rax
  60:	c5 fa 10 45 ec       	vmovss -0x14(%rbp),%xmm0
  65:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  69:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  6d:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  72:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  79:	41 5a                	pop    %r10
  7b:	5d                   	pop    %rbp
  7c:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  80:	c3                   	retq   

Disassembly of section .text._ZN6CameraC2E6VectorIfLm3EES1_S1_S1_ff:

0000000000000000 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff>:
  Camera(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> center, Vector<FLOAT, 3>up, Vector<FLOAT, 3> right, FLOAT pixelWidth = 1.0, FLOAT pixelHeight = 1.0 )
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 78          	sub    $0x78,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  12:	c4 c1 f9 7e ca       	vmovq  %xmm1,%r10
  17:	c4 e1 f9 7e d6       	vmovq  %xmm2,%rsi
  1c:	c4 c1 f9 7e d9       	vmovq  %xmm3,%r9
  21:	c4 e1 f9 7e e1       	vmovq  %xmm4,%rcx
  26:	c4 c1 f9 7e e8       	vmovq  %xmm5,%r8
  2b:	c4 e1 f9 7e f2       	vmovq  %xmm6,%rdx
  30:	c4 e1 f9 7e ff       	vmovq  %xmm7,%rdi
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
  a3:	c5 fa 7e 45 80       	vmovq  -0x80(%rbp),%xmm0
  a8:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  ac:	c5 fa 7e 4d 80       	vmovq  -0x80(%rbp),%xmm1
  b1:	48 89 c7             	mov    %rax,%rdi
  b4:	e8 00 00 00 00       	callq  b9 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0xb9>
  b9:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  be:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
  e5:	c5 fa 7e 45 80       	vmovq  -0x80(%rbp),%xmm0
  ea:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  ee:	c5 fa 7e 4d 80       	vmovq  -0x80(%rbp),%xmm1
  f3:	48 89 c7             	mov    %rax,%rdi
  f6:	e8 00 00 00 00       	callq  fb <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0xfb>
  fb:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 100:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 105:	48 89 43 0c          	mov    %rax,0xc(%rbx)
 109:	8b 43 14             	mov    0x14(%rbx),%eax
 10c:	83 e0 00             	and    $0x0,%eax
 10f:	09 d0                	or     %edx,%eax
 111:	89 43 14             	mov    %eax,0x14(%rbx)
 114:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 118:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
 11c:	8b 45 a0             	mov    -0x60(%rbp),%eax
 11f:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
 123:	c5 fa 7e 4d 80       	vmovq  -0x80(%rbp),%xmm1
 128:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 12c:	c5 fa 7e 55 80       	vmovq  -0x80(%rbp),%xmm2
 131:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 139 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x139>
 138:	00 
 139:	e8 00 00 00 00       	callq  13e <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x13e>
 13e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 143:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 148:	48 89 43 18          	mov    %rax,0x18(%rbx)
 14c:	8b 43 20             	mov    0x20(%rbx),%eax
 14f:	83 e0 00             	and    $0x0,%eax
 152:	09 d0                	or     %edx,%eax
 154:	89 43 20             	mov    %eax,0x20(%rbx)
 157:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
 15b:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
 15f:	8b 45 90             	mov    -0x70(%rbp),%eax
 162:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
 166:	c5 fa 7e 4d 80       	vmovq  -0x80(%rbp),%xmm1
 16b:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 16f:	c5 fa 7e 55 80       	vmovq  -0x80(%rbp),%xmm2
 174:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 17c <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x17c>
 17b:	00 
 17c:	e8 00 00 00 00       	callq  181 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_ff+0x181>
 181:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 186:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 18b:	48 89 43 24          	mov    %rax,0x24(%rbx)
 18f:	8b 43 2c             	mov    0x2c(%rbx),%eax
 192:	83 e0 00             	and    $0x0,%eax
 195:	09 d0                	or     %edx,%eax
 197:	89 43 2c             	mov    %eax,0x2c(%rbx)
 19a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 19e:	c5 fa 10 45 10       	vmovss 0x10(%rbp),%xmm0
 1a3:	c5 fa 11 40 30       	vmovss %xmm0,0x30(%rax)
 1a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 1ac:	c5 fa 10 45 18       	vmovss 0x18(%rbp),%xmm0
 1b1:	c5 fa 11 40 34       	vmovss %xmm0,0x34(%rax)
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
   c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  11:	c4 c1 f9 7e cb       	vmovq  %xmm1,%r11
  16:	c4 e1 f9 7e d7       	vmovq  %xmm2,%rdi
  1b:	c4 c1 f9 7e da       	vmovq  %xmm3,%r10
  20:	c4 e1 f9 7e e1       	vmovq  %xmm4,%rcx
  25:	c4 c1 f9 7e e9       	vmovq  %xmm5,%r9
  2a:	c4 e1 f9 7e f2       	vmovq  %xmm6,%rdx
  2f:	c4 c1 f9 7e f8       	vmovq  %xmm7,%r8
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
  84:	c5 fa 11 45 a8       	vmovss %xmm0,-0x58(%rbp)
  89:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  8d:	48 89 c7             	mov    %rax,%rdi
  90:	e8 00 00 00 00       	callq  95 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x95>
  95:	48 85 c0             	test   %rax,%rax
  98:	78 07                	js     a1 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xa1>
  9a:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  9f:	eb 15                	jmp    b6 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xb6>
  a1:	48 89 c2             	mov    %rax,%rdx
  a4:	48 d1 ea             	shr    %rdx
  a7:	83 e0 01             	and    $0x1,%eax
  aa:	48 09 c2             	or     %rax,%rdx
  ad:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
  b2:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
  b6:	c5 fa 10 4d a8       	vmovss -0x58(%rbp),%xmm1
  bb:	c5 f2 5e c0          	vdivss %xmm0,%xmm1,%xmm0
  bf:	c5 fa 58 d0          	vaddss %xmm0,%xmm0,%xmm2
  c3:	c5 fa 11 55 a8       	vmovss %xmm2,-0x58(%rbp)
             2.0 * ( right.length() / screen.getWidth() ),
  c8:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  cc:	48 89 c7             	mov    %rax,%rdi
  cf:	e8 00 00 00 00       	callq  d4 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xd4>
  d4:	c5 fa 11 45 a4       	vmovss %xmm0,-0x5c(%rbp)
  d9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  dd:	48 89 c7             	mov    %rax,%rdi
  e0:	e8 00 00 00 00       	callq  e5 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xe5>
  e5:	48 85 c0             	test   %rax,%rax
  e8:	78 07                	js     f1 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0xf1>
  ea:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  ef:	eb 15                	jmp    106 <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x106>
  f1:	48 89 c2             	mov    %rax,%rdx
  f4:	48 d1 ea             	shr    %rdx
  f7:	83 e0 01             	and    $0x1,%eax
  fa:	48 09 c2             	or     %rax,%rdx
  fd:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
 102:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
 106:	c5 fa 10 5d a4       	vmovss -0x5c(%rbp),%xmm3
 10b:	c5 e2 5e c0          	vdivss %xmm0,%xmm3,%xmm0
             2.0 * ( up.length() / screen.getHeight() ) ) {
 10f:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
 113:	4c 8b 5d b8          	mov    -0x48(%rbp),%r11
 117:	44 8b 55 c0          	mov    -0x40(%rbp),%r10d
 11b:	4c 8b 4d c8          	mov    -0x38(%rbp),%r9
 11f:	44 8b 45 d0          	mov    -0x30(%rbp),%r8d
 123:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
 127:	8b 75 e0             	mov    -0x20(%rbp),%esi
 12a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 12e:	8b 55 f0             	mov    -0x10(%rbp),%edx
 131:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 135:	c5 fa 10 65 a8       	vmovss -0x58(%rbp),%xmm4
 13a:	48 8d 64 24 f8       	lea    -0x8(%rsp),%rsp
 13f:	c5 fa 11 24 24       	vmovss %xmm4,(%rsp)
 144:	48 8d 64 24 f8       	lea    -0x8(%rsp),%rsp
 149:	c5 fa 11 04 24       	vmovss %xmm0,(%rsp)
 14e:	4c 89 5d a8          	mov    %r11,-0x58(%rbp)
 152:	c5 fa 7e 75 a8       	vmovq  -0x58(%rbp),%xmm6
 157:	4c 89 55 a8          	mov    %r10,-0x58(%rbp)
 15b:	c5 fa 7e 7d a8       	vmovq  -0x58(%rbp),%xmm7
 160:	4c 89 4d a8          	mov    %r9,-0x58(%rbp)
 164:	c5 fa 7e 65 a8       	vmovq  -0x58(%rbp),%xmm4
 169:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
 16d:	c5 fa 7e 6d a8       	vmovq  -0x58(%rbp),%xmm5
 172:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
 176:	c5 fa 7e 55 a8       	vmovq  -0x58(%rbp),%xmm2
 17b:	48 89 75 a8          	mov    %rsi,-0x58(%rbp)
 17f:	c5 fa 7e 5d a8       	vmovq  -0x58(%rbp),%xmm3
 184:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
 188:	c5 fa 7e 45 a8       	vmovq  -0x58(%rbp),%xmm0
 18d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
 191:	c5 fa 7e 4d a8       	vmovq  -0x58(%rbp),%xmm1
 196:	48 89 c7             	mov    %rax,%rdi
 199:	e8 00 00 00 00       	callq  19e <_ZN6CameraC1E6VectorIfLm3EES1_S1_S1_R6Screen+0x19e>
 19e:	48 83 c4 10          	add    $0x10,%rsp
  }
 1a2:	90                   	nop
 1a3:	c9                   	leaveq 
 1a4:	c3                   	retq   

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
  30:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  35:	eb 15                	jmp    4c <_ZNK6Camera6getRayEmm+0x4c>
  37:	48 89 c2             	mov    %rax,%rdx
  3a:	48 d1 ea             	shr    %rdx
  3d:	83 e0 01             	and    $0x1,%eax
  40:	48 09 c2             	or     %rax,%rdx
  43:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
  48:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
  4c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  50:	c5 fa 10 48 34       	vmovss 0x34(%rax),%xmm1
  55:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
  59:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  5d:	48 8b 50 18          	mov    0x18(%rax),%rdx
  61:	8b 40 20             	mov    0x20(%rax),%eax
  64:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  68:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
  6d:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  71:	c5 fa 7e 55 88       	vmovq  -0x78(%rbp),%xmm2
  76:	e8 00 00 00 00       	callq  7b <_ZNK6Camera6getRayEmm+0x7b>
  7b:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  80:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  85:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  89:	8b 45 e8             	mov    -0x18(%rbp),%eax
  8c:	83 e0 00             	and    $0x0,%eax
  8f:	09 d0                	or     %edx,%eax
  91:	89 45 e8             	mov    %eax,-0x18(%rbp)
                  + (x * pixelWidth) * right
  94:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  98:	48 85 c0             	test   %rax,%rax
  9b:	78 07                	js     a4 <_ZNK6Camera6getRayEmm+0xa4>
  9d:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  a2:	eb 15                	jmp    b9 <_ZNK6Camera6getRayEmm+0xb9>
  a4:	48 89 c2             	mov    %rax,%rdx
  a7:	48 d1 ea             	shr    %rdx
  aa:	83 e0 01             	and    $0x1,%eax
  ad:	48 09 c2             	or     %rax,%rdx
  b0:	c4 e1 fa 2a c2       	vcvtsi2ss %rdx,%xmm0,%xmm0
  b5:	c5 fa 58 c0          	vaddss %xmm0,%xmm0,%xmm0
  b9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  bd:	c5 fa 10 48 30       	vmovss 0x30(%rax),%xmm1
  c2:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
  c6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  ca:	48 8b 50 24          	mov    0x24(%rax),%rdx
  ce:	8b 40 2c             	mov    0x2c(%rax),%eax
  d1:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  d5:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
  da:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  de:	c5 fa 7e 55 88       	vmovq  -0x78(%rbp),%xmm2
  e3:	e8 00 00 00 00       	callq  e8 <_ZNK6Camera6getRayEmm+0xe8>
  e8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  ed:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 114:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
 119:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 11d:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
 122:	48 89 c7             	mov    %rax,%rdi
 125:	e8 00 00 00 00       	callq  12a <_ZNK6Camera6getRayEmm+0x12a>
 12a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 12f:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 152:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
 157:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 15b:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
 160:	48 89 c7             	mov    %rax,%rdi
 163:	e8 00 00 00 00       	callq  168 <_ZNK6Camera6getRayEmm+0x168>
 168:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 16d:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 193:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
 198:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 19c:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
 1a1:	48 89 c7             	mov    %rax,%rdi
 1a4:	e8 00 00 00 00       	callq  1a9 <_ZNK6Camera6getRayEmm+0x1a9>
 1a9:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 1ae:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 1db:	c5 fa 7e 55 88       	vmovq  -0x78(%rbp),%xmm2
 1e0:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
 1e4:	c5 fa 7e 5d 88       	vmovq  -0x78(%rbp),%xmm3
 1e9:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
 1ed:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
 1f2:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 1f6:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
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
   8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
   d:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
  12:	c4 e1 f9 7e d2       	vmovq  %xmm2,%rdx
  17:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  1b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1f:	8b 45 f0             	mov    -0x10(%rbp),%eax
  22:	83 e0 00             	and    $0x0,%eax
  25:	09 c8                	or     %ecx,%eax
  27:	89 45 f0             	mov    %eax,-0x10(%rbp)
  2a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  2e:	c5 fa 11 45 e0       	vmovss %xmm0,-0x20(%rbp)
    : position(position), color(color) {
  33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  37:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  3b:	48 89 10             	mov    %rdx,(%rax)
  3e:	8b 55 f0             	mov    -0x10(%rbp),%edx
  41:	89 50 08             	mov    %edx,0x8(%rax)
  44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  48:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4c:	48 89 50 0c          	mov    %rdx,0xc(%rax)
  50:	8b 55 e0             	mov    -0x20(%rbp),%edx
  53:	89 50 14             	mov    %edx,0x14(%rax)
  }
  56:	90                   	nop
  57:	5d                   	pop    %rbp
  58:	c3                   	retq   

Disassembly of section .text._ZNK5Light8getColorEv:

0000000000000000 <_ZNK5Light8getColorEv>:
  Color getColor() const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     return color;
  17:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1b:	48 8b 50 0c          	mov    0xc(%rax),%rdx
  1f:	48 89 55 e4          	mov    %rdx,-0x1c(%rbp)
  23:	8b 40 14             	mov    0x14(%rax),%eax
  26:	89 45 ec             	mov    %eax,-0x14(%rbp)
  29:	48 8b 45 e4          	mov    -0x1c(%rbp),%rax
  2d:	c5 fa 10 45 ec       	vmovss -0x14(%rbp),%xmm0
  32:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
  36:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  3a:	c5 fa 7e 45 a8       	vmovq  -0x58(%rbp),%xmm0
  3f:	41 5a                	pop    %r10
  41:	5d                   	pop    %rbp
  42:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  46:	c3                   	retq   

Disassembly of section .text._ZNK5Light11getPositionEv:

0000000000000000 <_ZNK5Light11getPositionEv>:
  Vector<FLOAT, 3> getPosition() const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	31 c0                	xor    %eax,%eax
    return position;
  2d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  31:	48 8b 10             	mov    (%rax),%rdx
  34:	48 89 55 dc          	mov    %rdx,-0x24(%rbp)
  38:	8b 40 08             	mov    0x8(%rax),%eax
  3b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  3e:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  42:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  45:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  49:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  4e:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  52:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
  57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  62:	00 00 
  64:	74 05                	je     6b <_ZNK5Light11getPositionEv+0x6b>
  66:	e8 00 00 00 00       	callq  6b <_ZNK5Light11getPositionEv+0x6b>
  6b:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  72:	41 5a                	pop    %r10
  74:	5d                   	pop    %rbp
  75:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  79:	c3                   	retq   

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
  35:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 3d <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x3d>
  3c:	00 
  3d:	c5 fa 11 45 c4       	vmovss %xmm0,-0x3c(%rbp)
  FLOAT minimum_u  = 0.0, minimum_v = 0.0;
  42:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  46:	c5 fa 11 45 c8       	vmovss %xmm0,-0x38(%rbp)
  4b:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4f:	c5 fa 11 45 cc       	vmovss %xmm0,-0x34(%rbp)
  for (size_t i = 0u; i < triangles.size(); i++) {
  54:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  5b:	00 
  5c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  60:	48 89 c7             	mov    %rax,%rdi
  63:	e8 00 00 00 00       	callq  68 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x68>
  68:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
  6c:	0f 92 c0             	setb   %al
  6f:	84 c0                	test   %al,%al
  71:	0f 84 4f 01 00 00    	je     1c6 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1c6>
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
  ac:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  b1:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  b6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  ba:	8b 45 e8             	mov    -0x18(%rbp),%eax
  bd:	83 e0 00             	and    $0x0,%eax
  c0:	09 d0                	or     %edx,%eax
  c2:	89 45 e8             	mov    %eax,-0x18(%rbp)
  c5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  c9:	48 89 c7             	mov    %rax,%rdi
  cc:	e8 00 00 00 00       	callq  d1 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0xd1>
  d1:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  d6:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  db:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
  df:	8b 45 f4             	mov    -0xc(%rbp),%eax
  e2:	83 e0 00             	and    $0x0,%eax
  e5:	09 d0                	or     %edx,%eax
  e7:	89 45 f4             	mov    %eax,-0xc(%rbp)
  ea:	c5 fa 10 45 c4       	vmovss -0x3c(%rbp),%xmm0
  ef:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  f3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  f7:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
  fb:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  ff:	44 8b 4d e8          	mov    -0x18(%rbp),%r9d
 103:	4c 8b 45 ec          	mov    -0x14(%rbp),%r8
 107:	8b 7d f4             	mov    -0xc(%rbp),%edi
 10a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 10e:	c5 f8 28 e0          	vmovaps %xmm0,%xmm4
 112:	4c 89 55 80          	mov    %r10,-0x80(%rbp)
 116:	c5 fa 7e 55 80       	vmovq  -0x80(%rbp),%xmm2
 11b:	4c 89 4d 80          	mov    %r9,-0x80(%rbp)
 11f:	c5 fa 7e 5d 80       	vmovq  -0x80(%rbp),%xmm3
 124:	4c 89 45 80          	mov    %r8,-0x80(%rbp)
 128:	c5 fa 7e 45 80       	vmovq  -0x80(%rbp),%xmm0
 12d:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
 131:	c5 fa 7e 4d 80       	vmovq  -0x80(%rbp),%xmm1
 136:	48 89 c7             	mov    %rax,%rdi
 139:	e8 00 00 00 00       	callq  13e <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x13e>
 13e:	88 45 c3             	mov    %al,-0x3d(%rbp)
    if ( intersect ) {
 141:	80 7d c3 00          	cmpb   $0x0,-0x3d(%rbp)
 145:	74 75                	je     1bc <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1bc>
      stats.no_ray_triangle_intersections_found++;          
 147:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14e <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x14e>
 14e:	48 83 c0 01          	add    $0x1,%rax
 152:	48 89 05 00 00 00 00 	mov    %rax,0x0(%rip)        # 159 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x159>
      if ( (nearest_triangle == nullptr)  || (t < minimum_t) ) {      
 159:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 15d:	48 8b 00             	mov    (%rax),%rax
 160:	48 85 c0             	test   %rax,%rax
 163:	74 13                	je     178 <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x178>
 165:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 169:	c5 fa 10 08          	vmovss (%rax),%xmm1
 16d:	c5 fa 10 45 c4       	vmovss -0x3c(%rbp),%xmm0
 172:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
 176:	76 44                	jbe    1bc <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1bc>
        minimum_t = t;
 178:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 17c:	c5 fa 10 00          	vmovss (%rax),%xmm0
 180:	c5 fa 11 45 c4       	vmovss %xmm0,-0x3c(%rbp)
        minimum_u = u;
 185:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 189:	c5 fa 10 00          	vmovss (%rax),%xmm0
 18d:	c5 fa 11 45 c8       	vmovss %xmm0,-0x38(%rbp)
        minimum_v = v;
 192:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 196:	c5 fa 10 00          	vmovss (%rax),%xmm0
 19a:	c5 fa 11 45 cc       	vmovss %xmm0,-0x34(%rbp)
        nearest_triangle = triangle;
 19f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1a3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 1a7:	48 89 10             	mov    %rdx,(%rax)
        if ( ! NEAREST ) {
 1aa:	0f b6 45 8c          	movzbl -0x74(%rbp),%eax
 1ae:	83 f0 01             	xor    $0x1,%eax
 1b1:	84 c0                	test   %al,%al
 1b3:	74 07                	je     1bc <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1bc>
          return true;
 1b5:	b8 01 00 00 00       	mov    $0x1,%eax
 1ba:	eb 3e                	jmp    1fa <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x1fa>
  for (size_t i = 0u; i < triangles.size(); i++) {
 1bc:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
 1c1:	e9 96 fe ff ff       	jmpq   5c <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x5c>
  t = minimum_t;
 1c6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 1ca:	c5 fa 10 45 c4       	vmovss -0x3c(%rbp),%xmm0
 1cf:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  u = minimum_u;
 1d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 1d7:	c5 fa 10 45 c8       	vmovss -0x38(%rbp),%xmm0
 1dc:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  v = minimum_v;
 1e0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 1e4:	c5 fa 10 45 cc       	vmovss -0x34(%rbp),%xmm0
 1e9:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  return nearest_triangle != nullptr;
 1ed:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1f1:	48 8b 00             	mov    (%rax),%rax
 1f4:	48 85 c0             	test   %rax,%rax
 1f7:	0f 95 c0             	setne  %al
}
 1fa:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 1fe:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 205:	00 00 
 207:	74 05                	je     20e <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x20e>
 209:	e8 00 00 00 00       	callq  20e <_ZN5Scene18hasNearestTriangleERK3RayIfERP8TriangleIfERfS8_S8_b+0x20e>
 20e:	c9                   	leaveq 
 20f:	c3                   	retq   

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
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec a8 01 00 00 	sub    $0x1a8,%rsp
  1a:	4c 89 d0             	mov    %r10,%rax
  1d:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  24:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  2b:	48 89 95 c8 fe ff ff 	mov    %rdx,-0x138(%rbp)
  32:	48 89 8d c0 fe ff ff 	mov    %rcx,-0x140(%rbp)
  39:	4c 89 85 b8 fe ff ff 	mov    %r8,-0x148(%rbp)
  40:	4c 89 8d b0 fe ff ff 	mov    %r9,-0x150(%rbp)
  47:	48 8b 00             	mov    (%rax),%rax
  4a:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
  51:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  58:	00 00 
  5a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  5e:	31 c0                	xor    %eax,%eax
    Color color =  material.getAmbient() * material.getColor();
  60:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  67:	48 89 c7             	mov    %rax,%rdi
  6a:	e8 00 00 00 00       	callq  6f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x6f>
  6f:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  74:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  78:	48 89 85 14 ff ff ff 	mov    %rax,-0xec(%rbp)
  7f:	c5 fa 11 85 1c ff ff 	vmovss %xmm0,-0xe4(%rbp)
  86:	ff 
  87:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	callq  96 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x96>
  96:	c5 f8 28 d8          	vmovaps %xmm0,%xmm3
  9a:	48 8b 85 14 ff ff ff 	mov    -0xec(%rbp),%rax
  a1:	c5 fa 10 85 1c ff ff 	vmovss -0xe4(%rbp),%xmm0
  a8:	ff 
  a9:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
  b0:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
  b7:	ff 
  b8:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
  bc:	c5 f8 28 c3          	vmovaps %xmm3,%xmm0
  c0:	e8 00 00 00 00       	callq  c5 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xc5>
  c5:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  ca:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
  ce:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  d5:	c5 fa 11 85 10 ff ff 	vmovss %xmm0,-0xf0(%rbp)
  dc:	ff 
    FLOAT factor = 1.0 / lights.size();
  dd:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  e4:	48 83 c0 18          	add    $0x18,%rax
  e8:	48 89 c7             	mov    %rax,%rdi
  eb:	e8 00 00 00 00       	callq  f0 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xf0>
  f0:	48 85 c0             	test   %rax,%rax
  f3:	78 07                	js     fc <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0xfc>
  f5:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  fa:	eb 15                	jmp    111 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x111>
  fc:	48 89 c2             	mov    %rax,%rdx
  ff:	48 d1 ea             	shr    %rdx
 102:	83 e0 01             	and    $0x1,%eax
 105:	48 09 c2             	or     %rax,%rdx
 108:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
 10d:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
 111:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 119 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x119>
 118:	00 
 119:	c5 f3 5e c0          	vdivsd %xmm0,%xmm1,%xmm0
 11d:	c5 db 5a e0          	vcvtsd2ss %xmm0,%xmm4,%xmm4
 121:	c5 fa 11 a5 e8 fe ff 	vmovss %xmm4,-0x118(%rbp)
 128:	ff 
    Vector<FLOAT, 3> intersection = (ray.getOrigin() + 0.9999 * t * ray.getDirection());
 129:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
 130:	48 89 c7             	mov    %rax,%rdi
 133:	e8 00 00 00 00       	callq  138 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x138>
 138:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 13d:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 142:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 146:	8b 45 88             	mov    -0x78(%rbp),%eax
 149:	83 e0 00             	and    $0x0,%eax
 14c:	09 d0                	or     %edx,%eax
 14e:	89 45 88             	mov    %eax,-0x78(%rbp)
 151:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
 158:	c5 fa 10 00          	vmovss (%rax),%xmm0
 15c:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
 160:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 168 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x168>
 167:	00 
 168:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
 16c:	c5 fb 5a c0          	vcvtsd2ss %xmm0,%xmm0,%xmm0
 170:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
 174:	8b 45 88             	mov    -0x78(%rbp),%eax
 177:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 17e:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 185:	ff 
 186:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 18d:	c5 fa 7e 95 68 fe ff 	vmovq  -0x198(%rbp),%xmm2
 194:	ff 
 195:	e8 00 00 00 00       	callq  19a <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x19a>
 19a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 19f:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 1a4:	48 89 45 8c          	mov    %rax,-0x74(%rbp)
 1a8:	8b 45 94             	mov    -0x6c(%rbp),%eax
 1ab:	83 e0 00             	and    $0x0,%eax
 1ae:	09 d0                	or     %edx,%eax
 1b0:	89 45 94             	mov    %eax,-0x6c(%rbp)
 1b3:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
 1ba:	48 89 c7             	mov    %rax,%rdi
 1bd:	e8 00 00 00 00       	callq  1c2 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x1c2>
 1c2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 1c7:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 1cc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 1d0:	8b 45 d8             	mov    -0x28(%rbp),%eax
 1d3:	83 e0 00             	and    $0x0,%eax
 1d6:	09 d0                	or     %edx,%eax
 1d8:	89 45 d8             	mov    %eax,-0x28(%rbp)
 1db:	48 8b 4d 8c          	mov    -0x74(%rbp),%rcx
 1df:	8b 55 94             	mov    -0x6c(%rbp),%edx
 1e2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 1e6:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 1ed:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 1f4:	ff 
 1f5:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 1fc:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 203:	ff 
 204:	48 89 c7             	mov    %rax,%rdi
 207:	e8 00 00 00 00       	callq  20c <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x20c>
 20c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 211:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 216:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
 21d:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
 223:	83 e0 00             	and    $0x0,%eax
 226:	09 d0                	or     %edx,%eax
 228:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
    Vector<FLOAT, 3> normal = (u * triangle.n1) + (v * triangle.n2) + ( (1.0 - u - v) * triangle.n3);    
 22e:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
 235:	c5 fa 10 00          	vmovss (%rax),%xmm0
 239:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
 23d:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 245 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x245>
 244:	00 
 245:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
 249:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 250:	c5 fa 10 08          	vmovss (%rax),%xmm1
 254:	c5 f2 5a c9          	vcvtss2sd %xmm1,%xmm1,%xmm1
 258:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
 25c:	c5 fb 5a c0          	vcvtsd2ss %xmm0,%xmm0,%xmm0
 260:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 267:	48 8b 50 3c          	mov    0x3c(%rax),%rdx
 26b:	8b 40 44             	mov    0x44(%rax),%eax
 26e:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 275:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 27c:	ff 
 27d:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 284:	c5 fa 7e 95 68 fe ff 	vmovq  -0x198(%rbp),%xmm2
 28b:	ff 
 28c:	e8 00 00 00 00       	callq  291 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x291>
 291:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 296:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 29b:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 29f:	8b 45 a0             	mov    -0x60(%rbp),%eax
 2a2:	83 e0 00             	and    $0x0,%eax
 2a5:	09 d0                	or     %edx,%eax
 2a7:	89 45 a0             	mov    %eax,-0x60(%rbp)
 2aa:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
 2b1:	8b 10                	mov    (%rax),%edx
 2b3:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 2ba:	48 8b 48 30          	mov    0x30(%rax),%rcx
 2be:	8b 40 38             	mov    0x38(%rax),%eax
 2c1:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 2c8:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 2cf:	ff 
 2d0:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 2d7:	c5 fa 7e 95 68 fe ff 	vmovq  -0x198(%rbp),%xmm2
 2de:	ff 
 2df:	89 95 68 fe ff ff    	mov    %edx,-0x198(%rbp)
 2e5:	c5 fa 10 85 68 fe ff 	vmovss -0x198(%rbp),%xmm0
 2ec:	ff 
 2ed:	e8 00 00 00 00       	callq  2f2 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x2f2>
 2f2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 2f7:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 2fc:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
 300:	8b 45 ac             	mov    -0x54(%rbp),%eax
 303:	83 e0 00             	and    $0x0,%eax
 306:	09 d0                	or     %edx,%eax
 308:	89 45 ac             	mov    %eax,-0x54(%rbp)
 30b:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
 312:	8b 10                	mov    (%rax),%edx
 314:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 31b:	48 8b 48 24          	mov    0x24(%rax),%rcx
 31f:	8b 40 2c             	mov    0x2c(%rax),%eax
 322:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 329:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 330:	ff 
 331:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 338:	c5 fa 7e 95 68 fe ff 	vmovq  -0x198(%rbp),%xmm2
 33f:	ff 
 340:	89 95 68 fe ff ff    	mov    %edx,-0x198(%rbp)
 346:	c5 fa 10 85 68 fe ff 	vmovss -0x198(%rbp),%xmm0
 34d:	ff 
 34e:	e8 00 00 00 00       	callq  353 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x353>
 353:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 358:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 35d:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 361:	8b 45 b8             	mov    -0x48(%rbp),%eax
 364:	83 e0 00             	and    $0x0,%eax
 367:	09 d0                	or     %edx,%eax
 369:	89 45 b8             	mov    %eax,-0x48(%rbp)
 36c:	48 8b 4d a4          	mov    -0x5c(%rbp),%rcx
 370:	8b 55 ac             	mov    -0x54(%rbp),%edx
 373:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 377:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 37e:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 385:	ff 
 386:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 38d:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 394:	ff 
 395:	48 89 c7             	mov    %rax,%rdi
 398:	e8 00 00 00 00       	callq  39d <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x39d>
 39d:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 3a2:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 3a7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 3ab:	8b 45 d8             	mov    -0x28(%rbp),%eax
 3ae:	83 e0 00             	and    $0x0,%eax
 3b1:	09 d0                	or     %edx,%eax
 3b3:	89 45 d8             	mov    %eax,-0x28(%rbp)
 3b6:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
 3ba:	8b 55 a0             	mov    -0x60(%rbp),%edx
 3bd:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 3c1:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 3c8:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 3cf:	ff 
 3d0:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 3d7:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 3de:	ff 
 3df:	48 89 c7             	mov    %rax,%rdi
 3e2:	e8 00 00 00 00       	callq  3e7 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x3e7>
 3e7:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 3ec:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 3f1:	48 89 85 5c ff ff ff 	mov    %rax,-0xa4(%rbp)
 3f8:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
 3fe:	83 e0 00             	and    $0x0,%eax
 401:	09 d0                	or     %edx,%eax
 403:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    normal.normalize();
 409:	48 8d 85 5c ff ff ff 	lea    -0xa4(%rbp),%rax
 410:	48 89 c7             	mov    %rax,%rdi
 413:	e8 00 00 00 00       	callq  418 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x418>
    for (Light light : lights) {
 418:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 41f:	48 83 c0 18          	add    $0x18,%rax
 423:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 42a:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
 431:	48 89 c7             	mov    %rax,%rdi
 434:	e8 00 00 00 00       	callq  439 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x439>
 439:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
 440:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
 447:	48 89 c7             	mov    %rax,%rdi
 44a:	e8 00 00 00 00       	callq  44f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x44f>
 44f:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
 456:	48 8d 95 f8 fe ff ff 	lea    -0x108(%rbp),%rdx
 45d:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
 464:	48 89 d6             	mov    %rdx,%rsi
 467:	48 89 c7             	mov    %rax,%rdi
 46a:	e8 00 00 00 00       	callq  46f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x46f>
 46f:	84 c0                	test   %al,%al
 471:	0f 84 0d 03 00 00    	je     784 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x784>
 477:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
 47e:	48 89 c7             	mov    %rax,%rdi
 481:	e8 00 00 00 00       	callq  486 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x486>
 486:	48 89 c1             	mov    %rax,%rcx
 489:	48 8b 01             	mov    (%rcx),%rax
 48c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
 490:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 494:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
 498:	48 8b 41 10          	mov    0x10(%rcx),%rax
 49c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
      Vector<FLOAT, 3> light_direction = light.getPosition() - intersection;
 4a0:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 4a4:	48 89 c7             	mov    %rax,%rdi
 4a7:	e8 00 00 00 00       	callq  4ac <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x4ac>
 4ac:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 4b1:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 4b6:	48 89 85 74 ff ff ff 	mov    %rax,-0x8c(%rbp)
 4bd:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
 4c3:	83 e0 00             	and    $0x0,%eax
 4c6:	09 d0                	or     %edx,%eax
 4c8:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
 4ce:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
 4d5:	8b 95 58 ff ff ff    	mov    -0xa8(%rbp),%edx
 4db:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 4e2:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 4e9:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 4f0:	ff 
 4f1:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 4f8:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 4ff:	ff 
 500:	48 89 c7             	mov    %rax,%rdi
 503:	e8 00 00 00 00       	callq  508 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x508>
 508:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 50d:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 512:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
 519:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
 51f:	83 e0 00             	and    $0x0,%eax
 522:	09 d0                	or     %edx,%eax
 524:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
      const Ray<FLOAT> ray_to_light(intersection, light_direction);
 52a:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
 531:	8b b5 70 ff ff ff    	mov    -0x90(%rbp),%esi
 537:	48 8b 8d 50 ff ff ff 	mov    -0xb0(%rbp),%rcx
 53e:	8b 95 58 ff ff ff    	mov    -0xa8(%rbp),%edx
 544:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 548:	48 89 bd 68 fe ff ff 	mov    %rdi,-0x198(%rbp)
 54f:	c5 fa 7e 95 68 fe ff 	vmovq  -0x198(%rbp),%xmm2
 556:	ff 
 557:	48 89 b5 68 fe ff ff 	mov    %rsi,-0x198(%rbp)
 55e:	c5 fa 7e 9d 68 fe ff 	vmovq  -0x198(%rbp),%xmm3
 565:	ff 
 566:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 56d:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 574:	ff 
 575:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 57c:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 583:	ff 
 584:	48 89 c7             	mov    %rax,%rdi
 587:	e8 00 00 00 00       	callq  58c <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x58c>
      if ( ! blocked( ray_to_light )  ) { 
 58c:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
 590:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 597:	48 89 d6             	mov    %rdx,%rsi
 59a:	48 89 c7             	mov    %rax,%rdi
 59d:	e8 00 00 00 00       	callq  5a2 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x5a2>
 5a2:	83 f0 01             	xor    $0x1,%eax
 5a5:	84 c0                	test   %al,%al
 5a7:	0f 84 c3 01 00 00    	je     770 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x770>
        light_direction.normalize();
 5ad:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 5b4:	48 89 c7             	mov    %rax,%rdi
 5b7:	e8 00 00 00 00       	callq  5bc <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x5bc>
        FLOAT angle = std::max<FLOAT>(0.0, light_direction.scalar_product(normal));
 5bc:	48 8b 8d 5c ff ff ff 	mov    -0xa4(%rbp),%rcx
 5c3:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
 5c9:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 5d0:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
 5d7:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 5de:	ff 
 5df:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 5e6:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 5ed:	ff 
 5ee:	48 89 c7             	mov    %rax,%rdi
 5f1:	e8 00 00 00 00       	callq  5f6 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x5f6>
 5f6:	c5 f9 7e c0          	vmovd  %xmm0,%eax
 5fa:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
 600:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 604:	c5 fa 11 85 e4 fe ff 	vmovss %xmm0,-0x11c(%rbp)
 60b:	ff 
 60c:	48 8d 95 44 ff ff ff 	lea    -0xbc(%rbp),%rdx
 613:	48 8d 85 e4 fe ff ff 	lea    -0x11c(%rbp),%rax
 61a:	48 89 d6             	mov    %rdx,%rsi
 61d:	48 89 c7             	mov    %rax,%rdi
 620:	e8 00 00 00 00       	callq  625 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x625>
 625:	c5 fa 10 00          	vmovss (%rax),%xmm0
 629:	c5 fa 11 85 ec fe ff 	vmovss %xmm0,-0x114(%rbp)
 630:	ff 
        color = color + angle * factor * material.getDiffuse() * material.getColor() * light.getColor();
 631:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 635:	48 89 c7             	mov    %rax,%rdi
 638:	e8 00 00 00 00       	callq  63d <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x63d>
 63d:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 642:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
 646:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
 64d:	c5 fa 11 85 28 ff ff 	vmovss %xmm0,-0xd8(%rbp)
 654:	ff 
 655:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
 65c:	48 89 c7             	mov    %rax,%rdi
 65f:	e8 00 00 00 00       	callq  664 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x664>
 664:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 669:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
 66d:	48 89 85 2c ff ff ff 	mov    %rax,-0xd4(%rbp)
 674:	c5 fa 11 85 34 ff ff 	vmovss %xmm0,-0xcc(%rbp)
 67b:	ff 
 67c:	c5 fa 10 85 ec fe ff 	vmovss -0x114(%rbp),%xmm0
 683:	ff 
 684:	c5 fa 59 ad e8 fe ff 	vmulss -0x118(%rbp),%xmm0,%xmm5
 68b:	ff 
 68c:	c5 fa 11 ad 68 fe ff 	vmovss %xmm5,-0x198(%rbp)
 693:	ff 
 694:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
 69b:	48 89 c7             	mov    %rax,%rdi
 69e:	e8 00 00 00 00       	callq  6a3 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x6a3>
 6a3:	c5 fa 59 85 68 fe ff 	vmulss -0x198(%rbp),%xmm0,%xmm0
 6aa:	ff 
 6ab:	48 8b 85 2c ff ff ff 	mov    -0xd4(%rbp),%rax
 6b2:	c5 fa 10 95 34 ff ff 	vmovss -0xcc(%rbp),%xmm2
 6b9:	ff 
 6ba:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 6c1:	c5 fa 7e 8d 68 fe ff 	vmovq  -0x198(%rbp),%xmm1
 6c8:	ff 
 6c9:	e8 00 00 00 00       	callq  6ce <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x6ce>
 6ce:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 6d3:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
 6d7:	48 89 85 44 ff ff ff 	mov    %rax,-0xbc(%rbp)
 6de:	c5 fa 11 85 4c ff ff 	vmovss %xmm0,-0xb4(%rbp)
 6e5:	ff 
 6e6:	48 8b 95 20 ff ff ff 	mov    -0xe0(%rbp),%rdx
 6ed:	c5 fa 10 8d 28 ff ff 	vmovss -0xd8(%rbp),%xmm1
 6f4:	ff 
 6f5:	48 8d 85 44 ff ff ff 	lea    -0xbc(%rbp),%rax
 6fc:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 703:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 70a:	ff 
 70b:	48 89 c7             	mov    %rax,%rdi
 70e:	e8 00 00 00 00       	callq  713 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x713>
 713:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 718:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
 71c:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
 723:	c5 fa 11 85 40 ff ff 	vmovss %xmm0,-0xc0(%rbp)
 72a:	ff 
 72b:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
 732:	c5 fa 10 8d 40 ff ff 	vmovss -0xc0(%rbp),%xmm1
 739:	ff 
 73a:	48 8d 85 08 ff ff ff 	lea    -0xf8(%rbp),%rax
 741:	48 89 95 68 fe ff ff 	mov    %rdx,-0x198(%rbp)
 748:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 74f:	ff 
 750:	48 89 c7             	mov    %rax,%rdi
 753:	e8 00 00 00 00       	callq  758 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x758>
 758:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 75d:	c5 f8 28 c1          	vmovaps %xmm1,%xmm0
 761:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
 768:	c5 fa 11 85 10 ff ff 	vmovss %xmm0,-0xf0(%rbp)
 76f:	ff 
    for (Light light : lights) {
 770:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
 777:	48 89 c7             	mov    %rax,%rdi
 77a:	e8 00 00 00 00       	callq  77f <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x77f>
 77f:	e9 d2 fc ff ff       	jmpq   456 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x456>
    return color;
 784:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
 78b:	48 89 85 44 ff ff ff 	mov    %rax,-0xbc(%rbp)
 792:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
 798:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
 79e:	48 8b 85 44 ff ff ff 	mov    -0xbc(%rbp),%rax
 7a5:	c5 fa 10 85 4c ff ff 	vmovss -0xb4(%rbp),%xmm0
 7ac:	ff 
 7ad:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
  }
 7b1:	48 89 85 68 fe ff ff 	mov    %rax,-0x198(%rbp)
 7b8:	c5 fa 7e 85 68 fe ff 	vmovq  -0x198(%rbp),%xmm0
 7bf:	ff 
 7c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 7c4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 7cb:	00 00 
 7cd:	74 0f                	je     7de <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7de>
 7cf:	eb 08                	jmp    7d9 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7d9>
 7d1:	48 89 c7             	mov    %rax,%rdi
 7d4:	e8 00 00 00 00       	callq  7d9 <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7d9>
 7d9:	e8 00 00 00 00       	callq  7de <_ZN5Scene5shadeERK3RayIfER8TriangleIfER8MaterialRfS9_S9_+0x7de>
 7de:	48 81 c4 a8 01 00 00 	add    $0x1a8,%rsp
 7e5:	41 5a                	pop    %r10
 7e7:	5d                   	pop    %rbp
 7e8:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 7ec:	c3                   	retq   

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
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  1a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  1e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  23:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  28:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  2c:	8b 45 b0             	mov    -0x50(%rbp),%eax
  2f:	83 e0 00             	and    $0x0,%eax
  32:	09 d0                	or     %edx,%eax
  34:	89 45 b0             	mov    %eax,-0x50(%rbp)
  37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  3e:	00 00 
  40:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  44:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> difference;
  46:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNK6VectorIfLm3EEmiES0_+0x52>
 
    for (size_t i = 0u; i < SIZE; i++) {
  52:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  59:	00 
  5a:	48 83 7d c8 02       	cmpq   $0x2,-0x38(%rbp)
  5f:	77 2c                	ja     8d <_ZNK6VectorIfLm3EEmiES0_+0x8d>
      difference.x[i] = this->x[i] - subtract.x[i];
  61:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  65:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  69:	c5 fa 10 04 90       	vmovss (%rax,%rdx,4),%xmm0
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	c5 fa 10 4c 85 a8    	vmovss -0x58(%rbp,%rax,4),%xmm1
  78:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
  7c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  80:	c5 fa 11 44 85 d0    	vmovss %xmm0,-0x30(%rbp,%rax,4)
    for (size_t i = 0u; i < SIZE; i++) {
  86:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
  8b:	eb cd                	jmp    5a <_ZNK6VectorIfLm3EEmiES0_+0x5a>
    }

    return difference;
  8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  91:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  95:	8b 45 d8             	mov    -0x28(%rbp),%eax
  98:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  9b:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  9f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  a2:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  a9:	c5 fa 7e 85 68 ff ff 	vmovq  -0x98(%rbp),%xmm0
  b0:	ff 
  b1:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  b8:	c5 fa 7e 8d 68 ff ff 	vmovq  -0x98(%rbp),%xmm1
  bf:	ff 
  c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  c4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  cb:	00 00 
  cd:	74 05                	je     d4 <_ZNK6VectorIfLm3EEmiES0_+0xd4>
  cf:	e8 00 00 00 00       	callq  d4 <_ZNK6VectorIfLm3EEmiES0_+0xd4>
  d4:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  db:	41 5a                	pop    %r10
  dd:	5d                   	pop    %rbp
  de:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  e2:	c3                   	retq   

Disassembly of section .text._ZNK6VectorIfLm3EEplES0_:

0000000000000000 <_ZNK6VectorIfLm3EEplES0_>:
  Vector<T, SIZE> operator+(const Vector<T, SIZE> addend) const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  1a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  1e:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  23:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  28:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  2c:	8b 45 b0             	mov    -0x50(%rbp),%eax
  2f:	83 e0 00             	and    $0x0,%eax
  32:	09 d0                	or     %edx,%eax
  34:	89 45 b0             	mov    %eax,-0x50(%rbp)
  37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  3e:	00 00 
  40:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  44:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> sum;
  46:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNK6VectorIfLm3EEplES0_+0x52>
    for (size_t i = 0u; i < SIZE; i++) {
  52:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  59:	00 
  5a:	48 83 7d c8 02       	cmpq   $0x2,-0x38(%rbp)
  5f:	77 2c                	ja     8d <_ZNK6VectorIfLm3EEplES0_+0x8d>
      sum.x[i] = this->x[i] + addend.x[i];
  61:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  65:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  69:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	c5 fa 10 44 85 a8    	vmovss -0x58(%rbp,%rax,4),%xmm0
  78:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  7c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  80:	c5 fa 11 44 85 d0    	vmovss %xmm0,-0x30(%rbp,%rax,4)
    for (size_t i = 0u; i < SIZE; i++) {
  86:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
  8b:	eb cd                	jmp    5a <_ZNK6VectorIfLm3EEplES0_+0x5a>
    return sum;
  8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  91:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  95:	8b 45 d8             	mov    -0x28(%rbp),%eax
  98:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  9b:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  9f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  a2:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  a9:	c5 fa 7e 85 68 ff ff 	vmovq  -0x98(%rbp),%xmm0
  b0:	ff 
  b1:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  b8:	c5 fa 7e 8d 68 ff ff 	vmovq  -0x98(%rbp),%xmm1
  bf:	ff 
  c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  c4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  cb:	00 00 
  cd:	74 05                	je     d4 <_ZNK6VectorIfLm3EEplES0_+0xd4>
  cf:	e8 00 00 00 00       	callq  d4 <_ZNK6VectorIfLm3EEplES0_+0xd4>
  d4:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  db:	41 5a                	pop    %r10
  dd:	5d                   	pop    %rbp
  de:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  e2:	c3                   	retq   

Disassembly of section .text._Zmlf6VectorIfLm3EE:

0000000000000000 <_Zmlf6VectorIfLm3EE>:
       this->x[i] /= length;
    }       
  }


  friend Vector<T, SIZE> operator*(const T factor, Vector<T, SIZE>  v)  {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  1a:	c5 fa 11 45 bc       	vmovss %xmm0,-0x44(%rbp)
  1f:	c4 e1 f9 7e c8       	vmovq  %xmm1,%rax
  24:	c4 e1 f9 7e d2       	vmovq  %xmm2,%rdx
  29:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  2d:	8b 45 b0             	mov    -0x50(%rbp),%eax
  30:	83 e0 00             	and    $0x0,%eax
  33:	09 d0                	or     %edx,%eax
  35:	89 45 b0             	mov    %eax,-0x50(%rbp)
  38:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  3f:	00 00 
  41:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  45:	31 c0                	xor    %eax,%eax
    Vector<T, SIZE> product;
  47:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	callq  53 <_Zmlf6VectorIfLm3EE+0x53>

    for (size_t i = 0u; i < SIZE; i++) {
  53:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  5a:	00 
  5b:	48 83 7d c8 02       	cmpq   $0x2,-0x38(%rbp)
  60:	77 4a                	ja     ac <_Zmlf6VectorIfLm3EE+0xac>
      product[i] = factor * v[i];
  62:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  66:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  6a:	48 89 d6             	mov    %rdx,%rsi
  6d:	48 89 c7             	mov    %rax,%rdi
  70:	e8 00 00 00 00       	callq  75 <_Zmlf6VectorIfLm3EE+0x75>
  75:	c5 fa 10 18          	vmovss (%rax),%xmm3
  79:	c5 fa 11 9d 68 ff ff 	vmovss %xmm3,-0x98(%rbp)
  80:	ff 
  81:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  85:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  89:	48 89 d6             	mov    %rdx,%rsi
  8c:	48 89 c7             	mov    %rax,%rdi
  8f:	e8 00 00 00 00       	callq  94 <_Zmlf6VectorIfLm3EE+0x94>
  94:	c5 fa 10 9d 68 ff ff 	vmovss -0x98(%rbp),%xmm3
  9b:	ff 
  9c:	c5 e2 59 45 bc       	vmulss -0x44(%rbp),%xmm3,%xmm0
  a1:	c5 fa 11 00          	vmovss %xmm0,(%rax)
    for (size_t i = 0u; i < SIZE; i++) {
  a5:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
  aa:	eb af                	jmp    5b <_Zmlf6VectorIfLm3EE+0x5b>
    }

    return product;
  ac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  b0:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
  b4:	8b 45 d8             	mov    -0x28(%rbp),%eax
  b7:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  ba:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  be:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  c1:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
  c8:	c5 fa 7e 85 68 ff ff 	vmovq  -0x98(%rbp),%xmm0
  cf:	ff 
  d0:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  d7:	c5 fa 7e 8d 68 ff ff 	vmovq  -0x98(%rbp),%xmm1
  de:	ff 
  df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  e3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  ea:	00 00 
  ec:	74 05                	je     f3 <_Zmlf6VectorIfLm3EE+0xf3>
  ee:	e8 00 00 00 00       	callq  f3 <_Zmlf6VectorIfLm3EE+0xf3>
  f3:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  fa:	41 5a                	pop    %r10
  fc:	5d                   	pop    %rbp
  fd:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 101:	c3                   	retq   

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
  18:	c5 f9 7e c0          	vmovd  %xmm0,%eax
  1c:	89 45 f4             	mov    %eax,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  1f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  26:	00 
  27:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  2c:	77 26                	ja     54 <_ZN6VectorIfLm3EE9normalizeEv+0x54>
       this->x[i] /= length;
  2e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  32:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  36:	c5 fa 10 04 90       	vmovss (%rax,%rdx,4),%xmm0
  3b:	c5 fa 5e 45 f4       	vdivss -0xc(%rbp),%xmm0,%xmm0
  40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  44:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  48:	c5 fa 11 04 90       	vmovss %xmm0,(%rax,%rdx,4)
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
  18:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
  1c:	e8 00 00 00 00       	callq  21 <_ZNK6VectorIfLm3EE6lengthEv+0x21>
  21:	c5 fb 5a c0          	vcvtsd2ss %xmm0,%xmm0,%xmm0
  }
  25:	c9                   	leaveq 
  26:	c3                   	retq   

Disassembly of section .text._ZN3RayIfEC2E6VectorIfLm3EES2_:

0000000000000000 <_ZN3RayIfEC1E6VectorIfLm3EES2_>:
  Ray(Vector<T, 3> origin, Vector<T, 3> direction) : origin(origin), direction(direction) {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
   d:	c4 e1 f9 7e ce       	vmovq  %xmm1,%rsi
  12:	c4 e1 f9 7e d2       	vmovq  %xmm2,%rdx
  17:	c4 e1 f9 7e d9       	vmovq  %xmm3,%rcx
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
  5b:	c5 fa 10 00          	vmovss (%rax),%xmm0
  5f:	c5 fa 11 45 dc       	vmovss %xmm0,-0x24(%rbp)
      this->x[i++] = t;
  64:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  68:	48 8d 50 01          	lea    0x1(%rax),%rdx
  6c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  70:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  74:	c5 fa 10 45 dc       	vmovss -0x24(%rbp),%xmm0
  79:	c5 fa 11 04 82       	vmovss %xmm0,(%rdx,%rax,4)
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
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	31 c0                	xor    %eax,%eax
    return origin;
  2d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  31:	48 8b 10             	mov    (%rax),%rdx
  34:	48 89 55 dc          	mov    %rdx,-0x24(%rbp)
  38:	8b 40 08             	mov    0x8(%rax),%eax
  3b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  3e:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  42:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  45:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  49:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  4e:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  52:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
  57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  62:	00 00 
  64:	74 05                	je     6b <_ZNK3RayIfE9getOriginEv+0x6b>
  66:	e8 00 00 00 00       	callq  6b <_ZNK3RayIfE9getOriginEv+0x6b>
  6b:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  72:	41 5a                	pop    %r10
  74:	5d                   	pop    %rbp
  75:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  79:	c3                   	retq   

Disassembly of section .text._ZNK3RayIfE12getDirectionEv:

0000000000000000 <_ZNK3RayIfE12getDirectionEv>:
  Vector<T, 3> getDirection() const {
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  25:	00 00 
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	31 c0                	xor    %eax,%eax
    return direction;
  2d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  31:	48 8b 50 0c          	mov    0xc(%rax),%rdx
  35:	48 89 55 dc          	mov    %rdx,-0x24(%rbp)
  39:	8b 40 14             	mov    0x14(%rax),%eax
  3c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  3f:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
  43:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  }
  46:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
  4a:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
  4f:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  53:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
  58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  5c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  63:	00 00 
  65:	74 05                	je     6c <_ZNK3RayIfE12getDirectionEv+0x6c>
  67:	e8 00 00 00 00       	callq  6c <_ZNK3RayIfE12getDirectionEv+0x6c>
  6c:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  73:	41 5a                	pop    %r10
  75:	5d                   	pop    %rbp
  76:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
  7a:	c3                   	retq   

Disassembly of section .text._ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f:

0000000000000000 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f>:
  // it also calculates:
  // the parameter value t for the intersection = origin + t * direction.
  // the u-v-Parameters for the barycentric coordinates (u,v,w) of the
  // intersection point with w = 1 - u - v.
  //  minimum_t contains the parametic value s for the current nearest triangle (not used in this unoptimized version)
  bool intersects(Vector<T, 3> origin, Vector<T, 3> direction,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
   b:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  12:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  17:	c4 c1 f9 7e c9       	vmovq  %xmm1,%r9
  1c:	c4 e1 f9 7e d7       	vmovq  %xmm2,%rdi
  21:	c4 c1 f9 7e d8       	vmovq  %xmm3,%r8
  26:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
  2d:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
  34:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
  3b:	c5 fa 11 a5 0c ff ff 	vmovss %xmm4,-0xf4(%rbp)
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
                  FLOAT &t, FLOAT &u, FLOAT &v, FLOAT minimum_t = INFINITY)
  {
    Vector<T, 3> normal = cross_product(p2 - p1, p3 - p1);
  84:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  8b:	48 8d 50 18          	lea    0x18(%rax),%rdx
  8f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  96:	48 8b 08             	mov    (%rax),%rcx
  99:	8b 40 08             	mov    0x8(%rax),%eax
  9c:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
  a3:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
  aa:	ff 
  ab:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  b2:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
  b9:	ff 
  ba:	48 89 d7             	mov    %rdx,%rdi
  bd:	e8 00 00 00 00       	callq  c2 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0xc2>
  c2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  c7:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
  fa:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 101:	ff 
 102:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 109:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 110:	ff 
 111:	48 89 d7             	mov    %rdx,%rdi
 114:	e8 00 00 00 00       	callq  119 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x119>
 119:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 11e:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 147:	c5 fa 7e 95 00 ff ff 	vmovq  -0x100(%rbp),%xmm2
 14e:	ff 
 14f:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 156:	c5 fa 7e 9d 00 ff ff 	vmovq  -0x100(%rbp),%xmm3
 15d:	ff 
 15e:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 165:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 16c:	ff 
 16d:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 174:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 17b:	ff 
 17c:	e8 00 00 00 00       	callq  181 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x181>
 181:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 186:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 18b:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
 192:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
 198:	83 e0 00             	and    $0x0,%eax
 19b:	09 d0                	or     %edx,%eax
 19d:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)

    T normalRayProduct = normal.scalar_product(direction);
 1a3:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
 1aa:	8b 95 30 ff ff ff    	mov    -0xd0(%rbp),%edx
 1b0:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 1b7:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 1be:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 1c5:	ff 
 1c6:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 1cd:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 1d4:	ff 
 1d5:	48 89 c7             	mov    %rax,%rdi
 1d8:	e8 00 00 00 00       	callq  1dd <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x1dd>
 1dd:	c5 f9 7e c0          	vmovd  %xmm0,%eax
 1e1:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
    T area = normal.length(); // used for u-v-parameter calculation
 1e7:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 1ee:	48 89 c7             	mov    %rax,%rdi
 1f1:	e8 00 00 00 00       	callq  1f6 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x1f6>
 1f6:	c5 f9 7e c0          	vmovd  %xmm0,%eax
 1fa:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)

    if (fabs(normalRayProduct) < EPSILON)
 200:	c5 fa 10 8d 5c ff ff 	vmovss -0xa4(%rbp),%xmm1
 207:	ff 
 208:	c5 fa 10 05 00 00 00 	vmovss 0x0(%rip),%xmm0        # 210 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x210>
 20f:	00 
 210:	c5 f8 54 c1          	vandps %xmm1,%xmm0,%xmm0
 214:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
 218:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # 220 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x220>
 21f:	00 
 220:	c5 f9 2e c8          	vucomisd %xmm0,%xmm1
 224:	76 0a                	jbe    230 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x230>
    {
      return false;
 226:	b8 00 00 00 00       	mov    $0x0,%eax
 22b:	e9 df 05 00 00       	jmpq   80f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x80f>
    }

    T d = normal.scalar_product(p1);
 230:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 237:	48 8b 08             	mov    (%rax),%rcx
 23a:	8b 50 08             	mov    0x8(%rax),%edx
 23d:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 244:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 24b:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 252:	ff 
 253:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 25a:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 261:	ff 
 262:	48 89 c7             	mov    %rax,%rdi
 265:	e8 00 00 00 00       	callq  26a <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x26a>
 26a:	c5 f9 7e c0          	vmovd  %xmm0,%eax
 26e:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    t = (d - normal.scalar_product(origin)) / normalRayProduct;
 274:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
 27b:	8b 95 40 ff ff ff    	mov    -0xc0(%rbp),%edx
 281:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 288:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 28f:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 296:	ff 
 297:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 29e:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 2a5:	ff 
 2a6:	48 89 c7             	mov    %rax,%rdi
 2a9:	e8 00 00 00 00       	callq  2ae <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x2ae>
 2ae:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
 2b2:	c5 fa 10 85 64 ff ff 	vmovss -0x9c(%rbp),%xmm0
 2b9:	ff 
 2ba:	c5 fa 5c c1          	vsubss %xmm1,%xmm0,%xmm0
 2be:	c5 fa 5e 85 5c ff ff 	vdivss -0xa4(%rbp),%xmm0,%xmm0
 2c5:	ff 
 2c6:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2cd:	c5 fa 11 00          	vmovss %xmm0,(%rax)

    if (t < 0.0)
 2d1:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2d8:	c5 fa 10 08          	vmovss (%rax),%xmm1
 2dc:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 2e0:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
 2e4:	76 0a                	jbe    2f0 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x2f0>
    {
      return false;
 2e6:	b8 00 00 00 00       	mov    $0x0,%eax
 2eb:	e9 1f 05 00 00       	jmpq   80f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x80f>
    }

    Vector<T, 3> intersection = origin + t * direction;
 2f0:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
 2f7:	8b 00                	mov    (%rax),%eax
 2f9:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
 300:	8b 95 30 ff ff ff    	mov    -0xd0(%rbp),%edx
 306:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 30d:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 314:	ff 
 315:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 31c:	c5 fa 7e 95 00 ff ff 	vmovq  -0x100(%rbp),%xmm2
 323:	ff 
 324:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
 32a:	c5 fa 10 85 00 ff ff 	vmovss -0x100(%rbp),%xmm0
 331:	ff 
 332:	e8 00 00 00 00       	callq  337 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x337>
 337:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 33c:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 341:	48 89 45 a4          	mov    %rax,-0x5c(%rbp)
 345:	8b 45 ac             	mov    -0x54(%rbp),%eax
 348:	83 e0 00             	and    $0x0,%eax
 34b:	09 d0                	or     %edx,%eax
 34d:	89 45 ac             	mov    %eax,-0x54(%rbp)
 350:	48 8b 4d a4          	mov    -0x5c(%rbp),%rcx
 354:	8b 55 ac             	mov    -0x54(%rbp),%edx
 357:	48 8d 85 38 ff ff ff 	lea    -0xc8(%rbp),%rax
 35e:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 365:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 36c:	ff 
 36d:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 374:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 37b:	ff 
 37c:	48 89 c7             	mov    %rax,%rdi
 37f:	e8 00 00 00 00       	callq  384 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x384>
 384:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 389:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 38e:	48 89 85 74 ff ff ff 	mov    %rax,-0x8c(%rbp)
 395:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
 39b:	83 e0 00             	and    $0x0,%eax
 39e:	09 d0                	or     %edx,%eax
 3a0:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)

    Vector<T, 3> vector = cross_product(p2 - p1, intersection - p1);
 3a6:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 3ad:	48 8b 08             	mov    (%rax),%rcx
 3b0:	8b 50 08             	mov    0x8(%rax),%edx
 3b3:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 3ba:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 3c1:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 3c8:	ff 
 3c9:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 3d0:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 3d7:	ff 
 3d8:	48 89 c7             	mov    %rax,%rdi
 3db:	e8 00 00 00 00       	callq  3e0 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x3e0>
 3e0:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 3e5:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 3ea:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 3ee:	8b 45 b8             	mov    -0x48(%rbp),%eax
 3f1:	83 e0 00             	and    $0x0,%eax
 3f4:	09 d0                	or     %edx,%eax
 3f6:	89 45 b8             	mov    %eax,-0x48(%rbp)
 3f9:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 400:	48 8d 50 0c          	lea    0xc(%rax),%rdx
 404:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 40b:	48 8b 08             	mov    (%rax),%rcx
 40e:	8b 40 08             	mov    0x8(%rax),%eax
 411:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 418:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 41f:	ff 
 420:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 427:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 42e:	ff 
 42f:	48 89 d7             	mov    %rdx,%rdi
 432:	e8 00 00 00 00       	callq  437 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x437>
 437:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 43c:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 441:	48 89 45 bc          	mov    %rax,-0x44(%rbp)
 445:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 448:	83 e0 00             	and    $0x0,%eax
 44b:	09 d0                	or     %edx,%eax
 44d:	89 45 c4             	mov    %eax,-0x3c(%rbp)
 450:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
 454:	8b 4d b8             	mov    -0x48(%rbp),%ecx
 457:	48 8b 55 bc          	mov    -0x44(%rbp),%rdx
 45b:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 45e:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 465:	c5 fa 7e 95 00 ff ff 	vmovq  -0x100(%rbp),%xmm2
 46c:	ff 
 46d:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 474:	c5 fa 7e 9d 00 ff ff 	vmovq  -0x100(%rbp),%xmm3
 47b:	ff 
 47c:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 483:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 48a:	ff 
 48b:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 492:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 499:	ff 
 49a:	e8 00 00 00 00       	callq  49f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x49f>
 49f:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 4a4:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 4a9:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 4ad:	8b 45 88             	mov    -0x78(%rbp),%eax
 4b0:	83 e0 00             	and    $0x0,%eax
 4b3:	09 d0                	or     %edx,%eax
 4b5:	89 45 88             	mov    %eax,-0x78(%rbp)
    if (normal.scalar_product(vector) < 0.0)
 4b8:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 4bc:	8b 55 88             	mov    -0x78(%rbp),%edx
 4bf:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 4c6:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 4cd:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 4d4:	ff 
 4d5:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 4dc:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 4e3:	ff 
 4e4:	48 89 c7             	mov    %rax,%rdi
 4e7:	e8 00 00 00 00       	callq  4ec <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x4ec>
 4ec:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
 4f0:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 4f4:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
 4f8:	0f 97 c0             	seta   %al
 4fb:	84 c0                	test   %al,%al
 4fd:	74 0a                	je     509 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x509>
    {
      return false;
 4ff:	b8 00 00 00 00       	mov    $0x0,%eax
 504:	e9 06 03 00 00       	jmpq   80f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x80f>
    }

    vector = cross_product(p3 - p2, intersection - p2);
 509:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 510:	48 8b 48 0c          	mov    0xc(%rax),%rcx
 514:	8b 50 14             	mov    0x14(%rax),%edx
 517:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 51e:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 525:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 52c:	ff 
 52d:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 534:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 53b:	ff 
 53c:	48 89 c7             	mov    %rax,%rdi
 53f:	e8 00 00 00 00       	callq  544 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x544>
 544:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 549:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 54e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 552:	8b 45 d0             	mov    -0x30(%rbp),%eax
 555:	83 e0 00             	and    $0x0,%eax
 558:	09 d0                	or     %edx,%eax
 55a:	89 45 d0             	mov    %eax,-0x30(%rbp)
 55d:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 564:	48 8d 50 18          	lea    0x18(%rax),%rdx
 568:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 56f:	48 8b 48 0c          	mov    0xc(%rax),%rcx
 573:	8b 40 14             	mov    0x14(%rax),%eax
 576:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 57d:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 584:	ff 
 585:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 58c:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 593:	ff 
 594:	48 89 d7             	mov    %rdx,%rdi
 597:	e8 00 00 00 00       	callq  59c <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x59c>
 59c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 5a1:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 5a6:	48 89 45 d4          	mov    %rax,-0x2c(%rbp)
 5aa:	8b 45 dc             	mov    -0x24(%rbp),%eax
 5ad:	83 e0 00             	and    $0x0,%eax
 5b0:	09 d0                	or     %edx,%eax
 5b2:	89 45 dc             	mov    %eax,-0x24(%rbp)
 5b5:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
 5b9:	8b 4d d0             	mov    -0x30(%rbp),%ecx
 5bc:	48 8b 55 d4          	mov    -0x2c(%rbp),%rdx
 5c0:	8b 45 dc             	mov    -0x24(%rbp),%eax
 5c3:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 5ca:	c5 fa 7e 95 00 ff ff 	vmovq  -0x100(%rbp),%xmm2
 5d1:	ff 
 5d2:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 5d9:	c5 fa 7e 9d 00 ff ff 	vmovq  -0x100(%rbp),%xmm3
 5e0:	ff 
 5e1:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 5e8:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 5ef:	ff 
 5f0:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 5f7:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 5fe:	ff 
 5ff:	e8 00 00 00 00       	callq  604 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x604>
 604:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 609:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 60e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 612:	8b 45 88             	mov    -0x78(%rbp),%eax
 615:	83 e0 00             	and    $0x0,%eax
 618:	09 d0                	or     %edx,%eax
 61a:	89 45 88             	mov    %eax,-0x78(%rbp)
    if (normal.scalar_product(vector) < 0.0)
 61d:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 621:	8b 55 88             	mov    -0x78(%rbp),%edx
 624:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 62b:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 632:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 639:	ff 
 63a:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 641:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 648:	ff 
 649:	48 89 c7             	mov    %rax,%rdi
 64c:	e8 00 00 00 00       	callq  651 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x651>
 651:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
 655:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 659:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
 65d:	0f 97 c0             	seta   %al
 660:	84 c0                	test   %al,%al
 662:	74 0a                	je     66e <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x66e>
    {
      return false;
 664:	b8 00 00 00 00       	mov    $0x0,%eax
 669:	e9 a1 01 00 00       	jmpq   80f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x80f>
    }

    u = vector.length() / area;
 66e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 672:	48 89 c7             	mov    %rax,%rdi
 675:	e8 00 00 00 00       	callq  67a <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x67a>
 67a:	c5 fa 5e 85 60 ff ff 	vdivss -0xa0(%rbp),%xmm0,%xmm0
 681:	ff 
 682:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 689:	c5 fa 11 00          	vmovss %xmm0,(%rax)

    vector = cross_product(p1 - p3, intersection - p3);
 68d:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 694:	48 8b 48 18          	mov    0x18(%rax),%rcx
 698:	8b 50 20             	mov    0x20(%rax),%edx
 69b:	48 8d 85 74 ff ff ff 	lea    -0x8c(%rbp),%rax
 6a2:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 6a9:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 6b0:	ff 
 6b1:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 6b8:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 6bf:	ff 
 6c0:	48 89 c7             	mov    %rax,%rdi
 6c3:	e8 00 00 00 00       	callq  6c8 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x6c8>
 6c8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 6cd:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 6d2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 6d6:	8b 45 e8             	mov    -0x18(%rbp),%eax
 6d9:	83 e0 00             	and    $0x0,%eax
 6dc:	09 d0                	or     %edx,%eax
 6de:	89 45 e8             	mov    %eax,-0x18(%rbp)
 6e1:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
 6e8:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
 6ef:	48 8b 48 18          	mov    0x18(%rax),%rcx
 6f3:	8b 40 20             	mov    0x20(%rax),%eax
 6f6:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 6fd:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 704:	ff 
 705:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 70c:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 713:	ff 
 714:	48 89 d7             	mov    %rdx,%rdi
 717:	e8 00 00 00 00       	callq  71c <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x71c>
 71c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 721:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 726:	48 89 45 ec          	mov    %rax,-0x14(%rbp)
 72a:	8b 45 f4             	mov    -0xc(%rbp),%eax
 72d:	83 e0 00             	and    $0x0,%eax
 730:	09 d0                	or     %edx,%eax
 732:	89 45 f4             	mov    %eax,-0xc(%rbp)
 735:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
 739:	8b 4d e8             	mov    -0x18(%rbp),%ecx
 73c:	48 8b 55 ec          	mov    -0x14(%rbp),%rdx
 740:	8b 45 f4             	mov    -0xc(%rbp),%eax
 743:	48 89 b5 00 ff ff ff 	mov    %rsi,-0x100(%rbp)
 74a:	c5 fa 7e 95 00 ff ff 	vmovq  -0x100(%rbp),%xmm2
 751:	ff 
 752:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 759:	c5 fa 7e 9d 00 ff ff 	vmovq  -0x100(%rbp),%xmm3
 760:	ff 
 761:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 768:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 76f:	ff 
 770:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
 777:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 77e:	ff 
 77f:	e8 00 00 00 00       	callq  784 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x784>
 784:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 789:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
 78e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
 792:	8b 45 88             	mov    -0x78(%rbp),%eax
 795:	83 e0 00             	and    $0x0,%eax
 798:	09 d0                	or     %edx,%eax
 79a:	89 45 88             	mov    %eax,-0x78(%rbp)
    if (normal.scalar_product(vector) < 0.0)
 79d:	48 8b 4d 80          	mov    -0x80(%rbp),%rcx
 7a1:	8b 55 88             	mov    -0x78(%rbp),%edx
 7a4:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
 7ab:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 7b2:	c5 fa 7e 85 00 ff ff 	vmovq  -0x100(%rbp),%xmm0
 7b9:	ff 
 7ba:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
 7c1:	c5 fa 7e 8d 00 ff ff 	vmovq  -0x100(%rbp),%xmm1
 7c8:	ff 
 7c9:	48 89 c7             	mov    %rax,%rdi
 7cc:	e8 00 00 00 00       	callq  7d1 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7d1>
 7d1:	c5 f8 28 c8          	vmovaps %xmm0,%xmm1
 7d5:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
 7d9:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
 7dd:	0f 97 c0             	seta   %al
 7e0:	84 c0                	test   %al,%al
 7e2:	74 07                	je     7eb <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7eb>
    {
      return false;
 7e4:	b8 00 00 00 00       	mov    $0x0,%eax
 7e9:	eb 24                	jmp    80f <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x80f>
    }

    v = vector.length() / area;
 7eb:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 7ef:	48 89 c7             	mov    %rax,%rdi
 7f2:	e8 00 00 00 00       	callq  7f7 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x7f7>
 7f7:	c5 fa 5e 85 60 ff ff 	vdivss -0xa0(%rbp),%xmm0,%xmm0
 7fe:	ff 
 7ff:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
 806:	c5 fa 11 00          	vmovss %xmm0,(%rax)

    return true;
 80a:	b8 01 00 00 00       	mov    $0x1,%eax
  }
 80f:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
 813:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
 81a:	00 00 
 81c:	74 05                	je     823 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x823>
 81e:	e8 00 00 00 00       	callq  823 <_ZN8TriangleIfE10intersectsE6VectorIfLm3EES2_RfS3_S3_f+0x823>
 823:	c9                   	leaveq 
 824:	c3                   	retq   

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
   8:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
   d:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  12:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  16:	8b 45 e0             	mov    -0x20(%rbp),%eax
  19:	83 e0 00             	and    $0x0,%eax
  1c:	09 d0                	or     %edx,%eax
  1e:	89 45 e0             	mov    %eax,-0x20(%rbp)
    T product = 0;
  21:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  25:	c5 fa 11 45 f4       	vmovss %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  2a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  31:	00 
  32:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  37:	77 30                	ja     69 <_ZN6VectorIfLm3EE14scalar_productES0_+0x69>
      product += this->x[i] * factor.x[i];
  39:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  41:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
  46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4a:	c5 fa 10 44 85 d8    	vmovss -0x28(%rbp,%rax,4),%xmm0
  50:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
  54:	c5 fa 10 4d f4       	vmovss -0xc(%rbp),%xmm1
  59:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  5d:	c5 fa 11 45 f4       	vmovss %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  62:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  67:	eb c9                	jmp    32 <_ZN6VectorIfLm3EE14scalar_productES0_+0x32>
    return product;
  69:	c5 fa 10 45 f4       	vmovss -0xc(%rbp),%xmm0
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
  10:	c5 fa 10 08          	vmovss (%rax),%xmm1
  14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  18:	c5 fa 10 00          	vmovss (%rax),%xmm0
  1c:	c5 f8 2e c1          	vucomiss %xmm1,%xmm0
  20:	76 06                	jbe    28 <_ZSt3maxIfERKT_S2_S2_+0x28>
	return __b;
  22:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  26:	eb 04                	jmp    2c <_ZSt3maxIfERKT_S2_S2_+0x2c>
      return __a;
  28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  2c:	5d                   	pop    %rbp
  2d:	c3                   	retq   

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
  1f:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  23:	c5 fa 11 04 90       	vmovss %xmm0,(%rax,%rdx,4)
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
  Triangle(Vector<T, 3> p1, Vector<T, 3> p2, Vector<T, 3> p3)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 68          	sub    $0x68,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  12:	c4 c1 f9 7e c8       	vmovq  %xmm1,%r8
  17:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
  1c:	c4 e1 f9 7e df       	vmovq  %xmm3,%rdi
  21:	c4 e1 f9 7e e2       	vmovq  %xmm4,%rdx
  26:	c4 e1 f9 7e ee       	vmovq  %xmm5,%rsi
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
      : p1(p1), p2(p2), p3(p3)
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
    n1 = cross_product(p2 - p1, p3 - p1);
  cd:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  d1:	8b 55 c0             	mov    -0x40(%rbp),%edx
  d4:	48 8d 45 98          	lea    -0x68(%rbp),%rax
  d8:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  dc:	c5 fa 7e 45 90       	vmovq  -0x70(%rbp),%xmm0
  e1:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
  e5:	c5 fa 7e 4d 90       	vmovq  -0x70(%rbp),%xmm1
  ea:	48 89 c7             	mov    %rax,%rdi
  ed:	e8 00 00 00 00       	callq  f2 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0xf2>
  f2:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  f7:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
  fc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 100:	8b 45 d8             	mov    -0x28(%rbp),%eax
 103:	83 e0 00             	and    $0x0,%eax
 106:	09 d0                	or     %edx,%eax
 108:	89 45 d8             	mov    %eax,-0x28(%rbp)
 10b:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 10f:	8b 55 c0             	mov    -0x40(%rbp),%edx
 112:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
 116:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
 11a:	c5 fa 7e 45 90       	vmovq  -0x70(%rbp),%xmm0
 11f:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
 123:	c5 fa 7e 4d 90       	vmovq  -0x70(%rbp),%xmm1
 128:	48 89 c7             	mov    %rax,%rdi
 12b:	e8 00 00 00 00       	callq  130 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x130>
 130:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 135:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
 15f:	c5 fa 7e 55 90       	vmovq  -0x70(%rbp),%xmm2
 164:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
 168:	c5 fa 7e 5d 90       	vmovq  -0x70(%rbp),%xmm3
 16d:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
 171:	c5 fa 7e 45 90       	vmovq  -0x70(%rbp),%xmm0
 176:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 17a:	c5 fa 7e 4d 90       	vmovq  -0x70(%rbp),%xmm1
 17f:	e8 00 00 00 00       	callq  184 <_ZN8TriangleIfEC1E6VectorIfLm3EES2_S2_+0x184>
 184:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 189:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
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
  Triangle(Vector<T, 3> p1, Vector<T, 3> p2, Vector<T, 3> p3,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 50          	sub    $0x50,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  11:	c4 c1 f9 7e ca       	vmovq  %xmm1,%r10
  16:	c4 e1 f9 7e d6       	vmovq  %xmm2,%rsi
  1b:	c4 c1 f9 7e d9       	vmovq  %xmm3,%r9
  20:	c4 e1 f9 7e e1       	vmovq  %xmm4,%rcx
  25:	c4 c1 f9 7e e8       	vmovq  %xmm5,%r8
  2a:	c4 e1 f9 7e f2       	vmovq  %xmm6,%rdx
  2f:	c4 e1 f9 7e ff       	vmovq  %xmm7,%rdi
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
      : p1(p1), p2(p2), p3(p3), n1(n1), n2(n2), n3(n3)
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
   8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
   c:	c5 fa 11 45 f4       	vmovss %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  11:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  18:	00 
  19:	48 83 7d f8 02       	cmpq   $0x2,-0x8(%rbp)
  1e:	77 33                	ja     53 <_ZNK6VectorIfLm3EE16square_of_lengthEv+0x53>
      square_of_length += ( this->x[i] * this->x[i] );
  20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  24:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  28:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
  2d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  31:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  35:	c5 fa 10 04 90       	vmovss (%rax,%rdx,4),%xmm0
  3a:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
  3e:	c5 fa 10 4d f4       	vmovss -0xc(%rbp),%xmm1
  43:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  47:	c5 fa 11 45 f4       	vmovss %xmm0,-0xc(%rbp)
    for (size_t i = 0u; i < SIZE; i++) {
  4c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  51:	eb c6                	jmp    19 <_ZNK6VectorIfLm3EE16square_of_lengthEv+0x19>
    return square_of_length;
  53:	c5 fa 10 45 f4       	vmovss -0xc(%rbp),%xmm0
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
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  1a:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  1f:	c4 e1 f9 7e ce       	vmovq  %xmm1,%rsi
  24:	c4 e1 f9 7e d2       	vmovq  %xmm2,%rdx
  29:	c4 e1 f9 7e d9       	vmovq  %xmm3,%rcx
  2e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  32:	8b 45 c8             	mov    -0x38(%rbp),%eax
  35:	83 e0 00             	and    $0x0,%eax
  38:	09 f0                	or     %esi,%eax
  3a:	89 45 c8             	mov    %eax,-0x38(%rbp)
  3d:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
  41:	8b 45 b8             	mov    -0x48(%rbp),%eax
  44:	83 e0 00             	and    $0x0,%eax
  47:	09 c8                	or     %ecx,%eax
  49:	89 45 b8             	mov    %eax,-0x48(%rbp)
  4c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  53:	00 00 
  55:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  59:	31 c0                	xor    %eax,%eax
  Vector<T, 3> cross;
  5b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  5f:	48 89 c7             	mov    %rax,%rdi
  62:	e8 00 00 00 00       	callq  67 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x67>

  cross[0] = v1[1] * v2[2] - v1[2] * v2[1];
  67:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  6b:	be 01 00 00 00       	mov    $0x1,%esi
  70:	48 89 c7             	mov    %rax,%rdi
  73:	e8 00 00 00 00       	callq  78 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x78>
  78:	c5 fa 10 20          	vmovss (%rax),%xmm4
  7c:	c5 fa 11 65 88       	vmovss %xmm4,-0x78(%rbp)
  81:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  85:	be 02 00 00 00       	mov    $0x2,%esi
  8a:	48 89 c7             	mov    %rax,%rdi
  8d:	e8 00 00 00 00       	callq  92 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x92>
  92:	c5 fa 10 00          	vmovss (%rax),%xmm0
  96:	c5 fa 59 6d 88       	vmulss -0x78(%rbp),%xmm0,%xmm5
  9b:	c5 fa 11 6d 88       	vmovss %xmm5,-0x78(%rbp)
  a0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  a4:	be 02 00 00 00       	mov    $0x2,%esi
  a9:	48 89 c7             	mov    %rax,%rdi
  ac:	e8 00 00 00 00       	callq  b1 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xb1>
  b1:	c5 fa 10 30          	vmovss (%rax),%xmm6
  b5:	c5 fa 11 75 84       	vmovss %xmm6,-0x7c(%rbp)
  ba:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  be:	be 01 00 00 00       	mov    $0x1,%esi
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xcb>
  cb:	c5 fa 10 00          	vmovss (%rax),%xmm0
  cf:	c5 fa 59 7d 84       	vmulss -0x7c(%rbp),%xmm0,%xmm7
  d4:	c5 fa 11 7d 84       	vmovss %xmm7,-0x7c(%rbp)
  d9:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  dd:	be 00 00 00 00       	mov    $0x0,%esi
  e2:	48 89 c7             	mov    %rax,%rdi
  e5:	e8 00 00 00 00       	callq  ea <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0xea>
  ea:	c5 fa 10 6d 88       	vmovss -0x78(%rbp),%xmm5
  ef:	c5 d2 5c 45 84       	vsubss -0x7c(%rbp),%xmm5,%xmm0
  f4:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  cross[1] = v1[2] * v2[0] - v1[0] * v2[2];
  f8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  fc:	be 02 00 00 00       	mov    $0x2,%esi
 101:	48 89 c7             	mov    %rax,%rdi
 104:	e8 00 00 00 00       	callq  109 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x109>
 109:	c5 fa 10 10          	vmovss (%rax),%xmm2
 10d:	c5 fa 11 55 88       	vmovss %xmm2,-0x78(%rbp)
 112:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 116:	be 00 00 00 00       	mov    $0x0,%esi
 11b:	48 89 c7             	mov    %rax,%rdi
 11e:	e8 00 00 00 00       	callq  123 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x123>
 123:	c5 fa 10 00          	vmovss (%rax),%xmm0
 127:	c5 fa 59 5d 88       	vmulss -0x78(%rbp),%xmm0,%xmm3
 12c:	c5 fa 11 5d 88       	vmovss %xmm3,-0x78(%rbp)
 131:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 135:	be 00 00 00 00       	mov    $0x0,%esi
 13a:	48 89 c7             	mov    %rax,%rdi
 13d:	e8 00 00 00 00       	callq  142 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x142>
 142:	c5 fa 10 08          	vmovss (%rax),%xmm1
 146:	c5 fa 11 4d 84       	vmovss %xmm1,-0x7c(%rbp)
 14b:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 14f:	be 02 00 00 00       	mov    $0x2,%esi
 154:	48 89 c7             	mov    %rax,%rdi
 157:	e8 00 00 00 00       	callq  15c <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x15c>
 15c:	c5 fa 10 00          	vmovss (%rax),%xmm0
 160:	c5 fa 59 65 84       	vmulss -0x7c(%rbp),%xmm0,%xmm4
 165:	c5 fa 11 65 84       	vmovss %xmm4,-0x7c(%rbp)
 16a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 16e:	be 01 00 00 00       	mov    $0x1,%esi
 173:	48 89 c7             	mov    %rax,%rdi
 176:	e8 00 00 00 00       	callq  17b <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x17b>
 17b:	c5 fa 10 5d 88       	vmovss -0x78(%rbp),%xmm3
 180:	c5 e2 5c 45 84       	vsubss -0x7c(%rbp),%xmm3,%xmm0
 185:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  cross[2] = v1[0] * v2[1] - v1[1] * v2[0];
 189:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 18d:	be 00 00 00 00       	mov    $0x0,%esi
 192:	48 89 c7             	mov    %rax,%rdi
 195:	e8 00 00 00 00       	callq  19a <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x19a>
 19a:	c5 fa 10 28          	vmovss (%rax),%xmm5
 19e:	c5 fa 11 6d 88       	vmovss %xmm5,-0x78(%rbp)
 1a3:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 1a7:	be 01 00 00 00       	mov    $0x1,%esi
 1ac:	48 89 c7             	mov    %rax,%rdi
 1af:	e8 00 00 00 00       	callq  1b4 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1b4>
 1b4:	c5 fa 10 00          	vmovss (%rax),%xmm0
 1b8:	c5 fa 59 75 88       	vmulss -0x78(%rbp),%xmm0,%xmm6
 1bd:	c5 fa 11 75 88       	vmovss %xmm6,-0x78(%rbp)
 1c2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 1c6:	be 01 00 00 00       	mov    $0x1,%esi
 1cb:	48 89 c7             	mov    %rax,%rdi
 1ce:	e8 00 00 00 00       	callq  1d3 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1d3>
 1d3:	c5 fa 10 38          	vmovss (%rax),%xmm7
 1d7:	c5 fa 11 7d 84       	vmovss %xmm7,-0x7c(%rbp)
 1dc:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 1e0:	be 00 00 00 00       	mov    $0x0,%esi
 1e5:	48 89 c7             	mov    %rax,%rdi
 1e8:	e8 00 00 00 00       	callq  1ed <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x1ed>
 1ed:	c5 fa 10 00          	vmovss (%rax),%xmm0
 1f1:	c5 fa 59 55 84       	vmulss -0x7c(%rbp),%xmm0,%xmm2
 1f6:	c5 fa 11 55 84       	vmovss %xmm2,-0x7c(%rbp)
 1fb:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 1ff:	be 02 00 00 00       	mov    $0x2,%esi
 204:	48 89 c7             	mov    %rax,%rdi
 207:	e8 00 00 00 00       	callq  20c <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x20c>
 20c:	c5 fa 10 75 88       	vmovss -0x78(%rbp),%xmm6
 211:	c5 ca 5c 45 84       	vsubss -0x7c(%rbp),%xmm6,%xmm0
 216:	c5 fa 11 00          	vmovss %xmm0,(%rax)

  return cross;
 21a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 21e:	48 89 45 dc          	mov    %rax,-0x24(%rbp)
 222:	8b 45 d8             	mov    -0x28(%rbp),%eax
 225:	89 45 e4             	mov    %eax,-0x1c(%rbp)
 228:	48 8b 55 dc          	mov    -0x24(%rbp),%rdx
 22c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
}
 22f:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
 233:	c5 fa 7e 45 88       	vmovq  -0x78(%rbp),%xmm0
 238:	48 89 45 88          	mov    %rax,-0x78(%rbp)
 23c:	c5 fa 7e 4d 88       	vmovq  -0x78(%rbp),%xmm1
 241:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 245:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 24c:	00 00 
 24e:	74 05                	je     255 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x255>
 250:	e8 00 00 00 00       	callq  255 <_Z13cross_productIfE6VectorIT_Lm3EES2_S2_+0x255>
 255:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 25c:	41 5a                	pop    %r10
 25e:	5d                   	pop    %rbp
 25f:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 263:	c3                   	retq   

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
