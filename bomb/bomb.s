0000000000400da0 <main>:
  400da0:	53                   	push   %rbx
  400da1:	83 ff 01             	cmp    $0x1,%edi
  400da4:	75 10                	jne    400db6 <main+0x16>
  400da6:	48 8b 05 9b 29 20 00 	mov    0x20299b(%rip),%rax        # 603748 <stdin@GLIBC_2.2.5>
  400dad:	48 89 05 b4 29 20 00 	mov    %rax,0x2029b4(%rip)        # 603768 <infile>
  400db4:	eb 63                	jmp    400e19 <main+0x79>
  400db6:	48 89 f3             	mov    %rsi,%rbx
  400db9:	83 ff 02             	cmp    $0x2,%edi
  400dbc:	75 3a                	jne    400df8 <main+0x58>
  400dbe:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400dc2:	be b4 22 40 00       	mov    $0x4022b4,%esi
  400dc7:	e8 44 fe ff ff       	call   400c10 <fopen@plt>
  400dcc:	48 89 05 95 29 20 00 	mov    %rax,0x202995(%rip)        # 603768 <infile>
  400dd3:	48 85 c0             	test   %rax,%rax
  400dd6:	75 41                	jne    400e19 <main+0x79>
  400dd8:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400ddc:	48 8b 13             	mov    (%rbx),%rdx
  400ddf:	be b6 22 40 00       	mov    $0x4022b6,%esi
  400de4:	bf 01 00 00 00       	mov    $0x1,%edi
  400de9:	e8 12 fe ff ff       	call   400c00 <__printf_chk@plt>
  400dee:	bf 08 00 00 00       	mov    $0x8,%edi
  400df3:	e8 28 fe ff ff       	call   400c20 <exit@plt>
  400df8:	48 8b 16             	mov    (%rsi),%rdx
  400dfb:	be d3 22 40 00       	mov    $0x4022d3,%esi
  400e00:	bf 01 00 00 00       	mov    $0x1,%edi
  400e05:	b8 00 00 00 00       	mov    $0x0,%eax
  400e0a:	e8 f1 fd ff ff       	call   400c00 <__printf_chk@plt>
  400e0f:	bf 08 00 00 00       	mov    $0x8,%edi
  400e14:	e8 07 fe ff ff       	call   400c20 <exit@plt>
  400e19:	e8 84 05 00 00       	call   4013a2 <initialize_bomb>
  400e1e:	bf 38 23 40 00       	mov    $0x402338,%edi
  400e23:	e8 e8 fc ff ff       	call   400b10 <puts@plt>
  400e28:	bf 78 23 40 00       	mov    $0x402378,%edi
  400e2d:	e8 de fc ff ff       	call   400b10 <puts@plt>
  400e32:	e8 67 06 00 00       	call   40149e <read_line>
  400e37:	48 89 c7             	mov    %rax,%rdi
  400e3a:	e8 a1 00 00 00       	call   400ee0 <phase_1>
  400e3f:	e8 80 07 00 00       	call   4015c4 <phase_defused>
  400e44:	bf a8 23 40 00       	mov    $0x4023a8,%edi
  400e49:	e8 c2 fc ff ff       	call   400b10 <puts@plt>
  400e4e:	e8 4b 06 00 00       	call   40149e <read_line>
  400e53:	48 89 c7             	mov    %rax,%rdi
  400e56:	e8 a1 00 00 00       	call   400efc <phase_2>
  400e5b:	e8 64 07 00 00       	call   4015c4 <phase_defused>
  400e60:	bf ed 22 40 00       	mov    $0x4022ed,%edi
  400e65:	e8 a6 fc ff ff       	call   400b10 <puts@plt>
  400e6a:	e8 2f 06 00 00       	call   40149e <read_line>
  400e6f:	48 89 c7             	mov    %rax,%rdi
  400e72:	e8 cc 00 00 00       	call   400f43 <phase_3>
  400e77:	e8 48 07 00 00       	call   4015c4 <phase_defused>
  400e7c:	bf 0b 23 40 00       	mov    $0x40230b,%edi
  400e81:	e8 8a fc ff ff       	call   400b10 <puts@plt>
  400e86:	e8 13 06 00 00       	call   40149e <read_line>
  400e8b:	48 89 c7             	mov    %rax,%rdi
  400e8e:	e8 79 01 00 00       	call   40100c <phase_4>
  400e93:	e8 2c 07 00 00       	call   4015c4 <phase_defused>
  400e98:	bf d8 23 40 00       	mov    $0x4023d8,%edi
  400e9d:	e8 6e fc ff ff       	call   400b10 <puts@plt>
  400ea2:	e8 f7 05 00 00       	call   40149e <read_line>
  400ea7:	48 89 c7             	mov    %rax,%rdi
  400eaa:	e8 b3 01 00 00       	call   401062 <phase_5>
  400eaf:	e8 10 07 00 00       	call   4015c4 <phase_defused>
  400eb4:	bf 1a 23 40 00       	mov    $0x40231a,%edi
  400eb9:	e8 52 fc ff ff       	call   400b10 <puts@plt>
  400ebe:	e8 db 05 00 00       	call   40149e <read_line>
  400ec3:	48 89 c7             	mov    %rax,%rdi
  400ec6:	e8 29 02 00 00       	call   4010f4 <phase_6>
  400ecb:	e8 f4 06 00 00       	call   4015c4 <phase_defused>
  400ed0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed5:	5b                   	pop    %rbx
  400ed6:	c3                   	ret    
  400ed7:	90                   	nop
  400ed8:	90                   	nop
  400ed9:	90                   	nop
  400eda:	90                   	nop
  400edb:	90                   	nop
  400edc:	90                   	nop
  400edd:	90                   	nop
  400ede:	90                   	nop
  400edf:	90                   	nop

