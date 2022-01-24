
sqrt_opt.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_Z13random_doublev>:
#include <random>
#include "measure_time.h"
#include "sqrt_opt.h"

double random_double()
{
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	41 54                	push   %r12
   6:	53                   	push   %rbx
   7:	48 83 ec 50          	sub    $0x50,%rsp
   b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  12:	00 00 
  14:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  18:	31 c0                	xor    %eax,%eax
  static std::random_device device;
  1a:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # 21 <_Z13random_doublev+0x21>
  21:	84 c0                	test   %al,%al
  23:	0f 94 c0             	sete   %al
  26:	84 c0                	test   %al,%al
  28:	0f 84 8f 00 00 00    	je     bd <_Z13random_doublev+0xbd>
  2e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 35 <_Z13random_doublev+0x35>
  35:	e8 00 00 00 00       	callq  3a <_Z13random_doublev+0x3a>
  3a:	85 c0                	test   %eax,%eax
  3c:	0f 95 c0             	setne  %al
  3f:	84 c0                	test   %al,%al
  41:	74 7a                	je     bd <_Z13random_doublev+0xbd>
  43:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  49:	48 8d 45 bf          	lea    -0x41(%rbp),%rax
  4d:	48 89 c7             	mov    %rax,%rdi
  50:	e8 00 00 00 00       	callq  55 <_Z13random_doublev+0x55>
  55:	48 8d 55 bf          	lea    -0x41(%rbp),%rdx
  59:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  5d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 64 <_Z13random_doublev+0x64>
  64:	48 89 c7             	mov    %rax,%rdi
  67:	e8 00 00 00 00       	callq  6c <_Z13random_doublev+0x6c>
  6c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  70:	48 89 c6             	mov    %rax,%rsi
  73:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 7a <_Z13random_doublev+0x7a>
  7a:	e8 00 00 00 00       	callq  7f <_Z13random_doublev+0x7f>
  7f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 86 <_Z13random_doublev+0x86>
  86:	e8 00 00 00 00       	callq  8b <_Z13random_doublev+0x8b>
  8b:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 92 <_Z13random_doublev+0x92>
  92:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 99 <_Z13random_doublev+0x99>
  99:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # a0 <_Z13random_doublev+0xa0>
  a0:	e8 00 00 00 00       	callq  a5 <_Z13random_doublev+0xa5>
  a5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  a9:	48 89 c7             	mov    %rax,%rdi
  ac:	e8 00 00 00 00       	callq  b1 <_Z13random_doublev+0xb1>
  b1:	48 8d 45 bf          	lea    -0x41(%rbp),%rax
  b5:	48 89 c7             	mov    %rax,%rdi
  b8:	e8 00 00 00 00       	callq  bd <_Z13random_doublev+0xbd>
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
  bd:	0f b6 05 00 00 00 00 	movzbl 0x0(%rip),%eax        # c4 <_Z13random_doublev+0xc4>
  c4:	84 c0                	test   %al,%al
  c6:	0f 94 c0             	sete   %al
  c9:	84 c0                	test   %al,%al
  cb:	74 43                	je     110 <_Z13random_doublev+0x110>
  cd:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # d4 <_Z13random_doublev+0xd4>
  d4:	e8 00 00 00 00       	callq  d9 <_Z13random_doublev+0xd9>
  d9:	85 c0                	test   %eax,%eax
  db:	0f 95 c0             	setne  %al
  de:	84 c0                	test   %al,%al
  e0:	74 2e                	je     110 <_Z13random_doublev+0x110>
  e2:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  e8:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # f0 <_Z13random_doublev+0xf0>
  ef:	00 
  f0:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  f4:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  f8:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # ff <_Z13random_doublev+0xff>
  ff:	e8 00 00 00 00       	callq  104 <_Z13random_doublev+0x104>
 104:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 10b <_Z13random_doublev+0x10b>
 10b:	e8 00 00 00 00       	callq  110 <_Z13random_doublev+0x110>
  return dist(device);
 110:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 117 <_Z13random_doublev+0x117>
 117:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 11e <_Z13random_doublev+0x11e>
 11e:	e8 00 00 00 00       	callq  123 <_Z13random_doublev+0x123>
 123:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
 128:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 12c:	c5 fb 10 45 a8       	vmovsd -0x58(%rbp),%xmm0
}
 131:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 135:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 13c:	00 00 
 13e:	74 62                	je     1a2 <_Z13random_doublev+0x1a2>
 140:	eb 5b                	jmp    19d <_Z13random_doublev+0x19d>
 142:	48 89 c3             	mov    %rax,%rbx
  static std::random_device device;
 145:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
 149:	48 89 c7             	mov    %rax,%rdi
 14c:	e8 00 00 00 00       	callq  151 <_Z13random_doublev+0x151>
 151:	eb 03                	jmp    156 <_Z13random_doublev+0x156>
 153:	48 89 c3             	mov    %rax,%rbx
 156:	48 8d 45 bf          	lea    -0x41(%rbp),%rax
 15a:	48 89 c7             	mov    %rax,%rdi
 15d:	e8 00 00 00 00       	callq  162 <_Z13random_doublev+0x162>
 162:	45 84 e4             	test   %r12b,%r12b
 165:	75 0c                	jne    173 <_Z13random_doublev+0x173>
 167:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 16e <_Z13random_doublev+0x16e>
 16e:	e8 00 00 00 00       	callq  173 <_Z13random_doublev+0x173>
 173:	48 89 d8             	mov    %rbx,%rax
 176:	48 89 c7             	mov    %rax,%rdi
 179:	e8 00 00 00 00       	callq  17e <_Z13random_doublev+0x17e>
 17e:	48 89 c3             	mov    %rax,%rbx
  static std::uniform_real_distribution<double> dist(0.0, 10000.0);
 181:	45 84 e4             	test   %r12b,%r12b
 184:	75 0c                	jne    192 <_Z13random_doublev+0x192>
 186:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 18d <_Z13random_doublev+0x18d>
 18d:	e8 00 00 00 00       	callq  192 <_Z13random_doublev+0x192>
 192:	48 89 d8             	mov    %rbx,%rax
 195:	48 89 c7             	mov    %rax,%rdi
 198:	e8 00 00 00 00       	callq  19d <_Z13random_doublev+0x19d>
}
 19d:	e8 00 00 00 00       	callq  1a2 <_Z13random_doublev+0x1a2>
 1a2:	48 83 c4 50          	add    $0x50,%rsp
 1a6:	5b                   	pop    %rbx
 1a7:	41 5c                	pop    %r12
 1a9:	5d                   	pop    %rbp
 1aa:	c3                   	retq   

00000000000001ab <main>:
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
  time.reset_clock();
}