0000000000400ee0 <phase_1>:
  400ee0:	48 83 ec 08          	sub    $0x8,%rsp
  400ee4:	be 00 24 40 00       	mov    $0x402400,%esi              // esi = 0x402400
  400ee9:	e8 4a 04 00 00       	call   401338 <strings_not_equal>  // 判断两个字符串 是否相等
  400eee:	85 c0                	test   %eax,%eax                   // 检查 eax == 1
  400ef0:	74 05                	je     400ef7 <phase_1+0x17>
  400ef2:	e8 43 05 00 00       	call   40143a <explode_bomb>
  400ef7:	48 83 c4 08          	add    $0x8,%rsp
  400efb:	c3                   	ret    

0000000000400efc <phase_2>:
  400efc:	55                   	push   %rbp
  400efd:	53                   	push   %rbx
  400efe:	48 83 ec 28          	sub    $0x28,%rsp
  400f02:	48 89 e6             	mov    %rsp,%rsi
  400f05:	e8 52 05 00 00       	call   40145c <read_six_numbers>
  400f0a:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  400f0e:	74 20                	je     400f30 <phase_2+0x34>
  400f10:	e8 25 05 00 00       	call   40143a <explode_bomb>
  400f15:	eb 19                	jmp    400f30 <phase_2+0x34>
  400f17:	8b 43 fc             	mov    -0x4(%rbx),%eax          // 将 (rbx-4) 装入eax(4字节, int)
  400f1a:	01 c0                	add    %eax,%eax                // eax *= 2
  400f1c:	39 03                	cmp    %eax,(%rbx)              // num[i] * 2 == num[i + 1]
  400f1e:	74 05                	je     400f25 <phase_2+0x29>
  400f20:	e8 15 05 00 00       	call   40143a <explode_bomb>
  400f25:	48 83 c3 04          	add    $0x4,%rbx
  400f29:	48 39 eb             	cmp    %rbp,%rbx
  400f2c:	75 e9                	jne    400f17 <phase_2+0x1b>
  400f2e:	eb 0c                	jmp    400f3c <phase_2+0x40>
  400f30:	48 8d 5c 24 04       	lea    0x4(%rsp),%rbx           // rbx 指向 第一个数
  400f35:	48 8d 6c 24 18       	lea    0x18(%rsp),%rbp          // rbp 指向 循环结束
  400f3a:	eb db                	jmp    400f17 <phase_2+0x1b>
  400f3c:	48 83 c4 28          	add    $0x28,%rsp
  400f40:	5b                   	pop    %rbx
  400f41:	5d                   	pop    %rbp
  400f42:	c3                   	ret    

0000000000400f43 <phase_3>:
  400f43:	48 83 ec 18          	sub    $0x18,%rsp
  400f47:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  400f4c:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  400f51:	be cf 25 40 00       	mov    $0x4025cf,%esi               // $0x4025cf => %d %d
  400f56:	b8 00 00 00 00       	mov    $0x0,%eax
  400f5b:	e8 90 fc ff ff       	call   400bf0 <__isoc99_sscanf@plt>
  400f60:	83 f8 01             	cmp    $0x1,%eax                    
  400f63:	7f 05                	jg     400f6a <phase_3+0x27>        // 读取2个数, 存在 0x8(%rsp)、 0xc(%rsp)
  400f65:	e8 d0 04 00 00       	call   40143a <explode_bomb>
  400f6a:	83 7c 24 08 07       	cmpl   $0x7,0x8(%rsp)
  400f6f:	77 3c                	ja     400fad <phase_3+0x6a>        // x - 7 > 0 => explode
  400f71:	8b 44 24 08          	mov    0x8(%rsp),%eax               // eax = (rsp + 8), print *(int*) ($rsp +8)
  400f75:	ff 24 c5 70 24 40 00 	jmp    *0x402470(,%rax,8)           // Mem[0x402470] = 0x00400f7c print /x *(0x402470)
                                                                    // Mem[0x402478] = 0x00400fb9
  400f7c:	b8 cf 00 00 00       	mov    $0xcf,%eax                   // eax = 207
  400f81:	eb 3b                	jmp    400fbe <phase_3+0x7b>
  400f83:	b8 c3 02 00 00       	mov    $0x2c3,%eax                  
  400f88:	eb 34                	jmp    400fbe <phase_3+0x7b>
  400f8a:	b8 00 01 00 00       	mov    $0x100,%eax                   
  400f8f:	eb 2d                	jmp    400fbe <phase_3+0x7b>
  400f91:	b8 85 01 00 00       	mov    $0x185,%eax                   
  400f96:	eb 26                	jmp    400fbe <phase_3+0x7b>
  400f98:	b8 ce 00 00 00       	mov    $0xce,%eax                   
  400f9d:	eb 1f                	jmp    400fbe <phase_3+0x7b>
  400f9f:	b8 aa 02 00 00       	mov    $0x2aa,%eax                   
  400fa4:	eb 18                	jmp    400fbe <phase_3+0x7b>
  400fa6:	b8 47 01 00 00       	mov    $0x147,%eax                   
  400fab:	eb 11                	jmp    400fbe <phase_3+0x7b>
  400fad:	e8 88 04 00 00       	call   40143a <explode_bomb>
  400fb2:	b8 00 00 00 00       	mov    $0x0,%eax
  400fb7:	eb 05                	jmp    400fbe <phase_3+0x7b>
  400fb9:	b8 37 01 00 00       	mov    $0x137,%eax                // eax = 311

  400fbe:	3b 44 24 0c          	cmp    0xc(%rsp),%eax
  400fc2:	74 05                	je     400fc9 <phase_3+0x86>      // 判断第2个数 和 $eax 是否相等
  400fc4:	e8 71 04 00 00       	call   40143a <explode_bomb>
  400fc9:	48 83 c4 18          	add    $0x18,%rsp
  400fcd:	c3                   	ret    