int main(void)
{
 1ab:	55                   	push   %rbp
 1ac:	48 89 e5             	mov    %rsp,%rbp
  measure_sqrt_time<2>();
 1af:	e8 00 00 00 00       	callq  1b4 <main+0x9>
  // uncomment next lines for disassembly
  // measure_sqrt_time<3>();
  // measure_sqrt_time<4>();
  return 1;
 1b4:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1b9:	5d                   	pop    %rbp
 1ba:	c3                   	retq   

00000000000001bb <_Z41__static_initialization_and_destruction_0ii>:
 1bb:	55                   	push   %rbp
 1bc:	48 89 e5             	mov    %rsp,%rbp
 1bf:	48 83 ec 10          	sub    $0x10,%rsp
 1c3:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1c6:	89 75 f8             	mov    %esi,-0x8(%rbp)
 1c9:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 1cd:	75 32                	jne    201 <_Z41__static_initialization_and_destruction_0ii+0x46>
 1cf:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 1d6:	75 29                	jne    201 <_Z41__static_initialization_and_destruction_0ii+0x46>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
 1d8:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1df <_Z41__static_initialization_and_destruction_0ii+0x24>
 1df:	e8 00 00 00 00       	callq  1e4 <_Z41__static_initialization_and_destruction_0ii+0x29>
 1e4:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1eb <_Z41__static_initialization_and_destruction_0ii+0x30>
 1eb:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1f2 <_Z41__static_initialization_and_destruction_0ii+0x37>
 1f2:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1f9 <_Z41__static_initialization_and_destruction_0ii+0x3e>
 1f9:	48 89 c7             	mov    %rax,%rdi
 1fc:	e8 00 00 00 00       	callq  201 <_Z41__static_initialization_and_destruction_0ii+0x46>
 201:	90                   	nop
 202:	c9                   	leaveq 
 203:	c3                   	retq   

0000000000000204 <_GLOBAL__sub_I__Z13random_doublev>:
 204:	55                   	push   %rbp
 205:	48 89 e5             	mov    %rsp,%rbp
 208:	be ff ff 00 00       	mov    $0xffff,%esi
 20d:	bf 01 00 00 00       	mov    $0x1,%edi
 212:	e8 a4 ff ff ff       	callq  1bb <_Z41__static_initialization_and_destruction_0ii>
 217:	5d                   	pop    %rbp
 218:	c3                   	retq   

Disassembly of section .text._ZNSt14numeric_limitsIjE3minEv:

0000000000000000 <_ZNSt14numeric_limitsIjE3minEv>:
    struct numeric_limits<unsigned int>
    {
      static _GLIBCXX_USE_CONSTEXPR bool is_specialized = true;

      static _GLIBCXX_CONSTEXPR unsigned int
      min() _GLIBCXX_USE_NOEXCEPT { return 0; }
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	b8 00 00 00 00       	mov    $0x0,%eax
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:

0000000000000000 <_ZNSt13random_deviceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
    // constructors, destructors and member functions

#ifdef _GLIBCXX_USE_RANDOM_TR1

    explicit
    random_device(const std::string& __token = "default")
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    {
      _M_init(__token);
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  18:	48 89 d6             	mov    %rdx,%rsi
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	e8 00 00 00 00       	callq  23 <_ZNSt13random_deviceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x23>
    }
  23:	90                   	nop
  24:	c9                   	leaveq 
  25:	c3                   	retq   

Disassembly of section .text._ZNSt13random_deviceD2Ev:

0000000000000000 <_ZNSt13random_deviceD1Ev>:

    ~random_device()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { _M_fini(); }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt13random_deviceD1Ev+0x18>
  18:	90                   	nop
  19:	c9                   	leaveq 
  1a:	c3                   	retq   

Disassembly of section .text._ZNSt13random_device3minEv:

0000000000000000 <_ZNSt13random_device3minEv>:
  public:

#endif

    static constexpr result_type
    min()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
    { return std::numeric_limits<result_type>::min(); }
   4:	e8 00 00 00 00       	callq  9 <_ZNSt13random_device3minEv+0x9>
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

Disassembly of section .text._ZNSt13random_deviceclEv:

0000000000000000 <_ZNSt13random_deviceclEv>:
    double
    entropy() const noexcept
    { return 0.0; }

    result_type
    operator()()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    {
#ifdef _GLIBCXX_USE_RANDOM_TR1
      return this->_M_getval();
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt13random_deviceclEv+0x18>
#else
      return this->_M_getval_pretr1();
#endif
    }
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:

0000000000000000 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>:
	// 3050. Conversion specification problem in chrono::duration
	template<typename _Rep2, typename = typename
	       enable_if<is_convertible<const _Rep2&, rep>::value
			 && (treat_as_floating_point<rep>::value
			     || !treat_as_floating_point<_Rep2>::value)>::type>
	  constexpr explicit duration(const _Rep2& __rep)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	48 8b 10             	mov    (%rax),%rdx
  13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  17:	48 89 10             	mov    %rdx,(%rax)
  1a:	90                   	nop
  1b:	5d                   	pop    %rbp
  1c:	c3                   	retq   

Disassembly of section .text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:

0000000000000000 <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>:
	~duration() = default;
	duration& operator=(const duration&) = default;

	// 20.11.5.2 observer
	constexpr rep
	count() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __r; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNSt25uniform_real_distributionIdEC2Edd:

0000000000000000 <_ZNSt25uniform_real_distributionIdEC1Edd>:
       *
       * @param __a [IN]  The lower bound of the distribution.
       * @param __b [IN]  The upper bound of the distribution.
       */
      explicit
      uniform_real_distribution(_RealType __a = _RealType(0),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
  11:	c5 fb 11 4d e8       	vmovsd %xmm1,-0x18(%rbp)
				_RealType __b = _RealType(1))
      : _M_param(__a, __b)
  16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1a:	c5 fb 10 45 e8       	vmovsd -0x18(%rbp),%xmm0
  1f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  23:	c5 f9 28 c8          	vmovapd %xmm0,%xmm1
  27:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  2b:	c5 fb 10 45 e0       	vmovsd -0x20(%rbp),%xmm0
  30:	48 89 c7             	mov    %rax,%rdi
  33:	e8 00 00 00 00       	callq  38 <_ZNSt25uniform_real_distributionIdEC1Edd+0x38>
      { }
  38:	90                   	nop
  39:	c9                   	leaveq 
  3a:	c3                   	retq   

Disassembly of section .text._ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_:

0000000000000000 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_>:
      /**
       * @brief Generating functions.
       */
      template<typename _UniformRandomNumberGenerator>
	result_type
	operator()(_UniformRandomNumberGenerator& __urng)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
        { return this->operator()(__urng, _M_param); }
  10:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  14:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  1c:	48 89 ce             	mov    %rcx,%rsi
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_+0x27>
  27:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  2c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  30:	c5 fb 10 45 e8       	vmovsd -0x18(%rbp),%xmm0
  35:	c9                   	leaveq 
  36:	c3                   	retq   

Disassembly of section .text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC2IivEERKT_:

0000000000000000 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IivEERKT_>:
	  constexpr explicit duration(const _Rep2& __rep)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  : __r(static_cast<rep>(__rep)) { }
   c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  10:	8b 00                	mov    (%rax),%eax
  12:	48 63 d0             	movslq %eax,%rdx
  15:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  19:	48 89 10             	mov    %rdx,(%rax)
  1c:	90                   	nop
  1d:	5d                   	pop    %rbp
  1e:	c3                   	retq   

Disassembly of section .text._Z17measure_sqrt_timeILm2EEvv:

0000000000000000 <_Z17measure_sqrt_timeILm2EEvv>:
void measure_sqrt_time(void)
   0:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
   5:	48 83 e4 80          	and    $0xffffffffffffff80,%rsp
   9:	41 ff 72 f8          	pushq  -0x8(%r10)
   d:	55                   	push   %rbp
   e:	48 89 e5             	mov    %rsp,%rbp
  11:	41 52                	push   %r10
  13:	53                   	push   %rbx
  14:	48 81 ec 60 d5 30 00 	sub    $0x30d560,%rsp
  1b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  22:	00 00 
  24:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  28:	31 c0                	xor    %eax,%eax
  MeasureTime<std::chrono::nanoseconds> time;
  2a:	48 c7 85 f0 2a cf ff 	movq   $0x0,-0x30d510(%rbp)
  31:	00 00 00 00 
  35:	48 c7 85 f8 2a cf ff 	movq   $0x0,-0x30d508(%rbp)
  3c:	00 00 00 00 
  40:	48 c7 85 00 2b cf ff 	movq   $0x0,-0x30d500(%rbp)
  47:	00 00 00 00 
  4b:	c6 85 08 2b cf ff 01 	movb   $0x1,-0x30d4f8(%rbp)
  std::cout << LOOPS << " iterations" << std::endl;
  52:	be 02 00 00 00       	mov    $0x2,%esi
  57:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 5e <_Z17measure_sqrt_timeILm2EEvv+0x5e>
  5e:	e8 00 00 00 00       	callq  63 <_Z17measure_sqrt_timeILm2EEvv+0x63>
  63:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 6a <_Z17measure_sqrt_timeILm2EEvv+0x6a>
  6a:	48 89 c7             	mov    %rax,%rdi
  6d:	e8 00 00 00 00       	callq  72 <_Z17measure_sqrt_timeILm2EEvv+0x72>
  72:	48 89 c2             	mov    %rax,%rdx
  75:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 7c <_Z17measure_sqrt_timeILm2EEvv+0x7c>
  7c:	48 89 c6             	mov    %rax,%rsi
  7f:	48 89 d7             	mov    %rdx,%rdi
  82:	e8 00 00 00 00       	callq  87 <_Z17measure_sqrt_timeILm2EEvv+0x87>
  std::cout << "generating " << (4 * N) << " random values..." << std::endl;
  87:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 8e <_Z17measure_sqrt_timeILm2EEvv+0x8e>
  8e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 95 <_Z17measure_sqrt_timeILm2EEvv+0x95>
  95:	e8 00 00 00 00       	callq  9a <_Z17measure_sqrt_timeILm2EEvv+0x9a>
  9a:	be 80 1a 06 00       	mov    $0x61a80,%esi
  9f:	48 89 c7             	mov    %rax,%rdi
  a2:	e8 00 00 00 00       	callq  a7 <_Z17measure_sqrt_timeILm2EEvv+0xa7>
  a7:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # ae <_Z17measure_sqrt_timeILm2EEvv+0xae>
  ae:	48 89 c7             	mov    %rax,%rdi
  b1:	e8 00 00 00 00       	callq  b6 <_Z17measure_sqrt_timeILm2EEvv+0xb6>
  b6:	48 89 c2             	mov    %rax,%rdx
  b9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # c0 <_Z17measure_sqrt_timeILm2EEvv+0xc0>
  c0:	48 89 c6             	mov    %rax,%rsi
  c3:	48 89 d7             	mov    %rdx,%rdi
  c6:	e8 00 00 00 00       	callq  cb <_Z17measure_sqrt_timeILm2EEvv+0xcb>
  for (int i = 0; i < 4 * N; i++)
  cb:	c7 85 b4 2a cf ff 00 	movl   $0x0,-0x30d54c(%rbp)
  d2:	00 00 00 
  d5:	81 bd b4 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d54c(%rbp)
  dc:	1a 06 00 
  df:	7f 23                	jg     104 <_Z17measure_sqrt_timeILm2EEvv+0x104>
    floats[i] = random_double();
  e1:	e8 00 00 00 00       	callq  e6 <_Z17measure_sqrt_timeILm2EEvv+0xe6>
  e6:	c5 fb 5a c0          	vcvtsd2ss %xmm0,%xmm0,%xmm0
  ea:	8b 85 b4 2a cf ff    	mov    -0x30d54c(%rbp),%eax
  f0:	48 98                	cltq   
  f2:	c5 fa 11 84 85 10 2b 	vmovss %xmm0,-0x30d4f0(%rbp,%rax,4)
  f9:	cf ff 
  for (int i = 0; i < 4 * N; i++)
  fb:	83 85 b4 2a cf ff 01 	addl   $0x1,-0x30d54c(%rbp)
 102:	eb d1                	jmp    d5 <_Z17measure_sqrt_timeILm2EEvv+0xd5>
  std::cout << "math sqrt" << std::endl;
 104:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 10b <_Z17measure_sqrt_timeILm2EEvv+0x10b>
 10b:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 112 <_Z17measure_sqrt_timeILm2EEvv+0x112>
 112:	e8 00 00 00 00       	callq  117 <_Z17measure_sqrt_timeILm2EEvv+0x117>
 117:	48 89 c2             	mov    %rax,%rdx
 11a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 121 <_Z17measure_sqrt_timeILm2EEvv+0x121>
 121:	48 89 c6             	mov    %rax,%rsi
 124:	48 89 d7             	mov    %rdx,%rdi
 127:	e8 00 00 00 00       	callq  12c <_Z17measure_sqrt_timeILm2EEvv+0x12c>
  time.start_clock();
 12c:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 133:	48 89 c7             	mov    %rax,%rdi
 136:	e8 00 00 00 00       	callq  13b <_Z17measure_sqrt_timeILm2EEvv+0x13b>
  for (int j = 0; j < LOOP; j++)
 13b:	c7 85 b8 2a cf ff 00 	movl   $0x0,-0x30d548(%rbp)
 142:	00 00 00 
 145:	81 bd b8 2a cf ff e7 	cmpl   $0x3e7,-0x30d548(%rbp)
 14c:	03 00 00 
 14f:	0f 8f 86 00 00 00    	jg     1db <_Z17measure_sqrt_timeILm2EEvv+0x1db>
    for (int i = 0; i < 4 * N; i += 4)
 155:	c7 85 bc 2a cf ff 00 	movl   $0x0,-0x30d544(%rbp)
 15c:	00 00 00 
 15f:	81 bd bc 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d544(%rbp)
 166:	1a 06 00 
 169:	7f 64                	jg     1cf <_Z17measure_sqrt_timeILm2EEvv+0x1cf>
      for (int k = 0; k < 4; k++)
 16b:	c7 85 c0 2a cf ff 00 	movl   $0x0,-0x30d540(%rbp)
 172:	00 00 00 
 175:	83 bd c0 2a cf ff 03 	cmpl   $0x3,-0x30d540(%rbp)
 17c:	7f 48                	jg     1c6 <_Z17measure_sqrt_timeILm2EEvv+0x1c6>
        roots[i + k] = sqrt(floats[i + k]);
 17e:	8b 95 bc 2a cf ff    	mov    -0x30d544(%rbp),%edx
 184:	8b 85 c0 2a cf ff    	mov    -0x30d540(%rbp),%eax
 18a:	01 d0                	add    %edx,%eax
 18c:	48 98                	cltq   
 18e:	c5 fa 10 84 85 10 2b 	vmovss -0x30d4f0(%rbp,%rax,4),%xmm0
 195:	cf ff 
 197:	c5 fa 5a c0          	vcvtss2sd %xmm0,%xmm0,%xmm0
 19b:	e8 00 00 00 00       	callq  1a0 <_Z17measure_sqrt_timeILm2EEvv+0x1a0>
 1a0:	8b 95 bc 2a cf ff    	mov    -0x30d544(%rbp),%edx
 1a6:	8b 85 c0 2a cf ff    	mov    -0x30d540(%rbp),%eax
 1ac:	01 d0                	add    %edx,%eax
 1ae:	c5 fb 5a c0          	vcvtsd2ss %xmm0,%xmm0,%xmm0
 1b2:	48 98                	cltq   
 1b4:	c5 fa 11 84 85 10 95 	vmovss %xmm0,-0x186af0(%rbp,%rax,4)
 1bb:	e7 ff 
      for (int k = 0; k < 4; k++)
 1bd:	83 85 c0 2a cf ff 01 	addl   $0x1,-0x30d540(%rbp)
 1c4:	eb af                	jmp    175 <_Z17measure_sqrt_timeILm2EEvv+0x175>
    for (int i = 0; i < 4 * N; i += 4)
 1c6:	83 85 bc 2a cf ff 04 	addl   $0x4,-0x30d544(%rbp)
 1cd:	eb 90                	jmp    15f <_Z17measure_sqrt_timeILm2EEvv+0x15f>
  for (int j = 0; j < LOOP; j++)
 1cf:	83 85 b8 2a cf ff 01 	addl   $0x1,-0x30d548(%rbp)
 1d6:	e9 6a ff ff ff       	jmpq   145 <_Z17measure_sqrt_timeILm2EEvv+0x145>
  time.stop_clock();
 1db:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 1e2:	48 89 c7             	mov    %rax,%rdi
 1e5:	e8 00 00 00 00       	callq  1ea <_Z17measure_sqrt_timeILm2EEvv+0x1ea>
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 1ea:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 1f1:	48 89 c7             	mov    %rax,%rdi
 1f4:	e8 00 00 00 00       	callq  1f9 <_Z17measure_sqrt_timeILm2EEvv+0x1f9>
 1f9:	48 89 85 e8 2a cf ff 	mov    %rax,-0x30d518(%rbp)
 200:	48 8d 85 e8 2a cf ff 	lea    -0x30d518(%rbp),%rax
 207:	48 89 c7             	mov    %rax,%rdi
 20a:	e8 00 00 00 00       	callq  20f <_Z17measure_sqrt_timeILm2EEvv+0x20f>
 20f:	48 89 c1             	mov    %rax,%rcx
 212:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 219:	9b c4 20 
 21c:	48 89 c8             	mov    %rcx,%rax
 21f:	48 f7 ea             	imul   %rdx
 222:	48 c1 fa 07          	sar    $0x7,%rdx
 226:	48 89 c8             	mov    %rcx,%rax
 229:	48 c1 f8 3f          	sar    $0x3f,%rax
 22d:	48 29 c2             	sub    %rax,%rdx
 230:	48 89 d0             	mov    %rdx,%rax
 233:	48 89 c6             	mov    %rax,%rsi
 236:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 23d <_Z17measure_sqrt_timeILm2EEvv+0x23d>
 23d:	e8 00 00 00 00       	callq  242 <_Z17measure_sqrt_timeILm2EEvv+0x242>
 242:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 249 <_Z17measure_sqrt_timeILm2EEvv+0x249>
 249:	48 89 c7             	mov    %rax,%rdi
 24c:	e8 00 00 00 00       	callq  251 <_Z17measure_sqrt_timeILm2EEvv+0x251>
 251:	48 89 c2             	mov    %rax,%rdx
 254:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 25b <_Z17measure_sqrt_timeILm2EEvv+0x25b>
 25b:	48 89 c6             	mov    %rax,%rsi
 25e:	48 89 d7             	mov    %rdx,%rdi
 261:	e8 00 00 00 00       	callq  266 <_Z17measure_sqrt_timeILm2EEvv+0x266>
  time.reset_clock();
 266:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 26d:	48 89 c7             	mov    %rax,%rdi
 270:	e8 00 00 00 00       	callq  275 <_Z17measure_sqrt_timeILm2EEvv+0x275>
  std::cout << "sqrt1 (Newton method for single float, one time a loop)" << std::endl;
 275:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 27c <_Z17measure_sqrt_timeILm2EEvv+0x27c>
 27c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 283 <_Z17measure_sqrt_timeILm2EEvv+0x283>
 283:	e8 00 00 00 00       	callq  288 <_Z17measure_sqrt_timeILm2EEvv+0x288>
 288:	48 89 c2             	mov    %rax,%rdx
 28b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 292 <_Z17measure_sqrt_timeILm2EEvv+0x292>
 292:	48 89 c6             	mov    %rax,%rsi
 295:	48 89 d7             	mov    %rdx,%rdi
 298:	e8 00 00 00 00       	callq  29d <_Z17measure_sqrt_timeILm2EEvv+0x29d>
  time.start_clock();
 29d:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 2a4:	48 89 c7             	mov    %rax,%rdi
 2a7:	e8 00 00 00 00       	callq  2ac <_Z17measure_sqrt_timeILm2EEvv+0x2ac>
  for (int j = 0; j < LOOP; j++)
 2ac:	c7 85 c4 2a cf ff 00 	movl   $0x0,-0x30d53c(%rbp)
 2b3:	00 00 00 
 2b6:	81 bd c4 2a cf ff e7 	cmpl   $0x3e7,-0x30d53c(%rbp)
 2bd:	03 00 00 
 2c0:	7f 5d                	jg     31f <_Z17measure_sqrt_timeILm2EEvv+0x31f>
    for (int i = 0; i < 4 * N; i++)
 2c2:	c7 85 c8 2a cf ff 00 	movl   $0x0,-0x30d538(%rbp)
 2c9:	00 00 00 
 2cc:	81 bd c8 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d538(%rbp)
 2d3:	1a 06 00 
 2d6:	7f 3e                	jg     316 <_Z17measure_sqrt_timeILm2EEvv+0x316>
      roots[i] = sqrt1<LOOPS>(floats + i);
 2d8:	8b 85 c8 2a cf ff    	mov    -0x30d538(%rbp),%eax
 2de:	48 98                	cltq   
 2e0:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 2e7:	00 
 2e8:	48 8d 85 10 2b cf ff 	lea    -0x30d4f0(%rbp),%rax
 2ef:	48 01 d0             	add    %rdx,%rax
 2f2:	48 89 c7             	mov    %rax,%rdi
 2f5:	e8 00 00 00 00       	callq  2fa <_Z17measure_sqrt_timeILm2EEvv+0x2fa>
 2fa:	c5 f9 7e c2          	vmovd  %xmm0,%edx
 2fe:	8b 85 c8 2a cf ff    	mov    -0x30d538(%rbp),%eax
 304:	48 98                	cltq   
 306:	89 94 85 10 95 e7 ff 	mov    %edx,-0x186af0(%rbp,%rax,4)
    for (int i = 0; i < 4 * N; i++)
 30d:	83 85 c8 2a cf ff 01 	addl   $0x1,-0x30d538(%rbp)
 314:	eb b6                	jmp    2cc <_Z17measure_sqrt_timeILm2EEvv+0x2cc>
  for (int j = 0; j < LOOP; j++)
 316:	83 85 c4 2a cf ff 01 	addl   $0x1,-0x30d53c(%rbp)
 31d:	eb 97                	jmp    2b6 <_Z17measure_sqrt_timeILm2EEvv+0x2b6>
  time.stop_clock();
 31f:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 326:	48 89 c7             	mov    %rax,%rdi
 329:	e8 00 00 00 00       	callq  32e <_Z17measure_sqrt_timeILm2EEvv+0x32e>
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 32e:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 335:	48 89 c7             	mov    %rax,%rdi
 338:	e8 00 00 00 00       	callq  33d <_Z17measure_sqrt_timeILm2EEvv+0x33d>
 33d:	48 89 85 e8 2a cf ff 	mov    %rax,-0x30d518(%rbp)
 344:	48 8d 85 e8 2a cf ff 	lea    -0x30d518(%rbp),%rax
 34b:	48 89 c7             	mov    %rax,%rdi
 34e:	e8 00 00 00 00       	callq  353 <_Z17measure_sqrt_timeILm2EEvv+0x353>
 353:	48 89 c1             	mov    %rax,%rcx
 356:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 35d:	9b c4 20 
 360:	48 89 c8             	mov    %rcx,%rax
 363:	48 f7 ea             	imul   %rdx
 366:	48 c1 fa 07          	sar    $0x7,%rdx
 36a:	48 89 c8             	mov    %rcx,%rax
 36d:	48 c1 f8 3f          	sar    $0x3f,%rax
 371:	48 29 c2             	sub    %rax,%rdx
 374:	48 89 d0             	mov    %rdx,%rax
 377:	48 89 c6             	mov    %rax,%rsi
 37a:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 381 <_Z17measure_sqrt_timeILm2EEvv+0x381>
 381:	e8 00 00 00 00       	callq  386 <_Z17measure_sqrt_timeILm2EEvv+0x386>
 386:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 38d <_Z17measure_sqrt_timeILm2EEvv+0x38d>
 38d:	48 89 c7             	mov    %rax,%rdi
 390:	e8 00 00 00 00       	callq  395 <_Z17measure_sqrt_timeILm2EEvv+0x395>
 395:	48 89 c2             	mov    %rax,%rdx
 398:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 39f <_Z17measure_sqrt_timeILm2EEvv+0x39f>
 39f:	48 89 c6             	mov    %rax,%rsi
 3a2:	48 89 d7             	mov    %rdx,%rdi
 3a5:	e8 00 00 00 00       	callq  3aa <_Z17measure_sqrt_timeILm2EEvv+0x3aa>
  time.reset_clock();
 3aa:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 3b1:	48 89 c7             	mov    %rax,%rdi
 3b4:	e8 00 00 00 00       	callq  3b9 <_Z17measure_sqrt_timeILm2EEvv+0x3b9>
  std::cout << "sqrt1 (Newton method for single float, four times a loop)" << std::endl;
 3b9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 3c0 <_Z17measure_sqrt_timeILm2EEvv+0x3c0>
 3c0:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 3c7 <_Z17measure_sqrt_timeILm2EEvv+0x3c7>
 3c7:	e8 00 00 00 00       	callq  3cc <_Z17measure_sqrt_timeILm2EEvv+0x3cc>
 3cc:	48 89 c2             	mov    %rax,%rdx
 3cf:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 3d6 <_Z17measure_sqrt_timeILm2EEvv+0x3d6>
 3d6:	48 89 c6             	mov    %rax,%rsi
 3d9:	48 89 d7             	mov    %rdx,%rdi
 3dc:	e8 00 00 00 00       	callq  3e1 <_Z17measure_sqrt_timeILm2EEvv+0x3e1>
  time.start_clock();
 3e1:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 3e8:	48 89 c7             	mov    %rax,%rdi
 3eb:	e8 00 00 00 00       	callq  3f0 <_Z17measure_sqrt_timeILm2EEvv+0x3f0>
  for (int j = 0; j < LOOP; j++)
 3f0:	c7 85 cc 2a cf ff 00 	movl   $0x0,-0x30d534(%rbp)
 3f7:	00 00 00 
 3fa:	81 bd cc 2a cf ff e7 	cmpl   $0x3e7,-0x30d534(%rbp)
 401:	03 00 00 
 404:	0f 8f 92 00 00 00    	jg     49c <_Z17measure_sqrt_timeILm2EEvv+0x49c>
    for (int i = 0; i < 4 * N; i += 4)
 40a:	c7 85 d0 2a cf ff 00 	movl   $0x0,-0x30d530(%rbp)
 411:	00 00 00 
 414:	81 bd d0 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d530(%rbp)
 41b:	1a 06 00 
 41e:	7f 70                	jg     490 <_Z17measure_sqrt_timeILm2EEvv+0x490>
      for (int k = 0; k < 4; k++)
 420:	c7 85 d4 2a cf ff 00 	movl   $0x0,-0x30d52c(%rbp)
 427:	00 00 00 
 42a:	83 bd d4 2a cf ff 03 	cmpl   $0x3,-0x30d52c(%rbp)
 431:	7f 54                	jg     487 <_Z17measure_sqrt_timeILm2EEvv+0x487>
        roots[i + k] = sqrt1<LOOPS>(floats + i + k);
 433:	8b 85 d0 2a cf ff    	mov    -0x30d530(%rbp),%eax
 439:	48 63 d0             	movslq %eax,%rdx
 43c:	8b 85 d4 2a cf ff    	mov    -0x30d52c(%rbp),%eax
 442:	48 98                	cltq   
 444:	48 01 d0             	add    %rdx,%rax
 447:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 44e:	00 
 44f:	48 8d 85 10 2b cf ff 	lea    -0x30d4f0(%rbp),%rax
 456:	48 01 d0             	add    %rdx,%rax
 459:	8b 8d d0 2a cf ff    	mov    -0x30d530(%rbp),%ecx
 45f:	8b 95 d4 2a cf ff    	mov    -0x30d52c(%rbp),%edx
 465:	8d 1c 11             	lea    (%rcx,%rdx,1),%ebx
 468:	48 89 c7             	mov    %rax,%rdi
 46b:	e8 00 00 00 00       	callq  470 <_Z17measure_sqrt_timeILm2EEvv+0x470>
 470:	c5 f9 7e c2          	vmovd  %xmm0,%edx
 474:	48 63 c3             	movslq %ebx,%rax
 477:	89 94 85 10 95 e7 ff 	mov    %edx,-0x186af0(%rbp,%rax,4)
      for (int k = 0; k < 4; k++)
 47e:	83 85 d4 2a cf ff 01 	addl   $0x1,-0x30d52c(%rbp)
 485:	eb a3                	jmp    42a <_Z17measure_sqrt_timeILm2EEvv+0x42a>
    for (int i = 0; i < 4 * N; i += 4)
 487:	83 85 d0 2a cf ff 04 	addl   $0x4,-0x30d530(%rbp)
 48e:	eb 84                	jmp    414 <_Z17measure_sqrt_timeILm2EEvv+0x414>
  for (int j = 0; j < LOOP; j++)
 490:	83 85 cc 2a cf ff 01 	addl   $0x1,-0x30d534(%rbp)
 497:	e9 5e ff ff ff       	jmpq   3fa <_Z17measure_sqrt_timeILm2EEvv+0x3fa>
  time.stop_clock();
 49c:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 4a3:	48 89 c7             	mov    %rax,%rdi
 4a6:	e8 00 00 00 00       	callq  4ab <_Z17measure_sqrt_timeILm2EEvv+0x4ab>
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 4ab:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 4b2:	48 89 c7             	mov    %rax,%rdi
 4b5:	e8 00 00 00 00       	callq  4ba <_Z17measure_sqrt_timeILm2EEvv+0x4ba>
 4ba:	48 89 85 e8 2a cf ff 	mov    %rax,-0x30d518(%rbp)
 4c1:	48 8d 85 e8 2a cf ff 	lea    -0x30d518(%rbp),%rax
 4c8:	48 89 c7             	mov    %rax,%rdi
 4cb:	e8 00 00 00 00       	callq  4d0 <_Z17measure_sqrt_timeILm2EEvv+0x4d0>
 4d0:	48 89 c1             	mov    %rax,%rcx
 4d3:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 4da:	9b c4 20 
 4dd:	48 89 c8             	mov    %rcx,%rax
 4e0:	48 f7 ea             	imul   %rdx
 4e3:	48 c1 fa 07          	sar    $0x7,%rdx
 4e7:	48 89 c8             	mov    %rcx,%rax
 4ea:	48 c1 f8 3f          	sar    $0x3f,%rax
 4ee:	48 29 c2             	sub    %rax,%rdx
 4f1:	48 89 d0             	mov    %rdx,%rax
 4f4:	48 89 c6             	mov    %rax,%rsi
 4f7:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 4fe <_Z17measure_sqrt_timeILm2EEvv+0x4fe>
 4fe:	e8 00 00 00 00       	callq  503 <_Z17measure_sqrt_timeILm2EEvv+0x503>
 503:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 50a <_Z17measure_sqrt_timeILm2EEvv+0x50a>
 50a:	48 89 c7             	mov    %rax,%rdi
 50d:	e8 00 00 00 00       	callq  512 <_Z17measure_sqrt_timeILm2EEvv+0x512>
 512:	48 89 c2             	mov    %rax,%rdx
 515:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 51c <_Z17measure_sqrt_timeILm2EEvv+0x51c>
 51c:	48 89 c6             	mov    %rax,%rsi
 51f:	48 89 d7             	mov    %rdx,%rdi
 522:	e8 00 00 00 00       	callq  527 <_Z17measure_sqrt_timeILm2EEvv+0x527>
  time.reset_clock();
 527:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 52e:	48 89 c7             	mov    %rax,%rdi
 531:	e8 00 00 00 00       	callq  536 <_Z17measure_sqrt_timeILm2EEvv+0x536>
  std::cout << "sqrt2 (Newton method for sequence of 4 floats)" << std::endl;
 536:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 53d <_Z17measure_sqrt_timeILm2EEvv+0x53d>
 53d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 544 <_Z17measure_sqrt_timeILm2EEvv+0x544>
 544:	e8 00 00 00 00       	callq  549 <_Z17measure_sqrt_timeILm2EEvv+0x549>
 549:	48 89 c2             	mov    %rax,%rdx
 54c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 553 <_Z17measure_sqrt_timeILm2EEvv+0x553>
 553:	48 89 c6             	mov    %rax,%rsi
 556:	48 89 d7             	mov    %rdx,%rdi
 559:	e8 00 00 00 00       	callq  55e <_Z17measure_sqrt_timeILm2EEvv+0x55e>
  time.start_clock();
 55e:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 565:	48 89 c7             	mov    %rax,%rdi
 568:	e8 00 00 00 00       	callq  56d <_Z17measure_sqrt_timeILm2EEvv+0x56d>
  for (int j = 0; j < LOOP; j++)
 56d:	c7 85 d8 2a cf ff 00 	movl   $0x0,-0x30d528(%rbp)
 574:	00 00 00 
 577:	81 bd d8 2a cf ff e7 	cmpl   $0x3e7,-0x30d528(%rbp)
 57e:	03 00 00 
 581:	7f 67                	jg     5ea <_Z17measure_sqrt_timeILm2EEvv+0x5ea>
    for (int i = 0; i < 4 * N; i += 4)
 583:	c7 85 dc 2a cf ff 00 	movl   $0x0,-0x30d524(%rbp)
 58a:	00 00 00 
 58d:	81 bd dc 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d524(%rbp)
 594:	1a 06 00 
 597:	7f 48                	jg     5e1 <_Z17measure_sqrt_timeILm2EEvv+0x5e1>
      sqrt2<LOOPS>(floats + i, roots + i);
 599:	8b 85 dc 2a cf ff    	mov    -0x30d524(%rbp),%eax
 59f:	48 98                	cltq   
 5a1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 5a8:	00 
 5a9:	48 8d 85 10 95 e7 ff 	lea    -0x186af0(%rbp),%rax
 5b0:	48 01 c2             	add    %rax,%rdx
 5b3:	8b 85 dc 2a cf ff    	mov    -0x30d524(%rbp),%eax
 5b9:	48 98                	cltq   
 5bb:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
 5c2:	00 
 5c3:	48 8d 85 10 2b cf ff 	lea    -0x30d4f0(%rbp),%rax
 5ca:	48 01 c8             	add    %rcx,%rax
 5cd:	48 89 d6             	mov    %rdx,%rsi
 5d0:	48 89 c7             	mov    %rax,%rdi
 5d3:	e8 00 00 00 00       	callq  5d8 <_Z17measure_sqrt_timeILm2EEvv+0x5d8>
    for (int i = 0; i < 4 * N; i += 4)
 5d8:	83 85 dc 2a cf ff 04 	addl   $0x4,-0x30d524(%rbp)
 5df:	eb ac                	jmp    58d <_Z17measure_sqrt_timeILm2EEvv+0x58d>
  for (int j = 0; j < LOOP; j++)
 5e1:	83 85 d8 2a cf ff 01 	addl   $0x1,-0x30d528(%rbp)
 5e8:	eb 8d                	jmp    577 <_Z17measure_sqrt_timeILm2EEvv+0x577>
  time.stop_clock();
 5ea:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 5f1:	48 89 c7             	mov    %rax,%rdi
 5f4:	e8 00 00 00 00       	callq  5f9 <_Z17measure_sqrt_timeILm2EEvv+0x5f9>
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 5f9:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 600:	48 89 c7             	mov    %rax,%rdi
 603:	e8 00 00 00 00       	callq  608 <_Z17measure_sqrt_timeILm2EEvv+0x608>
 608:	48 89 85 e8 2a cf ff 	mov    %rax,-0x30d518(%rbp)
 60f:	48 8d 85 e8 2a cf ff 	lea    -0x30d518(%rbp),%rax
 616:	48 89 c7             	mov    %rax,%rdi
 619:	e8 00 00 00 00       	callq  61e <_Z17measure_sqrt_timeILm2EEvv+0x61e>
 61e:	48 89 c1             	mov    %rax,%rcx
 621:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 628:	9b c4 20 
 62b:	48 89 c8             	mov    %rcx,%rax
 62e:	48 f7 ea             	imul   %rdx
 631:	48 c1 fa 07          	sar    $0x7,%rdx
 635:	48 89 c8             	mov    %rcx,%rax
 638:	48 c1 f8 3f          	sar    $0x3f,%rax
 63c:	48 29 c2             	sub    %rax,%rdx
 63f:	48 89 d0             	mov    %rdx,%rax
 642:	48 89 c6             	mov    %rax,%rsi
 645:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 64c <_Z17measure_sqrt_timeILm2EEvv+0x64c>
 64c:	e8 00 00 00 00       	callq  651 <_Z17measure_sqrt_timeILm2EEvv+0x651>
 651:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 658 <_Z17measure_sqrt_timeILm2EEvv+0x658>
 658:	48 89 c7             	mov    %rax,%rdi
 65b:	e8 00 00 00 00       	callq  660 <_Z17measure_sqrt_timeILm2EEvv+0x660>
 660:	48 89 c2             	mov    %rax,%rdx
 663:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 66a <_Z17measure_sqrt_timeILm2EEvv+0x66a>
 66a:	48 89 c6             	mov    %rax,%rsi
 66d:	48 89 d7             	mov    %rdx,%rdi
 670:	e8 00 00 00 00       	callq  675 <_Z17measure_sqrt_timeILm2EEvv+0x675>
  time.reset_clock();
 675:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 67c:	48 89 c7             	mov    %rax,%rdi
 67f:	e8 00 00 00 00       	callq  684 <_Z17measure_sqrt_timeILm2EEvv+0x684>
  time.start_clock();
 684:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 68b:	48 89 c7             	mov    %rax,%rdi
 68e:	e8 00 00 00 00       	callq  693 <_Z17measure_sqrt_timeILm2EEvv+0x693>
  for (int j = 0; j < LOOP; j++)
 693:	c7 85 e0 2a cf ff 00 	movl   $0x0,-0x30d520(%rbp)
 69a:	00 00 00 
 69d:	81 bd e0 2a cf ff e7 	cmpl   $0x3e7,-0x30d520(%rbp)
 6a4:	03 00 00 
 6a7:	7f 67                	jg     710 <_Z17measure_sqrt_timeILm2EEvv+0x710>
    for (int i = 0; i < 4 * N; i += 4)
 6a9:	c7 85 e4 2a cf ff 00 	movl   $0x0,-0x30d51c(%rbp)
 6b0:	00 00 00 
 6b3:	81 bd e4 2a cf ff 7f 	cmpl   $0x61a7f,-0x30d51c(%rbp)
 6ba:	1a 06 00 
 6bd:	7f 48                	jg     707 <_Z17measure_sqrt_timeILm2EEvv+0x707>
      sqrt3<LOOPS>(floats + i, roots + i);
 6bf:	8b 85 e4 2a cf ff    	mov    -0x30d51c(%rbp),%eax
 6c5:	48 98                	cltq   
 6c7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 6ce:	00 
 6cf:	48 8d 85 10 95 e7 ff 	lea    -0x186af0(%rbp),%rax
 6d6:	48 01 c2             	add    %rax,%rdx
 6d9:	8b 85 e4 2a cf ff    	mov    -0x30d51c(%rbp),%eax
 6df:	48 98                	cltq   
 6e1:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
 6e8:	00 
 6e9:	48 8d 85 10 2b cf ff 	lea    -0x30d4f0(%rbp),%rax
 6f0:	48 01 c8             	add    %rcx,%rax
 6f3:	48 89 d6             	mov    %rdx,%rsi
 6f6:	48 89 c7             	mov    %rax,%rdi
 6f9:	e8 00 00 00 00       	callq  6fe <_Z17measure_sqrt_timeILm2EEvv+0x6fe>
    for (int i = 0; i < 4 * N; i += 4)
 6fe:	83 85 e4 2a cf ff 04 	addl   $0x4,-0x30d51c(%rbp)
 705:	eb ac                	jmp    6b3 <_Z17measure_sqrt_timeILm2EEvv+0x6b3>
  for (int j = 0; j < LOOP; j++)
 707:	83 85 e0 2a cf ff 01 	addl   $0x1,-0x30d520(%rbp)
 70e:	eb 8d                	jmp    69d <_Z17measure_sqrt_timeILm2EEvv+0x69d>
  time.stop_clock();
 710:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 717:	48 89 c7             	mov    %rax,%rdi
 71a:	e8 00 00 00 00       	callq  71f <_Z17measure_sqrt_timeILm2EEvv+0x71f>
  std::cout << "sqrt3 (Newton method for sequence of 4 floats, SIMD)" << std::endl;
 71f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 726 <_Z17measure_sqrt_timeILm2EEvv+0x726>
 726:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 72d <_Z17measure_sqrt_timeILm2EEvv+0x72d>
 72d:	e8 00 00 00 00       	callq  732 <_Z17measure_sqrt_timeILm2EEvv+0x732>
 732:	48 89 c2             	mov    %rax,%rdx
 735:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 73c <_Z17measure_sqrt_timeILm2EEvv+0x73c>
 73c:	48 89 c6             	mov    %rax,%rsi
 73f:	48 89 d7             	mov    %rdx,%rdi
 742:	e8 00 00 00 00       	callq  747 <_Z17measure_sqrt_timeILm2EEvv+0x747>
  std::cout << time.time_clock().count() / LOOP << " [ns]" << std::endl;
 747:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 74e:	48 89 c7             	mov    %rax,%rdi
 751:	e8 00 00 00 00       	callq  756 <_Z17measure_sqrt_timeILm2EEvv+0x756>
 756:	48 89 85 e8 2a cf ff 	mov    %rax,-0x30d518(%rbp)
 75d:	48 8d 85 e8 2a cf ff 	lea    -0x30d518(%rbp),%rax
 764:	48 89 c7             	mov    %rax,%rdi
 767:	e8 00 00 00 00       	callq  76c <_Z17measure_sqrt_timeILm2EEvv+0x76c>
 76c:	48 89 c1             	mov    %rax,%rcx
 76f:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
 776:	9b c4 20 
 779:	48 89 c8             	mov    %rcx,%rax
 77c:	48 f7 ea             	imul   %rdx
 77f:	48 c1 fa 07          	sar    $0x7,%rdx
 783:	48 89 c8             	mov    %rcx,%rax
 786:	48 c1 f8 3f          	sar    $0x3f,%rax
 78a:	48 29 c2             	sub    %rax,%rdx
 78d:	48 89 d0             	mov    %rdx,%rax
 790:	48 89 c6             	mov    %rax,%rsi
 793:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 79a <_Z17measure_sqrt_timeILm2EEvv+0x79a>
 79a:	e8 00 00 00 00       	callq  79f <_Z17measure_sqrt_timeILm2EEvv+0x79f>
 79f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 7a6 <_Z17measure_sqrt_timeILm2EEvv+0x7a6>
 7a6:	48 89 c7             	mov    %rax,%rdi
 7a9:	e8 00 00 00 00       	callq  7ae <_Z17measure_sqrt_timeILm2EEvv+0x7ae>
 7ae:	48 89 c2             	mov    %rax,%rdx
 7b1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 7b8 <_Z17measure_sqrt_timeILm2EEvv+0x7b8>
 7b8:	48 89 c6             	mov    %rax,%rsi
 7bb:	48 89 d7             	mov    %rdx,%rdi
 7be:	e8 00 00 00 00       	callq  7c3 <_Z17measure_sqrt_timeILm2EEvv+0x7c3>
  time.reset_clock();
 7c3:	48 8d 85 f0 2a cf ff 	lea    -0x30d510(%rbp),%rax
 7ca:	48 89 c7             	mov    %rax,%rdi
 7cd:	e8 00 00 00 00       	callq  7d2 <_Z17measure_sqrt_timeILm2EEvv+0x7d2>
}
 7d2:	90                   	nop
 7d3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
 7d7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 7de:	00 00 
 7e0:	74 05                	je     7e7 <_Z17measure_sqrt_timeILm2EEvv+0x7e7>
 7e2:	e8 00 00 00 00       	callq  7e7 <_Z17measure_sqrt_timeILm2EEvv+0x7e7>
 7e7:	48 81 c4 60 d5 30 00 	add    $0x30d560,%rsp
 7ee:	5b                   	pop    %rbx
 7ef:	41 5a                	pop    %r10
 7f1:	5d                   	pop    %rbp
 7f2:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 7f6:	c3                   	retq   

Disassembly of section .text._ZNSt25uniform_real_distributionIdE10param_typeC2Edd:

0000000000000000 <_ZNSt25uniform_real_distributionIdE10param_typeC1Edd>:
	param_type(_RealType __a = _RealType(0),
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	c5 fb 11 45 f0       	vmovsd %xmm0,-0x10(%rbp)
   d:	c5 fb 11 4d e8       	vmovsd %xmm1,-0x18(%rbp)
	: _M_a(__a), _M_b(__b)
  12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  16:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
  1b:	c5 fb 11 00          	vmovsd %xmm0,(%rax)
  1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  23:	c5 fb 10 45 e8       	vmovsd -0x18(%rbp),%xmm0
  28:	c5 fb 11 40 08       	vmovsd %xmm0,0x8(%rax)
	}
  2d:	90                   	nop
  2e:	5d                   	pop    %rbp
  2f:	c3                   	retq   

Disassembly of section .text._ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE:

0000000000000000 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE>:

      template<typename _UniformRandomNumberGenerator>
	result_type
	operator()(_UniformRandomNumberGenerator& __urng,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  14:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1b:	00 00 
  1d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  21:	31 c0                	xor    %eax,%eax
		   const param_type& __p)
	{
	  __detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
	    __aurng(__urng);
  23:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  27:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  2b:	48 89 d6             	mov    %rdx,%rsi
  2e:	48 89 c7             	mov    %rax,%rdi
  31:	e8 00 00 00 00       	callq  36 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x36>
	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
  36:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  3a:	48 89 c7             	mov    %rax,%rdi
  3d:	e8 00 00 00 00       	callq  42 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x42>
  42:	c5 fb 11 45 d0       	vmovsd %xmm0,-0x30(%rbp)
  47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4b:	48 89 c7             	mov    %rax,%rdi
  4e:	e8 00 00 00 00       	callq  53 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x53>
  53:	c5 fb 11 45 c8       	vmovsd %xmm0,-0x38(%rbp)
  58:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  5c:	48 89 c7             	mov    %rax,%rdi
  5f:	e8 00 00 00 00       	callq  64 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x64>
  64:	c5 fb 10 4d c8       	vmovsd -0x38(%rbp),%xmm1
  69:	c5 f3 5c c0          	vsubsd %xmm0,%xmm1,%xmm0
  6d:	c5 fb 59 55 d0       	vmulsd -0x30(%rbp),%xmm0,%xmm2
  72:	c5 fb 11 55 d0       	vmovsd %xmm2,-0x30(%rbp)
  77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  7b:	48 89 c7             	mov    %rax,%rdi
  7e:	e8 00 00 00 00       	callq  83 <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x83>
  83:	c5 fb 58 45 d0       	vaddsd -0x30(%rbp),%xmm0,%xmm0
	}
  88:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  8c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  93:	00 00 
  95:	74 05                	je     9c <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x9c>
  97:	e8 00 00 00 00       	callq  9c <_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE+0x9c>
  9c:	c9                   	leaveq 
  9d:	c3                   	retq   

Disassembly of section .text._ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11start_clockEv:

0000000000000000 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11start_clockEv>:
   steady_clock::time_point start;
   steady_clock::time_point end;
   DURATION time = DURATION(0);
   bool stopped = true;
public:
   void start_clock() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 18          	sub    $0x18,%rsp
   9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     if (stopped) {
   d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  11:	0f b6 40 18          	movzbl 0x18(%rax),%eax
  15:	84 c0                	test   %al,%al
  17:	74 14                	je     2d <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11start_clockEv+0x2d>
       start = steady_clock::now();
  19:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  1d:	e8 00 00 00 00       	callq  22 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11start_clockEv+0x22>
  22:	48 89 03             	mov    %rax,(%rbx)
       stopped = false;
  25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  29:	c6 40 18 00          	movb   $0x0,0x18(%rax)
     }
   }
  2d:	90                   	nop
  2e:	48 83 c4 18          	add    $0x18,%rsp
  32:	5b                   	pop    %rbx
  33:	5d                   	pop    %rbp
  34:	c3                   	retq   