0000000000400fce <func4>:
  400fce:	48 83 ec 08          	sub    $0x8,%rsp                  
  400fd2:	89 d0                	mov    %edx,%eax                  // eax = edx = 14
  400fd4:	29 f0                	sub    %esi,%eax                  // eax = eax - esi = 14 - 0 = 14
  400fd6:	89 c1                	mov    %eax,%ecx                  // ecx = eax = 14
  400fd8:	c1 e9 1f             	shr    $0x1f,%ecx                 // ecx = ecx >> 31 = 0
  400fdb:	01 c8                	add    %ecx,%eax                  // eax = eax + ecx = 14 + 0 = 14
  400fdd:	d1 f8                	sar    %eax                       // eax = eax / 2 = 7
  400fdf:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx         // ecx = rax + rsi = 7 + 0 = 7
  400fe2:	39 f9                	cmp    %edi,%ecx                  
  400fe4:	7e 0c                	jle    400ff2 <func4+0x24>        // 7 - x_1 <= 0
  400fe6:	8d 51 ff             	lea    -0x1(%rcx),%edx            
  400fe9:	e8 e0 ff ff ff       	call   400fce <func4>
  400fee:	01 c0                	add    %eax,%eax                  
  400ff0:	eb 15                	jmp    401007 <func4+0x39>
  400ff2:	b8 00 00 00 00       	mov    $0x0,%eax                  // 需要返回 eax = 0
  400ff7:	39 f9                	cmp    %edi,%ecx
  400ff9:	7d 0c                	jge    401007 <func4+0x39>        // 检查 7 - x_1 >= 0
  400ffb:	8d 71 01             	lea    0x1(%rcx),%esi             
  400ffe:	e8 cb ff ff ff       	call   400fce <func4>
  401003:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax      
  401007:	48 83 c4 08          	add    $0x8,%rsp
  40100b:	c3                   	ret    

000000000040100c <phase_4>:
  40100c:	48 83 ec 18          	sub    $0x18,%rsp
  401010:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401015:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40101a:	be cf 25 40 00       	mov    $0x4025cf,%esi              // %d %d, 存在M[($rsp + 8)]、M[($rsp + c)]
  40101f:	b8 00 00 00 00       	mov    $0x0,%eax
  401024:	e8 c7 fb ff ff       	call   400bf0 <__isoc99_sscanf@plt>
  401029:	83 f8 02             	cmp    $0x2,%eax                     // 两个数
  40102c:	75 07                	jne    401035 <phase_4+0x29>
  40102e:	83 7c 24 08 0e       	cmpl   $0xe,0x8(%rsp)
  401033:	76 05                	jbe    40103a <phase_4+0x2e>        // Mem[r[rsp] + 8] - 14 <= 0
  401035:	e8 00 04 00 00       	call   40143a <explode_bomb>

  40103a:	ba 0e 00 00 00       	mov    $0xe,%edx                    // edx = 14
  40103f:	be 00 00 00 00       	mov    $0x0,%esi                    // esi = 0
  401044:	8b 7c 24 08          	mov    0x8(%rsp),%edi               // edi = x_1
  401048:	e8 81 ff ff ff       	call   400fce <func4>
  40104d:	85 c0                	test   %eax,%eax
  40104f:	75 07                	jne    401058 <phase_4+0x4c>        // eax == 0
  401051:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401056:	74 05                	je     40105d <phase_4+0x51>        // x_2  == 0
  401058:	e8 dd 03 00 00       	call   40143a <explode_bomb>
  40105d:	48 83 c4 18          	add    $0x18,%rsp
  401061:	c3                   	ret    