Disassembly of section .text._ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv:

0000000000000000 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv>:

   void stop_clock() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 38          	sub    $0x38,%rsp
   9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  14:	00 00 
  16:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1a:	31 c0                	xor    %eax,%eax
     if (! stopped) {
  1c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  20:	0f b6 40 18          	movzbl 0x18(%rax),%eax
  24:	83 f0 01             	xor    $0x1,%eax
  27:	84 c0                	test   %al,%al
  29:	0f 84 85 00 00 00    	je     b4 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0xb4>
       end = steady_clock::now();
  2f:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  33:	e8 00 00 00 00       	callq  38 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0x38>
  38:	48 89 43 08          	mov    %rax,0x8(%rbx)
       DURATION time_span = duration_cast<DURATION>(end - start);
  3c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  44:	48 83 c2 08          	add    $0x8,%rdx
  48:	48 89 c6             	mov    %rax,%rsi
  4b:	48 89 d7             	mov    %rdx,%rdi
  4e:	e8 00 00 00 00       	callq  53 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0x53>
  53:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  57:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  5b:	48 89 c7             	mov    %rax,%rdi
  5e:	e8 00 00 00 00       	callq  63 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0x63>
  63:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
       time =  DURATION(time.count() +  time_span.count());
  67:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  6b:	48 83 c0 10          	add    $0x10,%rax
  6f:	48 89 c7             	mov    %rax,%rdi
  72:	e8 00 00 00 00       	callq  77 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0x77>
  77:	48 89 c3             	mov    %rax,%rbx
  7a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  7e:	48 89 c7             	mov    %rax,%rdi
  81:	e8 00 00 00 00       	callq  86 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0x86>
  86:	48 01 d8             	add    %rbx,%rax
  89:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  8d:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  91:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  95:	48 89 d6             	mov    %rdx,%rsi
  98:	48 89 c7             	mov    %rax,%rdi
  9b:	e8 00 00 00 00       	callq  a0 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0xa0>
  a0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  a4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  a8:	48 89 50 10          	mov    %rdx,0x10(%rax)
       stopped = true;
  ac:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  b0:	c6 40 18 01          	movb   $0x1,0x18(%rax)
     }
   }
  b4:	90                   	nop
  b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  b9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  c0:	00 00 
  c2:	74 05                	je     c9 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0xc9>
  c4:	e8 00 00 00 00       	callq  c9 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10stop_clockEv+0xc9>
  c9:	48 83 c4 38          	add    $0x38,%rsp
  cd:	5b                   	pop    %rbx
  ce:	5d                   	pop    %rbp
  cf:	c3                   	retq   