0000000000401062 <phase_5>:
  401062:	53                   	push   %rbx
  401063:	48 83 ec 20          	sub    $0x20,%rsp
  401067:	48 89 fb             	mov    %rdi,%rbx
  40106a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax                // stack-guard value 栈检查
  401071:	00 00 
  401073:	48 89 44 24 18       	mov    %rax,0x18(%rsp)              // M[rsp + 18] = rax
  401078:	31 c0                	xor    %eax,%eax                    // eax = 0
  40107a:	e8 9c 02 00 00       	call   40131b <string_length>       
  40107f:	83 f8 06             	cmp    $0x6,%eax                    // 字符串长度 == 6
  401082:	74 4e                	je     4010d2 <phase_5+0x70>
  401084:	e8 b1 03 00 00       	call   40143a <explode_bomb>
  401089:	eb 47                	jmp    4010d2 <phase_5+0x70>

  40108b:	0f b6 0c 03          	movzbl (%rbx,%rax,1),%ecx           // ecx = M[rbx + rax] = M[rbx] = s[i]
  40108f:	88 0c 24             	mov    %cl,(%rsp)                   // M[rsp] = cl = s[i]
  401092:	48 8b 14 24          	mov    (%rsp),%rdx                  // rdx = s[i]
  401096:	83 e2 0f             	and    $0xf,%edx                    // edx = edx & 15
  401099:	0f b6 92 b0 24 40 00 	movzbl 0x4024b0(%rdx),%edx          // edx = M[4024b0 + rdx], 
                                                                    // M[4024b0] = "maduiersnfotvbyl"
                                                                    // 即: t[i] = M[4024b0 + s[i] & 15]
  4010a0:	88 54 04 10          	mov    %dl,0x10(%rsp,%rax,1)        // M[rsp + i] = dl
  4010a4:	48 83 c0 01          	add    $0x1,%rax                    // rax++
  4010a8:	48 83 f8 06          	cmp    $0x6,%rax                    // rax < 6
  4010ac:	75 dd                	jne    40108b <phase_5+0x29>        // s作为索引，构建字符串t

  4010ae:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)              // M[rsp + 16] = 0
  4010b3:	be 5e 24 40 00       	mov    $0x40245e,%esi               // esi = 40245e, c = "flyers"
  4010b8:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi              
  4010bd:	e8 76 02 00 00       	call   401338 <strings_not_equal>   // 比较 c 和 t
  4010c2:	85 c0                	test   %eax,%eax
  4010c4:	74 13                	je     4010d9 <phase_5+0x77>
  4010c6:	e8 6f 03 00 00       	call   40143a <explode_bomb>
  4010cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)             // rax = rax + 1;
  4010d0:	eb 07                	jmp    4010d9 <phase_5+0x77>

  4010d2:	b8 00 00 00 00       	mov    $0x0,%eax                    // eax = 0
  4010d7:	eb b2                	jmp    40108b <phase_5+0x29>
  4010d9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax              // rax = rsp + 18
  4010de:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax                // 检查栈是否溢出
  4010e5:	00 00 
  4010e7:	74 05                	je     4010ee <phase_5+0x8c>
  4010e9:	e8 42 fa ff ff       	call   400b30 <__stack_chk_fail@plt>
  4010ee:	48 83 c4 20          	add    $0x20,%rsp
  4010f2:	5b                   	pop    %rbx
  4010f3:	c3                   	ret    

00000000004010f4 <phase_6>:
  4010f4:	41 56                	push   %r14
  4010f6:	41 55                	push   %r13
  4010f8:	41 54                	push   %r12
  4010fa:	55                   	push   %rbp
  4010fb:	53                   	push   %rbx
  4010fc:	48 83 ec 50          	sub    $0x50,%rsp
  401100:	49 89 e5             	mov    %rsp,%r13                    // r13 = rsp                     
  401103:	48 89 e6             	mov    %rsp,%rsi                    // rsi = rsp
  401106:	e8 51 03 00 00       	call   40145c <read_six_numbers>    // 6个数字, M[rsp] ~ M[rsp + 20]
  40110b:	49 89 e6             	mov    %rsp,%r14                    // r14 = rsp
  40110e:	41 bc 00 00 00 00    	mov    $0x0,%r12d                   // r12d = 0，初始化r12d

  401114:	4c 89 ed             	mov    %r13,%rbp                    // rbp = r13
  401117:	41 8b 45 00          	mov    0x0(%r13),%eax               // eax = in[0]
  40111b:	83 e8 01             	sub    $0x1,%eax                    // eax = eax - 1
  40111e:	83 f8 05             	cmp    $0x5,%eax                    
  401121:	76 05                	jbe    401128 <phase_6+0x34>        // 判断 eax - 5 <= 0 即 in[0] <= 6
  401123:	e8 12 03 00 00       	call   40143a <explode_bomb>        // eax应该 <= 6，否则引爆
  401128:	41 83 c4 01          	add    $0x1,%r12d                   // r12d = 1
  40112c:	41 83 fc 06          	cmp    $0x6,%r12d
  401130:	74 21                	je     401153 <phase_6+0x5f>        // r12d != 6, 结束循环条件，循环6次
  401132:	44 89 e3             	mov    %r12d,%ebx                   // ebx = i
  401135:	48 63 c3             	movslq %ebx,%rax                    // rax = rbx = i
  401138:	8b 04 84             	mov    (%rsp,%rax,4),%eax           // eax = M[4 * i + rsp] = in[i]
  40113b:	39 45 00             	cmp    %eax,0x0(%rbp)               // in[0] - in[i] 
  40113e:	75 05                	jne    401145 <phase_6+0x51>        // M[rbp] != eax  <=> in[i] != in[0]
  401140:	e8 f5 02 00 00       	call   40143a <explode_bomb>
  401145:	83 c3 01             	add    $0x1,%ebx                    // ebx++
  401148:	83 fb 05             	cmp    $0x5,%ebx                    
  40114b:	7e e8                	jle    401135 <phase_6+0x41>        // ebx - 5 <= 0
  40114d:	49 83 c5 04          	add    $0x4,%r13                    // r13 = rsp + 4
  401151:	eb c1                	jmp    401114 <phase_6+0x20>        
                                                                    // 保证 6 个数 各不相同
  
  401153:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi              // rsi = rsp + 24，in数组的end
  401158:	4c 89 f0             	mov    %r14,%rax                    // rax = r14 = rsp
  40115b:	b9 07 00 00 00       	mov    $0x7,%ecx                    // ecx = 7
  401160:	89 ca                	mov    %ecx,%edx                    // edx = 7
  401162:	2b 10                	sub    (%rax),%edx                  // edx = edx - in[i] = 7 - in[i]
  401164:	89 10                	mov    %edx,(%rax)                  // in[i] = edx
  401166:	48 83 c0 04          	add    $0x4,%rax                    // eax = eax + 4, rax -> in[i + 1]
  40116a:	48 39 f0             	cmp    %rsi,%rax
  40116d:	75 f1                	jne    401160 <phase_6+0x6c>        // in[1] != rsi
                                                                    // t[i] = 7 - in[i]


  40116f:	be 00 00 00 00       	mov    $0x0,%esi                    // esi = 0
  401174:	eb 21                	jmp    401197 <phase_6+0xa3>        
  401176:	48 8b 52 08          	mov    0x8(%rdx),%rdx               // rdx = M[rdx + 8], 递归到下一个节点
  40117a:	83 c0 01             	add    $0x1,%eax                    // eax = eax + 1
  40117d:	39 c8                	cmp    %ecx,%eax                    
  40117f:	75 f5                	jne    401176 <phase_6+0x82>        // eax != ecx
  401181:	eb 05                	jmp    401188 <phase_6+0x94>        // 当前rdx指向的是 第ecx个节点 
  
  401183:	ba d0 32 60 00       	mov    $0x6032d0,%edx               // edx = 0x6032d0, 指向第一个node节点
  401188:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)       // M[rsp + 2 * rsi + 32] = 0x6032d0, 存了一个指针
  40118d:	48 83 c6 04          	add    $0x4,%rsi                    // rsi + 4
  401191:	48 83 fe 18          	cmp    $0x18,%rsi
  401195:	74 14                	je     4011ab <phase_6+0xb7>        // 跳出循环 rsi == 24

  401197:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx           // ecx = M[rsp + i]
  40119a:	83 f9 01             	cmp    $0x1,%ecx                    
  40119d:	7e e4                	jle    401183 <phase_6+0x8f>        // 判断 ecx - 1 <= 0

  40119f:	b8 01 00 00 00       	mov    $0x1,%eax                    // eax = 1
  4011a4:	ba d0 32 60 00       	mov    $0x6032d0,%edx               // edx = 0x6032d0, 指向第一个节点
  4011a9:	eb cb                	jmp    401176 <phase_6+0x82>
                                                                    // 此时 rsp+32 ~ rsp+56 存储了按t[i]为索引的节点

  4011ab:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx              // rbx = M[rsp + 32]，t[i]顺序的第一个节点
  4011b0:	48 8d 44 24 28       	lea    0x28(%rsp),%rax              // rax = rsp + 40, M[rax] = t[i]顺序第二个节点的地址
  4011b5:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi              // rsi = rsp + 80, M[rax] = t[i]顺序尾后节点的地址
  4011ba:	48 89 d9             	mov    %rbx,%rcx                    // rcx = rbx, rcx=t[i]顺序链表的头结点的地址
  4011bd:	48 8b 10             	mov    (%rax),%rdx                  // rdx = M[rax], rdx=t[i]顺序链表的第二个结点的地址
  4011c0:	48 89 51 08          	mov    %rdx,0x8(%rcx)               // M[rcx + 8] = rdx， M[rcx + 8]指向下一个节点
  4011c4:	48 83 c0 08          	add    $0x8,%rax                    // rax = rax + 8
  4011c8:	48 39 f0             	cmp    %rsi,%rax              
  4011cb:	74 05                	je     4011d2 <phase_6+0xde>        // rax == rsi 跳出循环
  4011cd:	48 89 d1             	mov    %rdx,%rcx
  4011d0:	eb eb                	jmp    4011bd <phase_6+0xc9>
                                                                    // 把6个节点按t[i]顺序串成一条链
  4011d2:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  4011d9:	00 

  4011da:	bd 05 00 00 00       	mov    $0x5,%ebp                    // ebp = 5
  4011df:	48 8b 43 08          	mov    0x8(%rbx),%rax               // rax =  M[rbx + 8], M[rax]第2个链表节点
  4011e3:	8b 00                	mov    (%rax),%eax                  // eax = M[rax], 第二个节点的第一个元素
  4011e5:	39 03                	cmp    %eax,(%rbx)                  // M[rbx] = 
  4011e7:	7d 05                	jge    4011ee <phase_6+0xfa>        // 保证 M[rbx] - eax >= 0, 即前一个节点应该比下一个节点大
  4011e9:	e8 4c 02 00 00       	call   40143a <explode_bomb>
  4011ee:	48 8b 5b 08          	mov    0x8(%rbx),%rbx               // rbx = rbx + 8
  4011f2:	83 ed 01             	sub    $0x1,%ebp                    
  4011f5:	75 e8                	jne    4011df <phase_6+0xeb>        // ebp != 1
  4011f7:	48 83 c4 50          	add    $0x50,%rsp
  4011fb:	5b                   	pop    %rbx
  4011fc:	5d                   	pop    %rbp
  4011fd:	41 5c                	pop    %r12
  4011ff:	41 5d                	pop    %r13
  401201:	41 5e                	pop    %r14
  401203:	c3                   	ret    