Disassembly of section .text._ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10time_clockEv:

0000000000000000 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10time_clockEv>:

   void reset_clock() {
     time = DURATION(0);
   }

   DURATION time_clock() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     return time;
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 40 10          	mov    0x10(%rax),%rax
   }
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11reset_clockEv:

0000000000000000 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11reset_clockEv>:
   void reset_clock() {
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
     time = DURATION(0);
  1b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  22:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
  26:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  2a:	48 89 d6             	mov    %rdx,%rsi
  2d:	48 89 c7             	mov    %rax,%rdi
  30:	e8 00 00 00 00       	callq  35 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11reset_clockEv+0x35>
  35:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  39:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  3d:	48 89 50 10          	mov    %rdx,0x10(%rax)
   }
  41:	90                   	nop
  42:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  46:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4d:	00 00 
  4f:	74 05                	je     56 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11reset_clockEv+0x56>
  51:	e8 00 00 00 00       	callq  56 <_ZN11MeasureTimeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11reset_clockEv+0x56>
  56:	c9                   	leaveq 
  57:	c3                   	retq   

Disassembly of section .text._Z5sqrt1ILm2EEfPf:

0000000000000000 <_Z5sqrt1ILm2EEfPf>:

typedef float v4sf __attribute__((vector_size(16)));
typedef int v4si __attribute__((vector_size(16)));

template <size_t LOOPS = 2>
float sqrt1(float *a)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
{
  float *ap = a;
  1b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  1f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  float root;
  float *rp = &root;
  23:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  27:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

  int *ai = reinterpret_cast<int *>(ap);
  2b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  2f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  int *initial = reinterpret_cast<int *>(rp);
  33:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  37:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  *initial = (1 << 29) + (*ai >> 1) - (1 << 22) - 0x4C000;
  3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3f:	8b 00                	mov    (%rax),%eax
  41:	d1 f8                	sar    %eax
  43:	8d 90 00 40 bb 1f    	lea    0x1fbb4000(%rax),%edx
  49:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4d:	89 10                	mov    %edx,(%rax)
  root = reinterpret_cast<float &>(*initial);
  4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  53:	c5 fa 10 00          	vmovss (%rax),%xmm0
  57:	c5 fa 11 45 d0       	vmovss %xmm0,-0x30(%rbp)

  for (int i = 0; i < LOOPS; i++)
  5c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  63:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  66:	48 98                	cltq   
  68:	48 83 f8 01          	cmp    $0x1,%rax
  6c:	77 31                	ja     9f <_Z5sqrt1ILm2EEfPf+0x9f>
  {
    root = 0.5 * (root + (*a / root));
  6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  72:	c5 fa 10 00          	vmovss (%rax),%xmm0
  76:	c5 fa 10 4d d0       	vmovss -0x30(%rbp),%xmm1
  7b:	c5 fa 5e c1          	vdivss %xmm1,%xmm0,%xmm0
  7f:	c5 fa 10 4d d0       	vmovss -0x30(%rbp),%xmm1
  84:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
  88:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 90 <_Z5sqrt1ILm2EEfPf+0x90>
  8f:	00 
  90:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
  94:	c5 fa 11 45 d0       	vmovss %xmm0,-0x30(%rbp)
  for (int i = 0; i < LOOPS; i++)
  99:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
  9d:	eb c4                	jmp    63 <_Z5sqrt1ILm2EEfPf+0x63>
  }

  return root;
  9f:	c5 fa 10 45 d0       	vmovss -0x30(%rbp),%xmm0
}
  a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  af:	00 00 
  b1:	74 05                	je     b8 <_Z5sqrt1ILm2EEfPf+0xb8>
  b3:	e8 00 00 00 00       	callq  b8 <_Z5sqrt1ILm2EEfPf+0xb8>
  b8:	c9                   	leaveq 
  b9:	c3                   	retq   