000000000040131b <string_length>:
  40131b:	80 3f 00             	cmpb   $0x0,(%rdi)
  40131e:	74 12                	je     401332 <string_length+0x17>
  401320:	48 89 fa             	mov    %rdi,%rdx
  401323:	48 83 c2 01          	add    $0x1,%rdx
  401327:	89 d0                	mov    %edx,%eax
  401329:	29 f8                	sub    %edi,%eax
  40132b:	80 3a 00             	cmpb   $0x0,(%rdx)
  40132e:	75 f3                	jne    401323 <string_length+0x8>
  401330:	f3 c3                	repz ret 
  401332:	b8 00 00 00 00       	mov    $0x0,%eax
  401337:	c3                   	ret    

0000000000401338 <strings_not_equal>:
  401338:	41 54                	push   %r12
  40133a:	55                   	push   %rbp
  40133b:	53                   	push   %rbx
  40133c:	48 89 fb             	mov    %rdi,%rbx
  40133f:	48 89 f5             	mov    %rsi,%rbp
  401342:	e8 d4 ff ff ff       	call   40131b <string_length>
  401347:	41 89 c4             	mov    %eax,%r12d
  40134a:	48 89 ef             	mov    %rbp,%rdi
  40134d:	e8 c9 ff ff ff       	call   40131b <string_length>
  401352:	ba 01 00 00 00       	mov    $0x1,%edx
  401357:	41 39 c4             	cmp    %eax,%r12d
  40135a:	75 3f                	jne    40139b <strings_not_equal+0x63>
  40135c:	0f b6 03             	movzbl (%rbx),%eax
  40135f:	84 c0                	test   %al,%al
  401361:	74 25                	je     401388 <strings_not_equal+0x50>
  401363:	3a 45 00             	cmp    0x0(%rbp),%al
  401366:	74 0a                	je     401372 <strings_not_equal+0x3a>
  401368:	eb 25                	jmp    40138f <strings_not_equal+0x57>
  40136a:	3a 45 00             	cmp    0x0(%rbp),%al
  40136d:	0f 1f 00             	nopl   (%rax)
  401370:	75 24                	jne    401396 <strings_not_equal+0x5e>
  401372:	48 83 c3 01          	add    $0x1,%rbx
  401376:	48 83 c5 01          	add    $0x1,%rbp
  40137a:	0f b6 03             	movzbl (%rbx),%eax
  40137d:	84 c0                	test   %al,%al
  40137f:	75 e9                	jne    40136a <strings_not_equal+0x32>
  401381:	ba 00 00 00 00       	mov    $0x0,%edx
  401386:	eb 13                	jmp    40139b <strings_not_equal+0x63>
  401388:	ba 00 00 00 00       	mov    $0x0,%edx
  40138d:	eb 0c                	jmp    40139b <strings_not_equal+0x63>
  40138f:	ba 01 00 00 00       	mov    $0x1,%edx
  401394:	eb 05                	jmp    40139b <strings_not_equal+0x63>
  401396:	ba 01 00 00 00       	mov    $0x1,%edx
  40139b:	89 d0                	mov    %edx,%eax
  40139d:	5b                   	pop    %rbx
  40139e:	5d                   	pop    %rbp
  40139f:	41 5c                	pop    %r12
  4013a1:	c3                   	ret    