Disassembly of section .text._Z5sqrt2ILm2EEvPfS0_:

0000000000000000 <_Z5sqrt2ILm2EEvPfS0_>:

template <size_t LOOPS = 2>
void sqrt2(float *__restrict__ a, float *__restrict__ root)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
{
  int initial;

  for (int i = 0; i < 4; i++)
  1f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  26:	83 7d f0 03          	cmpl   $0x3,-0x10(%rbp)
  2a:	7f 4d                	jg     79 <_Z5sqrt2ILm2EEvPfS0_+0x79>
  {
    initial = *reinterpret_cast<int *>(a + i);
  2c:	8b 45 f0             	mov    -0x10(%rbp),%eax
  2f:	48 98                	cltq   
  31:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  38:	00 
  39:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  3d:	48 01 d0             	add    %rdx,%rax
  40:	8b 00                	mov    (%rax),%eax
  42:	89 45 ec             	mov    %eax,-0x14(%rbp)
    initial = (1 << 29) + (initial >> 1) - (1 << 22) - 0x4C000;
  45:	8b 45 ec             	mov    -0x14(%rbp),%eax
  48:	d1 f8                	sar    %eax
  4a:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
  4f:	89 45 ec             	mov    %eax,-0x14(%rbp)
    root[i] = *reinterpret_cast<float *>(&initial);
  52:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  56:	8b 55 f0             	mov    -0x10(%rbp),%edx
  59:	48 63 d2             	movslq %edx,%rdx
  5c:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
  63:	00 
  64:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  68:	48 01 ca             	add    %rcx,%rdx
  6b:	c5 fa 10 00          	vmovss (%rax),%xmm0
  6f:	c5 fa 11 02          	vmovss %xmm0,(%rdx)
  for (int i = 0; i < 4; i++)
  73:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
  77:	eb ad                	jmp    26 <_Z5sqrt2ILm2EEvPfS0_+0x26>
  }

  for (int i = 0; i < LOOPS; i++)
  79:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  80:	8b 45 f4             	mov    -0xc(%rbp),%eax
  83:	48 98                	cltq   
  85:	48 83 f8 01          	cmp    $0x1,%rax
  89:	0f 87 09 01 00 00    	ja     198 <_Z5sqrt2ILm2EEvPfS0_+0x198>
  {
    root[0] = 0.5 * (root[0] + (a[0] / root[0]));
  8f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  93:	c5 fa 10 08          	vmovss (%rax),%xmm1
  97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  9b:	c5 fa 10 00          	vmovss (%rax),%xmm0
  9f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  a3:	c5 fa 10 10          	vmovss (%rax),%xmm2
  a7:	c5 fa 5e c2          	vdivss %xmm2,%xmm0,%xmm0
  ab:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  af:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # b7 <_Z5sqrt2ILm2EEvPfS0_+0xb7>
  b6:	00 
  b7:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
  bb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  bf:	c5 fa 11 00          	vmovss %xmm0,(%rax)
    root[1] = 0.5 * (root[1] + (a[1] / root[1]));
  c3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  c7:	48 83 c0 04          	add    $0x4,%rax
  cb:	c5 fa 10 08          	vmovss (%rax),%xmm1
  cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  d3:	48 83 c0 04          	add    $0x4,%rax
  d7:	c5 fa 10 00          	vmovss (%rax),%xmm0
  db:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  df:	48 83 c0 04          	add    $0x4,%rax
  e3:	c5 fa 10 10          	vmovss (%rax),%xmm2
  e7:	c5 fa 5e c2          	vdivss %xmm2,%xmm0,%xmm0
  eb:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
  ef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  f3:	48 83 c0 04          	add    $0x4,%rax
  f7:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # ff <_Z5sqrt2ILm2EEvPfS0_+0xff>
  fe:	00 
  ff:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
 103:	c5 fa 11 00          	vmovss %xmm0,(%rax)
    root[2] = 0.5 * (root[2] + (a[2] / root[2]));
 107:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 10b:	48 83 c0 08          	add    $0x8,%rax
 10f:	c5 fa 10 08          	vmovss (%rax),%xmm1
 113:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 117:	48 83 c0 08          	add    $0x8,%rax
 11b:	c5 fa 10 00          	vmovss (%rax),%xmm0
 11f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 123:	48 83 c0 08          	add    $0x8,%rax
 127:	c5 fa 10 10          	vmovss (%rax),%xmm2
 12b:	c5 fa 5e c2          	vdivss %xmm2,%xmm0,%xmm0
 12f:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
 133:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 137:	48 83 c0 08          	add    $0x8,%rax
 13b:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 143 <_Z5sqrt2ILm2EEvPfS0_+0x143>
 142:	00 
 143:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
 147:	c5 fa 11 00          	vmovss %xmm0,(%rax)
    root[3] = 0.5 * (root[3] + (a[3] / root[3]));
 14b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 14f:	48 83 c0 0c          	add    $0xc,%rax
 153:	c5 fa 10 08          	vmovss (%rax),%xmm1
 157:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 15b:	48 83 c0 0c          	add    $0xc,%rax
 15f:	c5 fa 10 00          	vmovss (%rax),%xmm0
 163:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 167:	48 83 c0 0c          	add    $0xc,%rax
 16b:	c5 fa 10 10          	vmovss (%rax),%xmm2
 16f:	c5 fa 5e c2          	vdivss %xmm2,%xmm0,%xmm0
 173:	c5 f2 58 c0          	vaddss %xmm0,%xmm1,%xmm0
 177:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 17b:	48 83 c0 0c          	add    $0xc,%rax
 17f:	c5 fa 10 0d 00 00 00 	vmovss 0x0(%rip),%xmm1        # 187 <_Z5sqrt2ILm2EEvPfS0_+0x187>
 186:	00 
 187:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
 18b:	c5 fa 11 00          	vmovss %xmm0,(%rax)
  for (int i = 0; i < LOOPS; i++)
 18f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 193:	e9 e8 fe ff ff       	jmpq   80 <_Z5sqrt2ILm2EEvPfS0_+0x80>
  }
}
 198:	90                   	nop
 199:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 19d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 1a4:	00 00 
 1a6:	74 05                	je     1ad <_Z5sqrt2ILm2EEvPfS0_+0x1ad>
 1a8:	e8 00 00 00 00       	callq  1ad <_Z5sqrt2ILm2EEvPfS0_+0x1ad>
 1ad:	c9                   	leaveq 
 1ae:	c3                   	retq   

Disassembly of section .text._Z5sqrt3ILm2EEvPfS0_:

0000000000000000 <_Z5sqrt3ILm2EEvPfS0_>:
  }
}

// wrapper für v4sf_sqrt
template <size_t LOOPS = 2>
void sqrt3(float *__restrict__ a, float *__restrict__ root)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
   8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
{
  v4sf *as = reinterpret_cast<v4sf *>(a);
  10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  14:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  v4sf_sqrt<LOOPS>(as, reinterpret_cast<v4sf *>(root));
  18:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  20:	48 89 d6             	mov    %rdx,%rsi
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_Z5sqrt3ILm2EEvPfS0_+0x2b>
}
  2b:	90                   	nop
  2c:	c9                   	leaveq 
  2d:	c3                   	retq   

Disassembly of section .text._ZNSt8__detail8_AdaptorISt13random_devicedEC2ERS1_:

0000000000000000 <_ZNSt8__detail8_AdaptorISt13random_devicedEC1ERS1_>:
	_Adaptor(_Engine& __g)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _M_g(__g) { }
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  14:	48 89 10             	mov    %rdx,(%rax)
  17:	90                   	nop
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

Disassembly of section .text._ZNSt8__detail8_AdaptorISt13random_devicedEclEv:

0000000000000000 <_ZNSt8__detail8_AdaptorISt13random_devicedEclEv>:
	operator()()
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	                            _Engine>(_M_g);
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 8b 00             	mov    (%rax),%rax
  13:	48 89 c7             	mov    %rax,%rdi
  16:	e8 00 00 00 00       	callq  1b <_ZNSt8__detail8_AdaptorISt13random_devicedEclEv+0x1b>
  1b:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  20:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  24:	c5 fb 10 45 f0       	vmovsd -0x10(%rbp),%xmm0
	}
  29:	c9                   	leaveq 
  2a:	c3                   	retq   

Disassembly of section .text._ZNKSt25uniform_real_distributionIdE10param_type1bEv:

0000000000000000 <_ZNKSt25uniform_real_distributionIdE10param_type1bEv>:
	b() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return _M_b; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	c5 fb 10 40 08       	vmovsd 0x8(%rax),%xmm0
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   

Disassembly of section .text._ZNKSt25uniform_real_distributionIdE10param_type1aEv:

0000000000000000 <_ZNKSt25uniform_real_distributionIdE10param_type1aEv>:
	a() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return _M_a; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	c5 fb 10 00          	vmovsd (%rax),%xmm0
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

Disassembly of section .text._ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:

0000000000000000 <_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>:
	  : __d(__t.time_since_epoch())
	  { }

	// observer
	constexpr duration
	time_since_epoch() const
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	{ return __d; }
   8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   c:	48 8b 00             	mov    (%rax),%rax
   f:	5d                   	pop    %rbp
  10:	c3                   	retq   

Disassembly of section .text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:

0000000000000000 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
      operator-(const duration<_Rep1, _Period1>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 48          	sub    $0x48,%rsp
   9:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
   d:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  18:	00 00 
  1a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1e:	31 c0                	xor    %eax,%eax
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
  20:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  24:	48 8b 00             	mov    (%rax),%rax
  27:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  2b:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  2f:	48 89 c7             	mov    %rax,%rdi
  32:	e8 00 00 00 00       	callq  37 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x37>
  37:	48 89 c3             	mov    %rax,%rbx
  3a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  3e:	48 8b 00             	mov    (%rax),%rax
  41:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  45:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  49:	48 89 c7             	mov    %rax,%rdi
  4c:	e8 00 00 00 00       	callq  51 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x51>
  51:	48 29 c3             	sub    %rax,%rbx
  54:	48 89 d8             	mov    %rbx,%rax
  57:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  5b:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  5f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  63:	48 89 d6             	mov    %rdx,%rsi
  66:	48 89 c7             	mov    %rax,%rdi
  69:	e8 00 00 00 00       	callq  6e <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x6e>
  6e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  72:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  76:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  7d:	00 00 
  7f:	74 05                	je     86 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x86>
  81:	e8 00 00 00 00       	callq  86 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x86>
  86:	48 83 c4 48          	add    $0x48,%rsp
  8a:	5b                   	pop    %rbx
  8b:	5d                   	pop    %rbp
  8c:	c3                   	retq   

Disassembly of section .text._ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:

0000000000000000 <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
	return __time_point(__lhs.time_since_epoch() -__rhs);
      }

    template<typename _Clock, typename _Dur1, typename _Dur2>
      constexpr typename common_type<_Dur1, _Dur2>::type
      operator-(const time_point<_Clock, _Dur1>& __lhs,
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
		const time_point<_Clock, _Dur2>& __rhs)
      { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
  1f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  23:	48 89 c7             	mov    %rax,%rdi
  26:	e8 00 00 00 00       	callq  2b <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x2b>
  2b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  2f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  33:	48 89 c7             	mov    %rax,%rdi
  36:	e8 00 00 00 00       	callq  3b <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x3b>
  3b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  3f:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  43:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  47:	48 89 d6             	mov    %rdx,%rsi
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	e8 00 00 00 00       	callq  52 <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x52>
  52:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  56:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  5d:	00 00 
  5f:	74 05                	je     66 <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x66>
  61:	e8 00 00 00 00       	callq  66 <_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x66>
  66:	c9                   	leaveq 
  67:	c3                   	retq   

Disassembly of section .text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE:

0000000000000000 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE>:
	  __cast(const duration<_Rep, _Period>& __d)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 30          	sub    $0x30,%rsp
   8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
	    return _ToDur(static_cast<__to_rep>(__d.count()));
  1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  1f:	48 89 c7             	mov    %rax,%rdi
  22:	e8 00 00 00 00       	callq  27 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE+0x27>
  27:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2b:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  2f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  33:	48 89 d6             	mov    %rdx,%rsi
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	callq  3e <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE+0x3e>
  3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
	  }
  42:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  46:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4d:	00 00 
  4f:	74 05                	je     56 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE+0x56>
  51:	e8 00 00 00 00       	callq  56 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE+0x56>
  56:	c9                   	leaveq 
  57:	c3                   	retq   