000000000040143a <explode_bomb>:
  40143a:	48 83 ec 08          	sub    $0x8,%rsp
  40143e:	bf a3 25 40 00       	mov    $0x4025a3,%edi
  401443:	e8 c8 f6 ff ff       	call   400b10 <puts@plt>
  401448:	bf ac 25 40 00       	mov    $0x4025ac,%edi
  40144d:	e8 be f6 ff ff       	call   400b10 <puts@plt>
  401452:	bf 08 00 00 00       	mov    $0x8,%edi
  401457:	e8 c4 f7 ff ff       	call   400c20 <exit@plt>

000000000040145c <read_six_numbers>:
  40145c:	48 83 ec 18          	sub    $0x18,%rsp
  401460:	48 89 f2             	mov    %rsi,%rdx
  401463:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401467:	48 8d 46 14          	lea    0x14(%rsi),%rax
  40146b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401470:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401474:	48 89 04 24          	mov    %rax,(%rsp)
  401478:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  40147c:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401480:	be c3 25 40 00       	mov    $0x4025c3,%esi
  401485:	b8 00 00 00 00       	mov    $0x0,%eax
  40148a:	e8 61 f7 ff ff       	call   400bf0 <__isoc99_sscanf@plt>
  40148f:	83 f8 05             	cmp    $0x5,%eax
  401492:	7f 05                	jg     401499 <read_six_numbers+0x3d>
  401494:	e8 a1 ff ff ff       	call   40143a <explode_bomb>
  401499:	48 83 c4 18          	add    $0x18,%rsp
  40149d:	c3                   	ret    