Disassembly of section .text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE:

0000000000000000 <_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE>:
      duration_cast(const duration<_Rep, _Period>& __d)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __dc::__cast(__d);
   c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  10:	48 89 c7             	mov    %rax,%rdi
  13:	e8 00 00 00 00       	callq  18 <_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE+0x18>
      }
  18:	c9                   	leaveq 
  19:	c3                   	retq   

Disassembly of section .text._Z9v4sf_sqrtILm2EEvPDv4_fS1_:

0000000000000000 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_>:
void v4sf_sqrt(v4sf *__restrict__ a, v4sf *__restrict__ root)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 40          	sub    $0x40,%rsp
   8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
   c:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
  float *a_arr = (float *)a;
  1f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  23:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  float *root_arr = (float *)root;
  27:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  2b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  for (int i = 0; i < 4; i++)
  2f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  36:	83 7d e0 03          	cmpl   $0x3,-0x20(%rbp)
  3a:	7f 4d                	jg     89 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0x89>
    initial = *reinterpret_cast<int *>(a_arr + i);
  3c:	8b 45 e0             	mov    -0x20(%rbp),%eax
  3f:	48 98                	cltq   
  41:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  48:	00 
  49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4d:	48 01 d0             	add    %rdx,%rax
  50:	8b 00                	mov    (%rax),%eax
  52:	89 45 dc             	mov    %eax,-0x24(%rbp)
    initial = (1 << 29) + (initial >> 1) - (1 << 22) - 0x4C000;
  55:	8b 45 dc             	mov    -0x24(%rbp),%eax
  58:	d1 f8                	sar    %eax
  5a:	05 00 40 bb 1f       	add    $0x1fbb4000,%eax
  5f:	89 45 dc             	mov    %eax,-0x24(%rbp)
    root_arr[i] = *reinterpret_cast<float *>(&initial);
  62:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
  66:	8b 55 e0             	mov    -0x20(%rbp),%edx
  69:	48 63 d2             	movslq %edx,%rdx
  6c:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
  73:	00 
  74:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  78:	48 01 ca             	add    %rcx,%rdx
  7b:	c5 fa 10 00          	vmovss (%rax),%xmm0
  7f:	c5 fa 11 02          	vmovss %xmm0,(%rdx)
  for (int i = 0; i < 4; i++)
  83:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
  87:	eb ad                	jmp    36 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0x36>
  for (int i = 0; i < LOOPS; i++)
  89:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  90:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  93:	48 98                	cltq   
  95:	48 83 f8 01          	cmp    $0x1,%rax
  99:	77 3a                	ja     d5 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0xd5>
    *root = 0.5 * (*root + (*a / *root));
  9b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  9f:	c5 f8 28 08          	vmovaps (%rax),%xmm1
  a3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  a7:	c5 f8 28 00          	vmovaps (%rax),%xmm0
  ab:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  af:	c5 f8 28 10          	vmovaps (%rax),%xmm2
  b3:	c5 f8 5e c2          	vdivps %xmm2,%xmm0,%xmm0
  b7:	c5 f0 58 c8          	vaddps %xmm0,%xmm1,%xmm1
  bb:	c5 f8 28 05 00 00 00 	vmovaps 0x0(%rip),%xmm0        # c3 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0xc3>
  c2:	00 
  c3:	c5 f0 59 c0          	vmulps %xmm0,%xmm1,%xmm0
  c7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  cb:	c5 f8 29 00          	vmovaps %xmm0,(%rax)
  for (int i = 0; i < LOOPS; i++)
  cf:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  d3:	eb bb                	jmp    90 <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0x90>
}
  d5:	90                   	nop
  d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  da:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  e1:	00 00 
  e3:	74 05                	je     ea <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0xea>
  e5:	e8 00 00 00 00       	callq  ea <_Z9v4sf_sqrtILm2EEvPDv4_fS1_+0xea>
  ea:	c9                   	leaveq 
  eb:	c3                   	retq   

Disassembly of section .text._ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_:

0000000000000000 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_>:
    }

  template<typename _RealType, size_t __bits,
	   typename _UniformRandomNumberGenerator>
    _RealType
    generate_canonical(_UniformRandomNumberGenerator& __urng)
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	53                   	push   %rbx
   5:	48 83 ec 78          	sub    $0x78,%rsp
   9:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    {
      static_assert(std::is_floating_point<_RealType>::value,
		    "template argument must be a floating point type");

      const size_t __b
   d:	48 c7 45 c8 35 00 00 	movq   $0x35,-0x38(%rbp)
  14:	00 
	= std::min(static_cast<size_t>(std::numeric_limits<_RealType>::digits),
                   __bits);
      const long double __r = static_cast<long double>(__urng.max())
  15:	db 2d 00 00 00 00    	fldt   0x0(%rip)        # 1b <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x1b>
  1b:	db 7d e0             	fstpt  -0x20(%rbp)
			    - static_cast<long double>(__urng.min()) + 1.0L;
      const size_t __log2r = std::log(__r) / std::log(2.0L);
  1e:	48 c7 45 d0 20 00 00 	movq   $0x20,-0x30(%rbp)
  25:	00 
      const size_t __m = std::max<size_t>(1UL,
  26:	48 c7 45 d8 02 00 00 	movq   $0x2,-0x28(%rbp)
  2d:	00 
					  (__b + __log2r - 1UL) / __log2r);
      _RealType __ret;
      _RealType __sum = _RealType(0);
  2e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
  32:	c5 fb 11 45 b0       	vmovsd %xmm0,-0x50(%rbp)
      _RealType __tmp = _RealType(1);
  37:	c5 fb 10 05 00 00 00 	vmovsd 0x0(%rip),%xmm0        # 3f <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x3f>
  3e:	00 
  3f:	c5 fb 11 45 b8       	vmovsd %xmm0,-0x48(%rbp)
      for (size_t __k = __m; __k != 0; --__k)
  44:	48 c7 45 c0 02 00 00 	movq   $0x2,-0x40(%rbp)
  4b:	00 
  4c:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
  51:	74 62                	je     b5 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0xb5>
	{
	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
  53:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  57:	48 89 c7             	mov    %rax,%rdi
  5a:	e8 00 00 00 00       	callq  5f <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x5f>
  5f:	89 c3                	mov    %eax,%ebx
  61:	e8 00 00 00 00       	callq  66 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x66>
  66:	29 c3                	sub    %eax,%ebx
  68:	89 d8                	mov    %ebx,%eax
  6a:	89 c0                	mov    %eax,%eax
  6c:	48 85 c0             	test   %rax,%rax
  6f:	78 07                	js     78 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x78>
  71:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  76:	eb 15                	jmp    8d <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x8d>
  78:	48 89 c2             	mov    %rax,%rdx
  7b:	48 d1 ea             	shr    %rdx
  7e:	83 e0 01             	and    $0x1,%eax
  81:	48 09 c2             	or     %rax,%rdx
  84:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  89:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  8d:	c5 fb 59 45 b8       	vmulsd -0x48(%rbp),%xmm0,%xmm0
  92:	c5 fb 10 4d b0       	vmovsd -0x50(%rbp),%xmm1
  97:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  9b:	c5 fb 11 45 b0       	vmovsd %xmm0,-0x50(%rbp)
	  __tmp *= __r;
  a0:	dd 45 b8             	fldl   -0x48(%rbp)
  a3:	db 2d 00 00 00 00    	fldt   0x0(%rip)        # a9 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0xa9>
  a9:	de c9                	fmulp  %st,%st(1)
  ab:	dd 5d b8             	fstpl  -0x48(%rbp)
      for (size_t __k = __m; __k != 0; --__k)
  ae:	48 83 6d c0 01       	subq   $0x1,-0x40(%rbp)
  b3:	eb 97                	jmp    4c <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x4c>
	}
      __ret = __sum / __tmp;
  b5:	c5 fb 10 45 b0       	vmovsd -0x50(%rbp),%xmm0
  ba:	c5 fb 5e 45 b8       	vdivsd -0x48(%rbp),%xmm0,%xmm0
  bf:	c5 fb 11 45 a8       	vmovsd %xmm0,-0x58(%rbp)
      if (__builtin_expect(__ret >= _RealType(1), 0))
  c4:	c5 fb 10 45 a8       	vmovsd -0x58(%rbp),%xmm0
  c9:	c5 fb 10 0d 00 00 00 	vmovsd 0x0(%rip),%xmm1        # d1 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0xd1>
  d0:	00 
  d1:	c5 f9 2e c1          	vucomisd %xmm1,%xmm0
  d5:	0f 93 c0             	setae  %al
  d8:	0f b6 c0             	movzbl %al,%eax
  db:	48 85 c0             	test   %rax,%rax
  de:	74 22                	je     102 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0x102>
	{
#if _GLIBCXX_USE_C99_MATH_TR1
	  __ret = std::nextafter(_RealType(1), _RealType(0));
  e0:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # e7 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0xe7>
  e7:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  eb:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  ef:	c5 fb 10 45 88       	vmovsd -0x78(%rbp),%xmm0
  f4:	e8 00 00 00 00       	callq  f9 <_ZSt18generate_canonicalIdLm53ESt13random_deviceET_RT1_+0xf9>
  f9:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  fe:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
#else
	  __ret = _RealType(1)
	    - std::numeric_limits<_RealType>::epsilon() / _RealType(2);
#endif
	}
      return __ret;
 102:	c5 fb 10 45 a8       	vmovsd -0x58(%rbp),%xmm0
    }
 107:	48 83 c4 78          	add    $0x78,%rsp
 10b:	5b                   	pop    %rbx
 10c:	5d                   	pop    %rbp
 10d:	c3                   	retq   
