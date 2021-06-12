
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cb0 <_init>:
  400cb0:	48 83 ec 08          	sub    $0x8,%rsp
  400cb4:	48 8b 05 3d 43 20 00 	mov    0x20433d(%rip),%rax        # 604ff8 <__gmon_start__>
  400cbb:	48 85 c0             	test   %rax,%rax
  400cbe:	74 02                	je     400cc2 <_init+0x12>
  400cc0:	ff d0                	callq  *%rax
  400cc2:	48 83 c4 08          	add    $0x8,%rsp
  400cc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400cd0 <.plt>:
  400cd0:	ff 35 32 43 20 00    	pushq  0x204332(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400cd6:	ff 25 34 43 20 00    	jmpq   *0x204334(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ce0 <strcasecmp@plt>:
  400ce0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ce6:	68 00 00 00 00       	pushq  $0x0
  400ceb:	e9 e0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400cf0 <__errno_location@plt>:
  400cf0:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400cf6:	68 01 00 00 00       	pushq  $0x1
  400cfb:	e9 d0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d00 <srandom@plt>:
  400d00:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400d06:	68 02 00 00 00       	pushq  $0x2
  400d0b:	e9 c0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d10 <strncpy@plt>:
  400d10:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605030 <strncpy@GLIBC_2.2.5>
  400d16:	68 03 00 00 00       	pushq  $0x3
  400d1b:	e9 b0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d20 <strncmp@plt>:
  400d20:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400d26:	68 04 00 00 00       	pushq  $0x4
  400d2b:	e9 a0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d30 <strcpy@plt>:
  400d30:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400d36:	68 05 00 00 00       	pushq  $0x5
  400d3b:	e9 90 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d40 <puts@plt>:
  400d40:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400d46:	68 06 00 00 00       	pushq  $0x6
  400d4b:	e9 80 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d50 <write@plt>:
  400d50:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605050 <write@GLIBC_2.2.5>
  400d56:	68 07 00 00 00       	pushq  $0x7
  400d5b:	e9 70 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d60 <mmap@plt>:
  400d60:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400d66:	68 08 00 00 00       	pushq  $0x8
  400d6b:	e9 60 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d70 <memset@plt>:
  400d70:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d76:	68 09 00 00 00       	pushq  $0x9
  400d7b:	e9 50 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d80 <alarm@plt>:
  400d80:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d86:	68 0a 00 00 00       	pushq  $0xa
  400d8b:	e9 40 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d90 <close@plt>:
  400d90:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d96:	68 0b 00 00 00       	pushq  $0xb
  400d9b:	e9 30 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400da0 <read@plt>:
  400da0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400da6:	68 0c 00 00 00       	pushq  $0xc
  400dab:	e9 20 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400db0 <strcmp@plt>:
  400db0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 605080 <strcmp@GLIBC_2.2.5>
  400db6:	68 0d 00 00 00       	pushq  $0xd
  400dbb:	e9 10 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dc0 <signal@plt>:
  400dc0:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400dc6:	68 0e 00 00 00       	pushq  $0xe
  400dcb:	e9 00 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dd0 <gethostbyname@plt>:
  400dd0:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400dd6:	68 0f 00 00 00       	pushq  $0xf
  400ddb:	e9 f0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400de0 <__memmove_chk@plt>:
  400de0:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605098 <__memmove_chk@GLIBC_2.3.4>
  400de6:	68 10 00 00 00       	pushq  $0x10
  400deb:	e9 e0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400df0 <strtol@plt>:
  400df0:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050a0 <strtol@GLIBC_2.2.5>
  400df6:	68 11 00 00 00       	pushq  $0x11
  400dfb:	e9 d0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e00 <memcpy@plt>:
  400e00:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050a8 <memcpy@GLIBC_2.14>
  400e06:	68 12 00 00 00       	pushq  $0x12
  400e0b:	e9 c0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e10 <time@plt>:
  400e10:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050b0 <time@GLIBC_2.2.5>
  400e16:	68 13 00 00 00       	pushq  $0x13
  400e1b:	e9 b0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e20 <random@plt>:
  400e20:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050b8 <random@GLIBC_2.2.5>
  400e26:	68 14 00 00 00       	pushq  $0x14
  400e2b:	e9 a0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e30 <_IO_getc@plt>:
  400e30:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 6050c0 <_IO_getc@GLIBC_2.2.5>
  400e36:	68 15 00 00 00       	pushq  $0x15
  400e3b:	e9 90 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e40 <__isoc99_sscanf@plt>:
  400e40:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 6050c8 <__isoc99_sscanf@GLIBC_2.7>
  400e46:	68 16 00 00 00       	pushq  $0x16
  400e4b:	e9 80 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e50 <munmap@plt>:
  400e50:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 6050d0 <munmap@GLIBC_2.2.5>
  400e56:	68 17 00 00 00       	pushq  $0x17
  400e5b:	e9 70 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e60 <__printf_chk@plt>:
  400e60:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 6050d8 <__printf_chk@GLIBC_2.3.4>
  400e66:	68 18 00 00 00       	pushq  $0x18
  400e6b:	e9 60 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e70 <fopen@plt>:
  400e70:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 6050e0 <fopen@GLIBC_2.2.5>
  400e76:	68 19 00 00 00       	pushq  $0x19
  400e7b:	e9 50 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e80 <getopt@plt>:
  400e80:	ff 25 62 42 20 00    	jmpq   *0x204262(%rip)        # 6050e8 <getopt@GLIBC_2.2.5>
  400e86:	68 1a 00 00 00       	pushq  $0x1a
  400e8b:	e9 40 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e90 <strtoul@plt>:
  400e90:	ff 25 5a 42 20 00    	jmpq   *0x20425a(%rip)        # 6050f0 <strtoul@GLIBC_2.2.5>
  400e96:	68 1b 00 00 00       	pushq  $0x1b
  400e9b:	e9 30 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ea0 <gethostname@plt>:
  400ea0:	ff 25 52 42 20 00    	jmpq   *0x204252(%rip)        # 6050f8 <gethostname@GLIBC_2.2.5>
  400ea6:	68 1c 00 00 00       	pushq  $0x1c
  400eab:	e9 20 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400eb0 <exit@plt>:
  400eb0:	ff 25 4a 42 20 00    	jmpq   *0x20424a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400eb6:	68 1d 00 00 00       	pushq  $0x1d
  400ebb:	e9 10 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ec0 <connect@plt>:
  400ec0:	ff 25 42 42 20 00    	jmpq   *0x204242(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400ec6:	68 1e 00 00 00       	pushq  $0x1e
  400ecb:	e9 00 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ed0 <__fprintf_chk@plt>:
  400ed0:	ff 25 3a 42 20 00    	jmpq   *0x20423a(%rip)        # 605110 <__fprintf_chk@GLIBC_2.3.4>
  400ed6:	68 1f 00 00 00       	pushq  $0x1f
  400edb:	e9 f0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ee0 <__sprintf_chk@plt>:
  400ee0:	ff 25 32 42 20 00    	jmpq   *0x204232(%rip)        # 605118 <__sprintf_chk@GLIBC_2.3.4>
  400ee6:	68 20 00 00 00       	pushq  $0x20
  400eeb:	e9 e0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ef0 <socket@plt>:
  400ef0:	ff 25 2a 42 20 00    	jmpq   *0x20422a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400ef6:	68 21 00 00 00       	pushq  $0x21
  400efb:	e9 d0 fd ff ff       	jmpq   400cd0 <.plt>

Disassembly of section .text:

0000000000400f00 <_start>:
  400f00:	31 ed                	xor    %ebp,%ebp
  400f02:	49 89 d1             	mov    %rdx,%r9
  400f05:	5e                   	pop    %rsi
  400f06:	48 89 e2             	mov    %rsp,%rdx
  400f09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f0d:	50                   	push   %rax
  400f0e:	54                   	push   %rsp
  400f0f:	49 c7 c0 f0 32 40 00 	mov    $0x4032f0,%r8
  400f16:	48 c7 c1 80 32 40 00 	mov    $0x403280,%rcx
  400f1d:	48 c7 c7 0e 12 40 00 	mov    $0x40120e,%rdi
  400f24:	ff 15 c6 40 20 00    	callq  *0x2040c6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400f2a:	f4                   	hlt    
  400f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f30 <_dl_relocate_static_pie>:
  400f30:	f3 c3                	repz retq 
  400f32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f39:	00 00 00 
  400f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f40 <deregister_tm_clones>:
  400f40:	55                   	push   %rbp
  400f41:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f46:	48 3d b0 54 60 00    	cmp    $0x6054b0,%rax
  400f4c:	48 89 e5             	mov    %rsp,%rbp
  400f4f:	74 17                	je     400f68 <deregister_tm_clones+0x28>
  400f51:	b8 00 00 00 00       	mov    $0x0,%eax
  400f56:	48 85 c0             	test   %rax,%rax
  400f59:	74 0d                	je     400f68 <deregister_tm_clones+0x28>
  400f5b:	5d                   	pop    %rbp
  400f5c:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f61:	ff e0                	jmpq   *%rax
  400f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f68:	5d                   	pop    %rbp
  400f69:	c3                   	retq   
  400f6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f70 <register_tm_clones>:
  400f70:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f75:	55                   	push   %rbp
  400f76:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f7d:	48 89 e5             	mov    %rsp,%rbp
  400f80:	48 c1 fe 03          	sar    $0x3,%rsi
  400f84:	48 89 f0             	mov    %rsi,%rax
  400f87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f8b:	48 01 c6             	add    %rax,%rsi
  400f8e:	48 d1 fe             	sar    %rsi
  400f91:	74 15                	je     400fa8 <register_tm_clones+0x38>
  400f93:	b8 00 00 00 00       	mov    $0x0,%eax
  400f98:	48 85 c0             	test   %rax,%rax
  400f9b:	74 0b                	je     400fa8 <register_tm_clones+0x38>
  400f9d:	5d                   	pop    %rbp
  400f9e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fa3:	ff e0                	jmpq   *%rax
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	5d                   	pop    %rbp
  400fa9:	c3                   	retq   
  400faa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fb0 <__do_global_dtors_aux>:
  400fb0:	80 3d 31 45 20 00 00 	cmpb   $0x0,0x204531(%rip)        # 6054e8 <completed.7698>
  400fb7:	75 17                	jne    400fd0 <__do_global_dtors_aux+0x20>
  400fb9:	55                   	push   %rbp
  400fba:	48 89 e5             	mov    %rsp,%rbp
  400fbd:	e8 7e ff ff ff       	callq  400f40 <deregister_tm_clones>
  400fc2:	c6 05 1f 45 20 00 01 	movb   $0x1,0x20451f(%rip)        # 6054e8 <completed.7698>
  400fc9:	5d                   	pop    %rbp
  400fca:	c3                   	retq   
  400fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fd0:	f3 c3                	repz retq 
  400fd2:	0f 1f 40 00          	nopl   0x0(%rax)
  400fd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <frame_dummy>:
  400fe0:	55                   	push   %rbp
  400fe1:	48 89 e5             	mov    %rsp,%rbp
  400fe4:	5d                   	pop    %rbp
  400fe5:	eb 89                	jmp    400f70 <register_tm_clones>

0000000000400fe7 <usage>:
  400fe7:	48 83 ec 08          	sub    $0x8,%rsp
  400feb:	48 89 fa             	mov    %rdi,%rdx
  400fee:	83 3d 33 45 20 00 00 	cmpl   $0x0,0x204533(%rip)        # 605528 <is_checker>
  400ff5:	74 50                	je     401047 <usage+0x60>
  400ff7:	48 8d 35 0a 23 00 00 	lea    0x230a(%rip),%rsi        # 403308 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40100d:	48 8d 3d 2c 23 00 00 	lea    0x232c(%rip),%rdi        # 403340 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	callq  400d40 <puts@plt>
  401019:	48 8d 3d b0 24 00 00 	lea    0x24b0(%rip),%rdi        # 4034d0 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	callq  400d40 <puts@plt>
  401025:	48 8d 3d 3c 23 00 00 	lea    0x233c(%rip),%rdi        # 403368 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	callq  400d40 <puts@plt>
  401031:	48 8d 3d b2 24 00 00 	lea    0x24b2(%rip),%rdi        # 4034ea <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	callq  400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	callq  400eb0 <exit@plt>
  401047:	48 8d 35 b8 24 00 00 	lea    0x24b8(%rip),%rsi        # 403506 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40105d:	48 8d 3d 2c 23 00 00 	lea    0x232c(%rip),%rdi        # 403390 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	callq  400d40 <puts@plt>
  401069:	48 8d 3d 48 23 00 00 	lea    0x2348(%rip),%rdi        # 4033b8 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	callq  400d40 <puts@plt>
  401075:	48 8d 3d a8 24 00 00 	lea    0x24a8(%rip),%rdi        # 403524 <_IO_stdin_used+0x224>
  40107c:	e8 bf fc ff ff       	callq  400d40 <puts@plt>
  401081:	eb ba                	jmp    40103d <usage+0x56>

0000000000401083 <initialize_target>:
  401083:	55                   	push   %rbp
  401084:	53                   	push   %rbx
  401085:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40108c:	89 f5                	mov    %esi,%ebp
  40108e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401095:	00 00 
  401097:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40109e:	00 
  40109f:	31 c0                	xor    %eax,%eax
  4010a1:	89 3d 71 44 20 00    	mov    %edi,0x204471(%rip)        # 605518 <check_level>
  4010a7:	8b 3d a3 40 20 00    	mov    0x2040a3(%rip),%edi        # 605150 <target_id>
  4010ad:	e8 a0 21 00 00       	callq  403252 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 93 21 00 00       	callq  403252 <gencookie>
  4010bf:	89 05 5b 44 20 00    	mov    %eax,0x20445b(%rip)        # 605520 <authkey>
  4010c5:	8b 05 85 40 20 00    	mov    0x204085(%rip),%eax        # 605150 <target_id>
  4010cb:	8d 78 01             	lea    0x1(%rax),%edi
  4010ce:	e8 2d fc ff ff       	callq  400d00 <srandom@plt>
  4010d3:	e8 48 fd ff ff       	callq  400e20 <random@plt>
  4010d8:	89 c7                	mov    %eax,%edi
  4010da:	e8 93 03 00 00       	callq  401472 <scramble>
  4010df:	89 c3                	mov    %eax,%ebx
  4010e1:	85 ed                	test   %ebp,%ebp
  4010e3:	75 54                	jne    401139 <initialize_target+0xb6>
  4010e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ea:	01 d8                	add    %ebx,%eax
  4010ec:	0f b7 c0             	movzwl %ax,%eax
  4010ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  4010f6:	89 c0                	mov    %eax,%eax
  4010f8:	48 89 05 a1 43 20 00 	mov    %rax,0x2043a1(%rip)        # 6054a0 <buf_offset>
  4010ff:	c6 05 42 50 20 00 72 	movb   $0x72,0x205042(%rip)        # 606148 <target_prefix>
  401106:	83 3d 9b 43 20 00 00 	cmpl   $0x0,0x20439b(%rip)        # 6054a8 <notify>
  40110d:	74 09                	je     401118 <initialize_target+0x95>
  40110f:	83 3d 12 44 20 00 00 	cmpl   $0x0,0x204412(%rip)        # 605528 <is_checker>
  401116:	74 39                	je     401151 <initialize_target+0xce>
  401118:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40111f:	00 
  401120:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401127:	00 00 
  401129:	0f 85 da 00 00 00    	jne    401209 <initialize_target+0x186>
  40112f:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401136:	5b                   	pop    %rbx
  401137:	5d                   	pop    %rbp
  401138:	c3                   	retq   
  401139:	bf 00 00 00 00       	mov    $0x0,%edi
  40113e:	e8 cd fc ff ff       	callq  400e10 <time@plt>
  401143:	89 c7                	mov    %eax,%edi
  401145:	e8 b6 fb ff ff       	callq  400d00 <srandom@plt>
  40114a:	e8 d1 fc ff ff       	callq  400e20 <random@plt>
  40114f:	eb 99                	jmp    4010ea <initialize_target+0x67>
  401151:	48 89 e7             	mov    %rsp,%rdi
  401154:	be 00 01 00 00       	mov    $0x100,%esi
  401159:	e8 42 fd ff ff       	callq  400ea0 <gethostname@plt>
  40115e:	89 c5                	mov    %eax,%ebp
  401160:	85 c0                	test   %eax,%eax
  401162:	75 26                	jne    40118a <initialize_target+0x107>
  401164:	89 c3                	mov    %eax,%ebx
  401166:	48 63 c3             	movslq %ebx,%rax
  401169:	48 8d 15 10 40 20 00 	lea    0x204010(%rip),%rdx        # 605180 <host_table>
  401170:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401174:	48 85 ff             	test   %rdi,%rdi
  401177:	74 2c                	je     4011a5 <initialize_target+0x122>
  401179:	48 89 e6             	mov    %rsp,%rsi
  40117c:	e8 5f fb ff ff       	callq  400ce0 <strcasecmp@plt>
  401181:	85 c0                	test   %eax,%eax
  401183:	74 1b                	je     4011a0 <initialize_target+0x11d>
  401185:	83 c3 01             	add    $0x1,%ebx
  401188:	eb dc                	jmp    401166 <initialize_target+0xe3>
  40118a:	48 8d 3d 57 22 00 00 	lea    0x2257(%rip),%rdi        # 4033e8 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	callq  400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	callq  400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 cc 1d 00 00       	callq  402f82 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 93 22 00 00 	lea    0x2293(%rip),%rsi        # 403460 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	callq  400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 30 22 00 00 	lea    0x2230(%rip),%rsi        # 403420 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	callq  400eb0 <exit@plt>
  401209:	e8 e4 10 00 00       	callq  4022f2 <__stack_chk_fail>

000000000040120e <main>:
  40120e:	41 56                	push   %r14
  401210:	41 55                	push   %r13
  401212:	41 54                	push   %r12
  401214:	55                   	push   %rbp
  401215:	53                   	push   %rbx
  401216:	48 83 ec 60          	sub    $0x60,%rsp
  40121a:	89 fd                	mov    %edi,%ebp
  40121c:	48 89 f3             	mov    %rsi,%rbx
  40121f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401226:	00 00 
  401228:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40122d:	31 c0                	xor    %eax,%eax
  40122f:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401236:	74 65 64 
  401239:	48 89 04 24          	mov    %rax,(%rsp)
  40123d:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  401244:	79 
  401245:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  40124c:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  401251:	48 c7 c6 f3 21 40 00 	mov    $0x4021f3,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	callq  400dc0 <signal@plt>
  401262:	48 c7 c6 9f 21 40 00 	mov    $0x40219f,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	callq  400dc0 <signal@plt>
  401273:	48 c7 c6 47 22 40 00 	mov    $0x402247,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	callq  400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 a9 22 00 00 	lea    0x22a9(%rip),%r12        # 40353d <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmpq   401340 <main+0x132>
  4012b3:	48 c7 c6 9b 22 40 00 	mov    $0x40229b,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	callq  400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	callq  400d80 <alarm@plt>
  4012ce:	4c 8d 25 6d 22 00 00 	lea    0x226d(%rip),%r12        # 403542 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	callq  400fe7 <usage>
  4012df:	48 8d 35 2a 23 00 00 	lea    0x232a(%rip),%rsi        # 403610 <_IO_stdin_used+0x310>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	callq  400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 40 22 00 00 	lea    0x2240(%rip),%rdx        # 40354c <_IO_stdin_used+0x24c>
  40130c:	be 01 00 00 00       	mov    $0x1,%esi
  401311:	48 8b 3d c8 41 20 00 	mov    0x2041c8(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401318:	e8 b3 fb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40131d:	b8 01 00 00 00       	mov    $0x1,%eax
  401322:	e9 29 01 00 00       	jmpq   401450 <main+0x242>
  401327:	ba 10 00 00 00       	mov    $0x10,%edx
  40132c:	be 00 00 00 00       	mov    $0x0,%esi
  401331:	48 8b 3d 90 41 20 00 	mov    0x204190(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401338:	e8 53 fb ff ff       	callq  400e90 <strtoul@plt>
  40133d:	41 89 c6             	mov    %eax,%r14d
  401340:	4c 89 e2             	mov    %r12,%rdx
  401343:	48 89 de             	mov    %rbx,%rsi
  401346:	89 ef                	mov    %ebp,%edi
  401348:	e8 33 fb ff ff       	callq  400e80 <getopt@plt>
  40134d:	3c ff                	cmp    $0xff,%al
  40134f:	74 78                	je     4013c9 <main+0x1bb>
  401351:	0f be d0             	movsbl %al,%edx
  401354:	83 e8 61             	sub    $0x61,%eax
  401357:	3c 14                	cmp    $0x14,%al
  401359:	77 50                	ja     4013ab <main+0x19d>
  40135b:	0f b6 c0             	movzbl %al,%eax
  40135e:	48 8d 0d 27 22 00 00 	lea    0x2227(%rip),%rcx        # 40358c <_IO_stdin_used+0x28c>
  401365:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  401369:	48 01 c8             	add    %rcx,%rax
  40136c:	ff e0                	jmpq   *%rax
  40136e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401373:	be 00 00 00 00       	mov    $0x0,%esi
  401378:	48 8b 3d 49 41 20 00 	mov    0x204149(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  40137f:	e8 6c fa ff ff       	callq  400df0 <strtol@plt>
  401384:	41 89 c5             	mov    %eax,%r13d
  401387:	eb b7                	jmp    401340 <main+0x132>
  401389:	c7 05 15 41 20 00 00 	movl   $0x0,0x204115(%rip)        # 6054a8 <notify>
  401390:	00 00 00 
  401393:	eb ab                	jmp    401340 <main+0x132>
  401395:	48 89 e7             	mov    %rsp,%rdi
  401398:	ba 50 00 00 00       	mov    $0x50,%edx
  40139d:	48 8b 35 24 41 20 00 	mov    0x204124(%rip),%rsi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4013a4:	e8 67 f9 ff ff       	callq  400d10 <strncpy@plt>
  4013a9:	eb 95                	jmp    401340 <main+0x132>
  4013ab:	48 8d 35 b7 21 00 00 	lea    0x21b7(%rip),%rsi        # 403569 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	callq  400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	callq  400fe7 <usage>
  4013c9:	be 01 00 00 00       	mov    $0x1,%esi
  4013ce:	44 89 ef             	mov    %r13d,%edi
  4013d1:	e8 ad fc ff ff       	callq  401083 <initialize_target>
  4013d6:	83 3d 4b 41 20 00 00 	cmpl   $0x0,0x20414b(%rip)        # 605528 <is_checker>
  4013dd:	74 3f                	je     40141e <main+0x210>
  4013df:	44 39 35 3a 41 20 00 	cmp    %r14d,0x20413a(%rip)        # 605520 <authkey>
  4013e6:	75 13                	jne    4013fb <main+0x1ed>
  4013e8:	48 89 e7             	mov    %rsp,%rdi
  4013eb:	48 8b 35 6e 3d 20 00 	mov    0x203d6e(%rip),%rsi        # 605160 <user_id>
  4013f2:	e8 b9 f9 ff ff       	callq  400db0 <strcmp@plt>
  4013f7:	85 c0                	test   %eax,%eax
  4013f9:	74 23                	je     40141e <main+0x210>
  4013fb:	44 89 f2             	mov    %r14d,%edx
  4013fe:	48 8d 35 83 20 00 00 	lea    0x2083(%rip),%rsi        # 403488 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	callq  400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 e9 09 00 00       	callq  401e07 <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 51 21 00 00 	lea    0x2151(%rip),%rsi        # 40357c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	callq  400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 fb 0e 00 00       	callq  402346 <launch>
  40144b:	b8 00 00 00 00       	mov    $0x0,%eax
  401450:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
  401455:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40145c:	00 00 
  40145e:	75 0d                	jne    40146d <main+0x25f>
  401460:	48 83 c4 60          	add    $0x60,%rsp
  401464:	5b                   	pop    %rbx
  401465:	5d                   	pop    %rbp
  401466:	41 5c                	pop    %r12
  401468:	41 5d                	pop    %r13
  40146a:	41 5e                	pop    %r14
  40146c:	c3                   	retq   
  40146d:	e8 80 0e 00 00       	callq  4022f2 <__stack_chk_fail>

0000000000401472 <scramble>:
  401472:	48 83 ec 38          	sub    $0x38,%rsp
  401476:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401484:	31 c0                	xor    %eax,%eax
  401486:	eb 10                	jmp    401498 <scramble+0x26>
  401488:	69 d0 f5 51 00 00    	imul   $0x51f5,%eax,%edx
  40148e:	01 fa                	add    %edi,%edx
  401490:	89 c1                	mov    %eax,%ecx
  401492:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401495:	83 c0 01             	add    $0x1,%eax
  401498:	83 f8 09             	cmp    $0x9,%eax
  40149b:	76 eb                	jbe    401488 <scramble+0x16>
  40149d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014a1:	69 c0 bd 95 00 00    	imul   $0x95bd,%eax,%eax
  4014a7:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014ab:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014af:	69 c0 40 fc 00 00    	imul   $0xfc40,%eax,%eax
  4014b5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014b9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014bd:	69 c0 61 f8 00 00    	imul   $0xf861,%eax,%eax
  4014c3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014c7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014cb:	69 c0 3f 3a 00 00    	imul   $0x3a3f,%eax,%eax
  4014d1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014d9:	69 c0 9c eb 00 00    	imul   $0xeb9c,%eax,%eax
  4014df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014e3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014e7:	69 c0 a5 41 00 00    	imul   $0x41a5,%eax,%eax
  4014ed:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014f1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014f5:	69 c0 3b f8 00 00    	imul   $0xf83b,%eax,%eax
  4014fb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014ff:	8b 04 24             	mov    (%rsp),%eax
  401502:	69 c0 61 ab 00 00    	imul   $0xab61,%eax,%eax
  401508:	89 04 24             	mov    %eax,(%rsp)
  40150b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40150f:	69 c0 c9 90 00 00    	imul   $0x90c9,%eax,%eax
  401515:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401519:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40151d:	69 c0 6b b7 00 00    	imul   $0xb76b,%eax,%eax
  401523:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401527:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40152b:	69 c0 35 ca 00 00    	imul   $0xca35,%eax,%eax
  401531:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401535:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401539:	69 c0 55 57 00 00    	imul   $0x5755,%eax,%eax
  40153f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401543:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401547:	69 c0 de 92 00 00    	imul   $0x92de,%eax,%eax
  40154d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401551:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401555:	69 c0 45 ef 00 00    	imul   $0xef45,%eax,%eax
  40155b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40155f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401563:	69 c0 7b b6 00 00    	imul   $0xb67b,%eax,%eax
  401569:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40156d:	8b 04 24             	mov    (%rsp),%eax
  401570:	69 c0 06 6d 00 00    	imul   $0x6d06,%eax,%eax
  401576:	89 04 24             	mov    %eax,(%rsp)
  401579:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40157d:	69 c0 50 d2 00 00    	imul   $0xd250,%eax,%eax
  401583:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401587:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40158b:	69 c0 ee 43 00 00    	imul   $0x43ee,%eax,%eax
  401591:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401595:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401599:	69 c0 ac 82 00 00    	imul   $0x82ac,%eax,%eax
  40159f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015a3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015a7:	69 c0 40 59 00 00    	imul   $0x5940,%eax,%eax
  4015ad:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015b1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015b5:	69 c0 fb 92 00 00    	imul   $0x92fb,%eax,%eax
  4015bb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015bf:	8b 04 24             	mov    (%rsp),%eax
  4015c2:	69 c0 7e 0b 00 00    	imul   $0xb7e,%eax,%eax
  4015c8:	89 04 24             	mov    %eax,(%rsp)
  4015cb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015cf:	69 c0 8e 79 00 00    	imul   $0x798e,%eax,%eax
  4015d5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015d9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015dd:	69 c0 ae b7 00 00    	imul   $0xb7ae,%eax,%eax
  4015e3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015e7:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015eb:	69 c0 db b6 00 00    	imul   $0xb6db,%eax,%eax
  4015f1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015f5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015f9:	69 c0 b2 d1 00 00    	imul   $0xd1b2,%eax,%eax
  4015ff:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401603:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401607:	69 c0 18 f6 00 00    	imul   $0xf618,%eax,%eax
  40160d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401611:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401615:	69 c0 29 37 00 00    	imul   $0x3729,%eax,%eax
  40161b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40161f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401623:	69 c0 fa 87 00 00    	imul   $0x87fa,%eax,%eax
  401629:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40162d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401631:	69 c0 06 a4 00 00    	imul   $0xa406,%eax,%eax
  401637:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40163b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40163f:	69 c0 99 32 00 00    	imul   $0x3299,%eax,%eax
  401645:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401649:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40164d:	69 c0 ae 8a 00 00    	imul   $0x8aae,%eax,%eax
  401653:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401657:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40165b:	69 c0 53 7a 00 00    	imul   $0x7a53,%eax,%eax
  401661:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401665:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401669:	69 c0 9b cf 00 00    	imul   $0xcf9b,%eax,%eax
  40166f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401673:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401677:	69 c0 ca 4c 00 00    	imul   $0x4cca,%eax,%eax
  40167d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401681:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401685:	69 c0 48 6b 00 00    	imul   $0x6b48,%eax,%eax
  40168b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40168f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401693:	69 c0 c1 c3 00 00    	imul   $0xc3c1,%eax,%eax
  401699:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40169d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016a1:	69 c0 fb 6a 00 00    	imul   $0x6afb,%eax,%eax
  4016a7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016ab:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016af:	69 c0 a5 2d 00 00    	imul   $0x2da5,%eax,%eax
  4016b5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016b9:	8b 04 24             	mov    (%rsp),%eax
  4016bc:	69 c0 a7 47 00 00    	imul   $0x47a7,%eax,%eax
  4016c2:	89 04 24             	mov    %eax,(%rsp)
  4016c5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016c9:	69 c0 c3 91 00 00    	imul   $0x91c3,%eax,%eax
  4016cf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016d3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016d7:	69 c0 91 65 00 00    	imul   $0x6591,%eax,%eax
  4016dd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016e1:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016e5:	69 c0 60 42 00 00    	imul   $0x4260,%eax,%eax
  4016eb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016ef:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016f3:	69 c0 d1 10 00 00    	imul   $0x10d1,%eax,%eax
  4016f9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401701:	69 c0 2a c3 00 00    	imul   $0xc32a,%eax,%eax
  401707:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40170b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40170f:	69 c0 d0 08 00 00    	imul   $0x8d0,%eax,%eax
  401715:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401719:	8b 04 24             	mov    (%rsp),%eax
  40171c:	69 c0 e4 c5 00 00    	imul   $0xc5e4,%eax,%eax
  401722:	89 04 24             	mov    %eax,(%rsp)
  401725:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401729:	69 c0 ad fa 00 00    	imul   $0xfaad,%eax,%eax
  40172f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401733:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401737:	69 c0 1b 62 00 00    	imul   $0x621b,%eax,%eax
  40173d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401741:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401745:	69 c0 36 3d 00 00    	imul   $0x3d36,%eax,%eax
  40174b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40174f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401753:	69 c0 23 f3 00 00    	imul   $0xf323,%eax,%eax
  401759:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40175d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401761:	69 c0 ab 8e 00 00    	imul   $0x8eab,%eax,%eax
  401767:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40176b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40176f:	69 c0 44 1f 00 00    	imul   $0x1f44,%eax,%eax
  401775:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401779:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40177d:	69 c0 34 f4 00 00    	imul   $0xf434,%eax,%eax
  401783:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401787:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40178b:	69 c0 50 1c 00 00    	imul   $0x1c50,%eax,%eax
  401791:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401795:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401799:	69 c0 6a 31 00 00    	imul   $0x316a,%eax,%eax
  40179f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017a3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017a7:	69 c0 35 55 00 00    	imul   $0x5535,%eax,%eax
  4017ad:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017b1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017b5:	69 c0 ee 35 00 00    	imul   $0x35ee,%eax,%eax
  4017bb:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017bf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017c3:	69 c0 b6 33 00 00    	imul   $0x33b6,%eax,%eax
  4017c9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017cd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017d1:	69 c0 f0 61 00 00    	imul   $0x61f0,%eax,%eax
  4017d7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017db:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017df:	69 c0 96 fb 00 00    	imul   $0xfb96,%eax,%eax
  4017e5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017ed:	69 c0 a4 ec 00 00    	imul   $0xeca4,%eax,%eax
  4017f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017f7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017fb:	69 c0 3f fe 00 00    	imul   $0xfe3f,%eax,%eax
  401801:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401805:	8b 04 24             	mov    (%rsp),%eax
  401808:	69 c0 b1 01 00 00    	imul   $0x1b1,%eax,%eax
  40180e:	89 04 24             	mov    %eax,(%rsp)
  401811:	8b 04 24             	mov    (%rsp),%eax
  401814:	69 c0 99 b1 00 00    	imul   $0xb199,%eax,%eax
  40181a:	89 04 24             	mov    %eax,(%rsp)
  40181d:	8b 04 24             	mov    (%rsp),%eax
  401820:	69 c0 40 0f 00 00    	imul   $0xf40,%eax,%eax
  401826:	89 04 24             	mov    %eax,(%rsp)
  401829:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40182d:	69 c0 66 e7 00 00    	imul   $0xe766,%eax,%eax
  401833:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401837:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40183b:	69 c0 a1 5b 00 00    	imul   $0x5ba1,%eax,%eax
  401841:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401845:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401849:	69 c0 91 97 00 00    	imul   $0x9791,%eax,%eax
  40184f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401853:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401857:	69 c0 94 53 00 00    	imul   $0x5394,%eax,%eax
  40185d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401861:	8b 04 24             	mov    (%rsp),%eax
  401864:	69 c0 b0 8b 00 00    	imul   $0x8bb0,%eax,%eax
  40186a:	89 04 24             	mov    %eax,(%rsp)
  40186d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401871:	69 c0 f4 61 00 00    	imul   $0x61f4,%eax,%eax
  401877:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40187b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40187f:	69 c0 fa 1b 00 00    	imul   $0x1bfa,%eax,%eax
  401885:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401889:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40188d:	69 c0 7b 78 00 00    	imul   $0x787b,%eax,%eax
  401893:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401897:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40189b:	69 c0 a1 de 00 00    	imul   $0xdea1,%eax,%eax
  4018a1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018a5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018a9:	69 c0 91 46 00 00    	imul   $0x4691,%eax,%eax
  4018af:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018b3:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018b7:	69 c0 2c 45 00 00    	imul   $0x452c,%eax,%eax
  4018bd:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018c1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018c5:	69 c0 b2 9b 00 00    	imul   $0x9bb2,%eax,%eax
  4018cb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4018cf:	8b 04 24             	mov    (%rsp),%eax
  4018d2:	69 c0 86 1a 00 00    	imul   $0x1a86,%eax,%eax
  4018d8:	89 04 24             	mov    %eax,(%rsp)
  4018db:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018df:	69 c0 c6 a3 00 00    	imul   $0xa3c6,%eax,%eax
  4018e5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018e9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018ed:	69 c0 4c dc 00 00    	imul   $0xdc4c,%eax,%eax
  4018f3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018f7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018fb:	69 c0 db 70 00 00    	imul   $0x70db,%eax,%eax
  401901:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401905:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401909:	69 c0 f1 50 00 00    	imul   $0x50f1,%eax,%eax
  40190f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401913:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401917:	69 c0 5d ca 00 00    	imul   $0xca5d,%eax,%eax
  40191d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401921:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401925:	69 c0 51 1c 00 00    	imul   $0x1c51,%eax,%eax
  40192b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40192f:	8b 04 24             	mov    (%rsp),%eax
  401932:	69 c0 64 9c 00 00    	imul   $0x9c64,%eax,%eax
  401938:	89 04 24             	mov    %eax,(%rsp)
  40193b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40193f:	69 c0 f0 a2 00 00    	imul   $0xa2f0,%eax,%eax
  401945:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401949:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40194d:	69 c0 e7 88 00 00    	imul   $0x88e7,%eax,%eax
  401953:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401957:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40195b:	69 c0 3b 96 00 00    	imul   $0x963b,%eax,%eax
  401961:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401965:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401969:	69 c0 9b 0e 00 00    	imul   $0xe9b,%eax,%eax
  40196f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401973:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401977:	69 c0 ce db 00 00    	imul   $0xdbce,%eax,%eax
  40197d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401981:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401985:	69 c0 15 4f 00 00    	imul   $0x4f15,%eax,%eax
  40198b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40198f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401993:	69 c0 61 88 00 00    	imul   $0x8861,%eax,%eax
  401999:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40199d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4019a1:	69 c0 66 64 00 00    	imul   $0x6466,%eax,%eax
  4019a7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4019ab:	ba 00 00 00 00       	mov    $0x0,%edx
  4019b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b5:	eb 0a                	jmp    4019c1 <scramble+0x54f>
  4019b7:	89 d1                	mov    %edx,%ecx
  4019b9:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  4019bc:	01 c8                	add    %ecx,%eax
  4019be:	83 c2 01             	add    $0x1,%edx
  4019c1:	83 fa 09             	cmp    $0x9,%edx
  4019c4:	76 f1                	jbe    4019b7 <scramble+0x545>
  4019c6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4019cb:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4019d2:	00 00 
  4019d4:	75 05                	jne    4019db <scramble+0x569>
  4019d6:	48 83 c4 38          	add    $0x38,%rsp
  4019da:	c3                   	retq   
  4019db:	e8 12 09 00 00       	callq  4022f2 <__stack_chk_fail>

00000000004019e0 <getbuf>:
  4019e0:	48 83 ec 28          	sub    $0x28,%rsp
  4019e4:	48 89 e7             	mov    %rsp,%rdi
  4019e7:	e8 53 04 00 00       	callq  401e3f <Gets>
  4019ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4019f1:	48 83 c4 28          	add    $0x28,%rsp
  4019f5:	c3                   	retq   

00000000004019f6 <touch1>:
  4019f6:	48 83 ec 08          	sub    $0x8,%rsp
  4019fa:	c7 05 18 3b 20 00 01 	movl   $0x1,0x203b18(%rip)        # 60551c <vlevel>
  401a01:	00 00 00 
  401a04:	48 8d 3d 07 1c 00 00 	lea    0x1c07(%rip),%rdi        # 403612 <_IO_stdin_used+0x312>
  401a0b:	e8 30 f3 ff ff       	callq  400d40 <puts@plt>
  401a10:	bf 01 00 00 00       	mov    $0x1,%edi
  401a15:	e8 8d 06 00 00       	callq  4020a7 <validate>
  401a1a:	bf 00 00 00 00       	mov    $0x0,%edi
  401a1f:	e8 8c f4 ff ff       	callq  400eb0 <exit@plt>

0000000000401a24 <touch2>:
  401a24:	48 83 ec 08          	sub    $0x8,%rsp
  401a28:	89 fa                	mov    %edi,%edx
  401a2a:	c7 05 e8 3a 20 00 02 	movl   $0x2,0x203ae8(%rip)        # 60551c <vlevel>
  401a31:	00 00 00 
  401a34:	39 3d ea 3a 20 00    	cmp    %edi,0x203aea(%rip)        # 605524 <cookie>
  401a3a:	74 2a                	je     401a66 <touch2+0x42>
  401a3c:	48 8d 35 1d 1c 00 00 	lea    0x1c1d(%rip),%rsi        # 403660 <_IO_stdin_used+0x360>
  401a43:	bf 01 00 00 00       	mov    $0x1,%edi
  401a48:	b8 00 00 00 00       	mov    $0x0,%eax
  401a4d:	e8 0e f4 ff ff       	callq  400e60 <__printf_chk@plt>
  401a52:	bf 02 00 00 00       	mov    $0x2,%edi
  401a57:	e8 1b 07 00 00       	callq  402177 <fail>
  401a5c:	bf 00 00 00 00       	mov    $0x0,%edi
  401a61:	e8 4a f4 ff ff       	callq  400eb0 <exit@plt>
  401a66:	48 8d 35 cb 1b 00 00 	lea    0x1bcb(%rip),%rsi        # 403638 <_IO_stdin_used+0x338>
  401a6d:	bf 01 00 00 00       	mov    $0x1,%edi
  401a72:	b8 00 00 00 00       	mov    $0x0,%eax
  401a77:	e8 e4 f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401a7c:	bf 02 00 00 00       	mov    $0x2,%edi
  401a81:	e8 21 06 00 00       	callq  4020a7 <validate>
  401a86:	eb d4                	jmp    401a5c <touch2+0x38>

0000000000401a88 <hexmatch>:
  401a88:	41 54                	push   %r12
  401a8a:	55                   	push   %rbp
  401a8b:	53                   	push   %rbx
  401a8c:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401a90:	89 fd                	mov    %edi,%ebp
  401a92:	48 89 f3             	mov    %rsi,%rbx
  401a95:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a9c:	00 00 
  401a9e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401aa3:	31 c0                	xor    %eax,%eax
  401aa5:	e8 76 f3 ff ff       	callq  400e20 <random@plt>
  401aaa:	48 89 c1             	mov    %rax,%rcx
  401aad:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401ab4:	0a d7 a3 
  401ab7:	48 f7 ea             	imul   %rdx
  401aba:	48 01 ca             	add    %rcx,%rdx
  401abd:	48 c1 fa 06          	sar    $0x6,%rdx
  401ac1:	48 89 c8             	mov    %rcx,%rax
  401ac4:	48 c1 f8 3f          	sar    $0x3f,%rax
  401ac8:	48 29 c2             	sub    %rax,%rdx
  401acb:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401acf:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401ad3:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401ada:	00 
  401adb:	48 29 c1             	sub    %rax,%rcx
  401ade:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401ae2:	41 89 e8             	mov    %ebp,%r8d
  401ae5:	48 8d 0d 43 1b 00 00 	lea    0x1b43(%rip),%rcx        # 40362f <_IO_stdin_used+0x32f>
  401aec:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401af3:	be 01 00 00 00       	mov    $0x1,%esi
  401af8:	4c 89 e7             	mov    %r12,%rdi
  401afb:	b8 00 00 00 00       	mov    $0x0,%eax
  401b00:	e8 db f3 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401b05:	ba 09 00 00 00       	mov    $0x9,%edx
  401b0a:	4c 89 e6             	mov    %r12,%rsi
  401b0d:	48 89 df             	mov    %rbx,%rdi
  401b10:	e8 0b f2 ff ff       	callq  400d20 <strncmp@plt>
  401b15:	85 c0                	test   %eax,%eax
  401b17:	0f 94 c0             	sete   %al
  401b1a:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401b1f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401b26:	00 00 
  401b28:	75 0c                	jne    401b36 <hexmatch+0xae>
  401b2a:	0f b6 c0             	movzbl %al,%eax
  401b2d:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401b31:	5b                   	pop    %rbx
  401b32:	5d                   	pop    %rbp
  401b33:	41 5c                	pop    %r12
  401b35:	c3                   	retq   
  401b36:	e8 b7 07 00 00       	callq  4022f2 <__stack_chk_fail>

0000000000401b3b <touch3>:
  401b3b:	53                   	push   %rbx
  401b3c:	48 89 fb             	mov    %rdi,%rbx
  401b3f:	c7 05 d3 39 20 00 03 	movl   $0x3,0x2039d3(%rip)        # 60551c <vlevel>
  401b46:	00 00 00 
  401b49:	48 89 fe             	mov    %rdi,%rsi
  401b4c:	8b 3d d2 39 20 00    	mov    0x2039d2(%rip),%edi        # 605524 <cookie>
  401b52:	e8 31 ff ff ff       	callq  401a88 <hexmatch>
  401b57:	85 c0                	test   %eax,%eax
  401b59:	74 2d                	je     401b88 <touch3+0x4d>
  401b5b:	48 89 da             	mov    %rbx,%rdx
  401b5e:	48 8d 35 23 1b 00 00 	lea    0x1b23(%rip),%rsi        # 403688 <_IO_stdin_used+0x388>
  401b65:	bf 01 00 00 00       	mov    $0x1,%edi
  401b6a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6f:	e8 ec f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401b74:	bf 03 00 00 00       	mov    $0x3,%edi
  401b79:	e8 29 05 00 00       	callq  4020a7 <validate>
  401b7e:	bf 00 00 00 00       	mov    $0x0,%edi
  401b83:	e8 28 f3 ff ff       	callq  400eb0 <exit@plt>
  401b88:	48 89 da             	mov    %rbx,%rdx
  401b8b:	48 8d 35 1e 1b 00 00 	lea    0x1b1e(%rip),%rsi        # 4036b0 <_IO_stdin_used+0x3b0>
  401b92:	bf 01 00 00 00       	mov    $0x1,%edi
  401b97:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9c:	e8 bf f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401ba1:	bf 03 00 00 00       	mov    $0x3,%edi
  401ba6:	e8 cc 05 00 00       	callq  402177 <fail>
  401bab:	eb d1                	jmp    401b7e <touch3+0x43>

0000000000401bad <test>:
  401bad:	48 83 ec 08          	sub    $0x8,%rsp
  401bb1:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb6:	e8 25 fe ff ff       	callq  4019e0 <getbuf>
  401bbb:	89 c2                	mov    %eax,%edx
  401bbd:	48 8d 35 14 1b 00 00 	lea    0x1b14(%rip),%rsi        # 4036d8 <_IO_stdin_used+0x3d8>
  401bc4:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bce:	e8 8d f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bd3:	48 83 c4 08          	add    $0x8,%rsp
  401bd7:	c3                   	retq   

0000000000401bd8 <test2>:
  401bd8:	48 83 ec 08          	sub    $0x8,%rsp
  401bdc:	b8 00 00 00 00       	mov    $0x0,%eax
  401be1:	e8 1d 00 00 00       	callq  401c03 <getbuf_withcanary>
  401be6:	89 c2                	mov    %eax,%edx
  401be8:	48 8d 35 11 1b 00 00 	lea    0x1b11(%rip),%rsi        # 403700 <_IO_stdin_used+0x400>
  401bef:	bf 01 00 00 00       	mov    $0x1,%edi
  401bf4:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf9:	e8 62 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bfe:	48 83 c4 08          	add    $0x8,%rsp
  401c02:	c3                   	retq   

0000000000401c03 <getbuf_withcanary>:
  401c03:	55                   	push   %rbp
  401c04:	48 89 e5             	mov    %rsp,%rbp
  401c07:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401c0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c15:	00 00 
  401c17:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401c1b:	31 c0                	xor    %eax,%eax
  401c1d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401c24:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401c2b:	48 89 c7             	mov    %rax,%rdi
  401c2e:	e8 0c 02 00 00       	callq  401e3f <Gets>
  401c33:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401c36:	48 98                	cltq   
  401c38:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401c3f:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401c43:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401c4a:	ba 80 00 00 00       	mov    $0x80,%edx
  401c4f:	48 89 c6             	mov    %rax,%rsi
  401c52:	48 89 cf             	mov    %rcx,%rdi
  401c55:	e8 a6 f1 ff ff       	callq  400e00 <memcpy@plt>
  401c5a:	b8 01 00 00 00       	mov    $0x1,%eax
  401c5f:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401c63:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401c6a:	00 00 
  401c6c:	74 05                	je     401c73 <getbuf_withcanary+0x70>
  401c6e:	e8 7f 06 00 00       	callq  4022f2 <__stack_chk_fail>
  401c73:	c9                   	leaveq 
  401c74:	c3                   	retq   

0000000000401c75 <start_farm>:
  401c75:	b8 01 00 00 00       	mov    $0x1,%eax
  401c7a:	c3                   	retq   

0000000000401c7b <setval_180>:
  401c7b:	c7 07 58 48 89 c7    	movl   $0xc7894858,(%rdi) //pop %rax   movq %rax, %rdi   ret
  401c81:	c3                   	retq   

0000000000401c82 <setval_227>:
  401c82:	c7 07 01 66 58 91    	movl   $0x91586601,(%rdi)
  401c88:	c3                   	retq   

0000000000401c89 <getval_209>:
  401c89:	b8 58 92 90 90       	mov    $0x90909258,%eax
  401c8e:	c3                   	retq   

0000000000401c8f <setval_140>:
  401c8f:	c7 07 48 09 c7 c3    	movl   $0xc3c70948,(%rdi)
  401c95:	c3                   	retq   

0000000000401c96 <setval_490>:
  401c96:	c7 07 58 c3 a3 b3    	movl   $0xb3a3c358,(%rdi)
  401c9c:	c3                   	retq   

0000000000401c9d <getval_287>:
  401c9d:	b8 48 89 c7 90       	mov    $0x90c78948,%eax  // movq %rax, %rdi
  401ca2:	c3                   	retq   

0000000000401ca3 <getval_170>:
  401ca3:	b8 1e 58 90 90       	mov    $0x9090581e,%eax   //pop %rax
  401ca8:	c3                   	retq   

0000000000401ca9 <getval_231>:
  401ca9:	b8 48 8b c7 90       	mov    $0x90c78b48,%eax
  401cae:	c3                   	retq   

0000000000401caf <mid_farm>:
  401caf:	b8 01 00 00 00       	mov    $0x1,%eax
  401cb4:	c3                   	retq   

0000000000401cb5 <add_xy>:
  401cb5:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401cb9:	c3                   	retq   

0000000000401cba <setval_211>:
  401cba:	c7 07 89 d1 38 db    	movl   $0xdb38d189,(%rdi)  //mov %edx, %ecx
  401cc0:	c3                   	retq   

0000000000401cc1 <addval_187>:
  401cc1:	8d 87 89 c2 48 c0    	lea    -0x3fb73d77(%rdi),%eax
  401cc7:	c3                   	retq   

0000000000401cc8 <setval_431>:
  401cc8:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401cce:	c3                   	retq   

0000000000401ccf <getval_322>:
  401ccf:	b8 8b ce 08 c0       	mov    $0xc008ce8b,%eax
  401cd4:	c3                   	retq   

0000000000401cd5 <setval_469>:
  401cd5:	c7 07 89 ce 94 c9    	movl   $0xc994ce89,(%rdi)
  401cdb:	c3                   	retq   

0000000000401cdc <addval_436>:
  401cdc:	8d 87 8b ce 08 c0    	lea    -0x3ff73175(%rdi),%eax
  401ce2:	c3                   	retq   

0000000000401ce3 <getval_220>:
  401ce3:	b8 d3 88 c2 c3       	mov    $0xc3c288d3,%eax
  401ce8:	c3                   	retq   

0000000000401ce9 <getval_311>:
  401ce9:	b8 09 d1 38 d2       	mov    $0xd238d109,%eax
  401cee:	c3                   	retq   

0000000000401cef <getval_121>:
  401cef:	b8 52 8d d1 90       	mov    $0x90d18d52,%eax
  401cf4:	c3                   	retq   

0000000000401cf5 <getval_179>:
  401cf5:	b8 89 d1 60 c9       	mov    $0xc960d189,%eax
  401cfa:	c3                   	retq   

0000000000401cfb <addval_241>:
  401cfb:	8d 87 8d c2 08 c0    	lea    -0x3ff73d73(%rdi),%eax
  401d01:	c3                   	retq   

0000000000401d02 <getval_409>:
  401d02:	b8 89 ce 84 db       	mov    $0xdb84ce89,%eax   //movl %ecx, %esi
  401d07:	c3                   	retq   

0000000000401d08 <addval_367>:
  401d08:	8d 87 a9 c2 90 c3    	lea    -0x3c6f3d57(%rdi),%eax
  401d0e:	c3                   	retq   

0000000000401d0f <setval_430>:
  401d0f:	c7 07 89 c2 20 c9    	movl   $0xc920c289,(%rdi)   //movl %eax, %edx
  401d15:	c3                   	retq   

0000000000401d16 <addval_454>:
  401d16:	8d 87 89 d1 c3 cc    	lea    -0x333c2e77(%rdi),%eax   
  401d1c:	c3                   	retq   

0000000000401d1d <addval_455>:
  401d1d:	8d 87 48 88 e0 c3    	lea    -0x3c1f77b8(%rdi),%eax
  401d23:	c3                   	retq   

0000000000401d24 <getval_186>:
  401d24:	b8 89 c2 08 d2       	mov    $0xd208c289,%eax    //movl %eax, %edx
  401d29:	c3                   	retq   

0000000000401d2a <addval_377>:
  401d2a:	8d 87 09 d1 38 db    	lea    -0x24c72ef7(%rdi),%eax
  401d30:	c3                   	retq   

0000000000401d31 <setval_161>:
  401d31:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  401d37:	c3                   	retq   

0000000000401d38 <setval_171>:
  401d38:	c7 07 89 d1 18 c9    	movl   $0xc918d189,(%rdi)
  401d3e:	c3                   	retq   

0000000000401d3f <setval_164>:
  401d3f:	c7 07 89 ce 94 c9    	movl   $0xc994ce89,(%rdi)
  401d45:	c3                   	retq   

0000000000401d46 <setval_373>:
  401d46:	c7 07 89 c2 94 db    	movl   $0xdb94c289,(%rdi)
  401d4c:	c3                   	retq   

0000000000401d4d <addval_437>:
  401d4d:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401d53:	c3                   	retq   

0000000000401d54 <addval_230>:
  401d54:	8d 87 28 48 89 e0    	lea    -0x1f76b7d8(%rdi),%eax // movq %rsp, %rax
  401d5a:	c3                   	retq   

0000000000401d5b <addval_397>:
  401d5b:	8d 87 89 ce 18 db    	lea    -0x24e73177(%rdi),%eax
  401d61:	c3                   	retq   

0000000000401d62 <getval_138>:
  401d62:	b8 81 d1 20 c9       	mov    $0xc920d181,%eax
  401d67:	c3                   	retq   

0000000000401d68 <addval_346>:
  401d68:	8d 87 89 ce c2 0a    	lea    0xac2ce89(%rdi),%eax
  401d6e:	c3                   	retq   

0000000000401d6f <setval_429>:
  401d6f:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401d75:	c3                   	retq   

0000000000401d76 <getval_492>:
  401d76:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  401d7b:	c3                   	retq   

0000000000401d7c <addval_427>:
  401d7c:	8d 87 89 ce 38 c0    	lea    -0x3fc73177(%rdi),%eax   //movl %ecx, esi
  401d82:	c3                   	retq   

0000000000401d83 <setval_252>:
  401d83:	c7 07 4a 68 89 e0    	movl   $0xe089684a,(%rdi)   //movl %esp, %eax
  401d89:	c3                   	retq   

0000000000401d8a <addval_339>:
  401d8a:	8d 87 3e 81 c2 90    	lea    -0x6f3d7ec2(%rdi),%eax
  401d90:	c3                   	retq   

0000000000401d91 <end_farm>:
  401d91:	b8 01 00 00 00       	mov    $0x1,%eax
  401d96:	c3                   	retq   

0000000000401d97 <save_char>:
  401d97:	8b 05 a7 43 20 00    	mov    0x2043a7(%rip),%eax        # 606144 <gets_cnt>
  401d9d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401da2:	7f 4a                	jg     401dee <save_char+0x57>
  401da4:	89 f9                	mov    %edi,%ecx
  401da6:	c0 e9 04             	shr    $0x4,%cl
  401da9:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401dac:	4c 8d 05 ad 1c 00 00 	lea    0x1cad(%rip),%r8        # 403a60 <trans_char>
  401db3:	83 e1 0f             	and    $0xf,%ecx
  401db6:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401dbb:	48 8d 0d 7e 37 20 00 	lea    0x20377e(%rip),%rcx        # 605540 <gets_buf>
  401dc2:	48 63 f2             	movslq %edx,%rsi
  401dc5:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401dc9:	8d 72 01             	lea    0x1(%rdx),%esi
  401dcc:	83 e7 0f             	and    $0xf,%edi
  401dcf:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401dd4:	48 63 f6             	movslq %esi,%rsi
  401dd7:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401ddb:	83 c2 02             	add    $0x2,%edx
  401dde:	48 63 d2             	movslq %edx,%rdx
  401de1:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401de5:	83 c0 01             	add    $0x1,%eax
  401de8:	89 05 56 43 20 00    	mov    %eax,0x204356(%rip)        # 606144 <gets_cnt>
  401dee:	f3 c3                	repz retq 

0000000000401df0 <save_term>:
  401df0:	8b 05 4e 43 20 00    	mov    0x20434e(%rip),%eax        # 606144 <gets_cnt>
  401df6:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401df9:	48 98                	cltq   
  401dfb:	48 8d 15 3e 37 20 00 	lea    0x20373e(%rip),%rdx        # 605540 <gets_buf>
  401e02:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401e06:	c3                   	retq   

0000000000401e07 <check_fail>:
  401e07:	48 83 ec 08          	sub    $0x8,%rsp
  401e0b:	0f be 15 36 43 20 00 	movsbl 0x204336(%rip),%edx        # 606148 <target_prefix>
  401e12:	4c 8d 05 27 37 20 00 	lea    0x203727(%rip),%r8        # 605540 <gets_buf>
  401e19:	8b 0d f9 36 20 00    	mov    0x2036f9(%rip),%ecx        # 605518 <check_level>
  401e1f:	48 8d 35 08 19 00 00 	lea    0x1908(%rip),%rsi        # 40372e <_IO_stdin_used+0x42e>
  401e26:	bf 01 00 00 00       	mov    $0x1,%edi
  401e2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e30:	e8 2b f0 ff ff       	callq  400e60 <__printf_chk@plt>
  401e35:	bf 01 00 00 00       	mov    $0x1,%edi
  401e3a:	e8 71 f0 ff ff       	callq  400eb0 <exit@plt>

0000000000401e3f <Gets>:
  401e3f:	41 54                	push   %r12
  401e41:	55                   	push   %rbp
  401e42:	53                   	push   %rbx
  401e43:	49 89 fc             	mov    %rdi,%r12
  401e46:	c7 05 f4 42 20 00 00 	movl   $0x0,0x2042f4(%rip)        # 606144 <gets_cnt>
  401e4d:	00 00 00 
  401e50:	48 89 fb             	mov    %rdi,%rbx
  401e53:	eb 11                	jmp    401e66 <Gets+0x27>
  401e55:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e59:	88 03                	mov    %al,(%rbx)
  401e5b:	0f b6 f8             	movzbl %al,%edi
  401e5e:	e8 34 ff ff ff       	callq  401d97 <save_char>
  401e63:	48 89 eb             	mov    %rbp,%rbx
  401e66:	48 8b 3d a3 36 20 00 	mov    0x2036a3(%rip),%rdi        # 605510 <infile>
  401e6d:	e8 be ef ff ff       	callq  400e30 <_IO_getc@plt>
  401e72:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e75:	74 05                	je     401e7c <Gets+0x3d>
  401e77:	83 f8 0a             	cmp    $0xa,%eax
  401e7a:	75 d9                	jne    401e55 <Gets+0x16>
  401e7c:	c6 03 00             	movb   $0x0,(%rbx)
  401e7f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e84:	e8 67 ff ff ff       	callq  401df0 <save_term>
  401e89:	4c 89 e0             	mov    %r12,%rax
  401e8c:	5b                   	pop    %rbx
  401e8d:	5d                   	pop    %rbp
  401e8e:	41 5c                	pop    %r12
  401e90:	c3                   	retq   

0000000000401e91 <notify_server>:
  401e91:	55                   	push   %rbp
  401e92:	53                   	push   %rbx
  401e93:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401e9a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ea1:	00 00 
  401ea3:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401eaa:	00 
  401eab:	31 c0                	xor    %eax,%eax
  401ead:	83 3d 74 36 20 00 00 	cmpl   $0x0,0x203674(%rip)        # 605528 <is_checker>
  401eb4:	0f 85 cb 01 00 00    	jne    402085 <notify_server+0x1f4>
  401eba:	89 fb                	mov    %edi,%ebx
  401ebc:	8b 05 82 42 20 00    	mov    0x204282(%rip),%eax        # 606144 <gets_cnt>
  401ec2:	83 c0 64             	add    $0x64,%eax
  401ec5:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401eca:	0f 8f bd 00 00 00    	jg     401f8d <notify_server+0xfc>
  401ed0:	0f be 05 71 42 20 00 	movsbl 0x204271(%rip),%eax        # 606148 <target_prefix>
  401ed7:	83 3d ca 35 20 00 00 	cmpl   $0x0,0x2035ca(%rip)        # 6054a8 <notify>
  401ede:	0f 84 c9 00 00 00    	je     401fad <notify_server+0x11c>
  401ee4:	8b 15 36 36 20 00    	mov    0x203636(%rip),%edx        # 605520 <authkey>
  401eea:	85 db                	test   %ebx,%ebx
  401eec:	0f 84 c5 00 00 00    	je     401fb7 <notify_server+0x126>
  401ef2:	48 8d 2d 4b 18 00 00 	lea    0x184b(%rip),%rbp        # 403744 <_IO_stdin_used+0x444>
  401ef9:	48 89 e7             	mov    %rsp,%rdi
  401efc:	48 8d 0d 3d 36 20 00 	lea    0x20363d(%rip),%rcx        # 605540 <gets_buf>
  401f03:	51                   	push   %rcx
  401f04:	56                   	push   %rsi
  401f05:	50                   	push   %rax
  401f06:	52                   	push   %rdx
  401f07:	49 89 e9             	mov    %rbp,%r9
  401f0a:	44 8b 05 3f 32 20 00 	mov    0x20323f(%rip),%r8d        # 605150 <target_id>
  401f11:	48 8d 0d 36 18 00 00 	lea    0x1836(%rip),%rcx        # 40374e <_IO_stdin_used+0x44e>
  401f18:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f1d:	be 01 00 00 00       	mov    $0x1,%esi
  401f22:	b8 00 00 00 00       	mov    $0x0,%eax
  401f27:	e8 b4 ef ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401f2c:	48 83 c4 20          	add    $0x20,%rsp
  401f30:	83 3d 71 35 20 00 00 	cmpl   $0x0,0x203571(%rip)        # 6054a8 <notify>
  401f37:	0f 84 bf 00 00 00    	je     401ffc <notify_server+0x16b>
  401f3d:	48 89 e1             	mov    %rsp,%rcx
  401f40:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401f47:	00 
  401f48:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f4e:	48 8b 15 13 32 20 00 	mov    0x203213(%rip),%rdx        # 605168 <lab>
  401f55:	48 8b 35 14 32 20 00 	mov    0x203214(%rip),%rsi        # 605170 <course>
  401f5c:	48 8b 3d fd 31 20 00 	mov    0x2031fd(%rip),%rdi        # 605160 <user_id>
  401f63:	e8 45 12 00 00       	callq  4031ad <driver_post>
  401f68:	85 c0                	test   %eax,%eax
  401f6a:	78 57                	js     401fc3 <notify_server+0x132>
  401f6c:	85 db                	test   %ebx,%ebx
  401f6e:	74 7b                	je     401feb <notify_server+0x15a>
  401f70:	48 8d 3d 29 19 00 00 	lea    0x1929(%rip),%rdi        # 4038a0 <_IO_stdin_used+0x5a0>
  401f77:	e8 c4 ed ff ff       	callq  400d40 <puts@plt>
  401f7c:	48 8d 3d f3 17 00 00 	lea    0x17f3(%rip),%rdi        # 403776 <_IO_stdin_used+0x476>
  401f83:	e8 b8 ed ff ff       	callq  400d40 <puts@plt>
  401f88:	e9 f8 00 00 00       	jmpq   402085 <notify_server+0x1f4>
  401f8d:	48 8d 35 dc 18 00 00 	lea    0x18dc(%rip),%rsi        # 403870 <_IO_stdin_used+0x570>
  401f94:	bf 01 00 00 00       	mov    $0x1,%edi
  401f99:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9e:	e8 bd ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fa3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa8:	e8 03 ef ff ff       	callq  400eb0 <exit@plt>
  401fad:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401fb2:	e9 33 ff ff ff       	jmpq   401eea <notify_server+0x59>
  401fb7:	48 8d 2d 8b 17 00 00 	lea    0x178b(%rip),%rbp        # 403749 <_IO_stdin_used+0x449>
  401fbe:	e9 36 ff ff ff       	jmpq   401ef9 <notify_server+0x68>
  401fc3:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401fca:	00 
  401fcb:	48 8d 35 98 17 00 00 	lea    0x1798(%rip),%rsi        # 40376a <_IO_stdin_used+0x46a>
  401fd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdc:	e8 7f ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fe1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe6:	e8 c5 ee ff ff       	callq  400eb0 <exit@plt>
  401feb:	48 8d 3d 8e 17 00 00 	lea    0x178e(%rip),%rdi        # 403780 <_IO_stdin_used+0x480>
  401ff2:	e8 49 ed ff ff       	callq  400d40 <puts@plt>
  401ff7:	e9 89 00 00 00       	jmpq   402085 <notify_server+0x1f4>
  401ffc:	48 89 ea             	mov    %rbp,%rdx
  401fff:	48 8d 35 d2 18 00 00 	lea    0x18d2(%rip),%rsi        # 4038d8 <_IO_stdin_used+0x5d8>
  402006:	bf 01 00 00 00       	mov    $0x1,%edi
  40200b:	b8 00 00 00 00       	mov    $0x0,%eax
  402010:	e8 4b ee ff ff       	callq  400e60 <__printf_chk@plt>
  402015:	48 8b 15 44 31 20 00 	mov    0x203144(%rip),%rdx        # 605160 <user_id>
  40201c:	48 8d 35 64 17 00 00 	lea    0x1764(%rip),%rsi        # 403787 <_IO_stdin_used+0x487>
  402023:	bf 01 00 00 00       	mov    $0x1,%edi
  402028:	b8 00 00 00 00       	mov    $0x0,%eax
  40202d:	e8 2e ee ff ff       	callq  400e60 <__printf_chk@plt>
  402032:	48 8b 15 37 31 20 00 	mov    0x203137(%rip),%rdx        # 605170 <course>
  402039:	48 8d 35 54 17 00 00 	lea    0x1754(%rip),%rsi        # 403794 <_IO_stdin_used+0x494>
  402040:	bf 01 00 00 00       	mov    $0x1,%edi
  402045:	b8 00 00 00 00       	mov    $0x0,%eax
  40204a:	e8 11 ee ff ff       	callq  400e60 <__printf_chk@plt>
  40204f:	48 8b 15 12 31 20 00 	mov    0x203112(%rip),%rdx        # 605168 <lab>
  402056:	48 8d 35 43 17 00 00 	lea    0x1743(%rip),%rsi        # 4037a0 <_IO_stdin_used+0x4a0>
  40205d:	bf 01 00 00 00       	mov    $0x1,%edi
  402062:	b8 00 00 00 00       	mov    $0x0,%eax
  402067:	e8 f4 ed ff ff       	callq  400e60 <__printf_chk@plt>
  40206c:	48 89 e2             	mov    %rsp,%rdx
  40206f:	48 8d 35 33 17 00 00 	lea    0x1733(%rip),%rsi        # 4037a9 <_IO_stdin_used+0x4a9>
  402076:	bf 01 00 00 00       	mov    $0x1,%edi
  40207b:	b8 00 00 00 00       	mov    $0x0,%eax
  402080:	e8 db ed ff ff       	callq  400e60 <__printf_chk@plt>
  402085:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40208c:	00 
  40208d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402094:	00 00 
  402096:	75 0a                	jne    4020a2 <notify_server+0x211>
  402098:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40209f:	5b                   	pop    %rbx
  4020a0:	5d                   	pop    %rbp
  4020a1:	c3                   	retq   
  4020a2:	e8 4b 02 00 00       	callq  4022f2 <__stack_chk_fail>

00000000004020a7 <validate>:
  4020a7:	53                   	push   %rbx
  4020a8:	89 fb                	mov    %edi,%ebx
  4020aa:	83 3d 77 34 20 00 00 	cmpl   $0x0,0x203477(%rip)        # 605528 <is_checker>
  4020b1:	74 72                	je     402125 <validate+0x7e>
  4020b3:	39 3d 63 34 20 00    	cmp    %edi,0x203463(%rip)        # 60551c <vlevel>
  4020b9:	75 32                	jne    4020ed <validate+0x46>
  4020bb:	8b 15 57 34 20 00    	mov    0x203457(%rip),%edx        # 605518 <check_level>
  4020c1:	39 fa                	cmp    %edi,%edx
  4020c3:	75 3e                	jne    402103 <validate+0x5c>
  4020c5:	0f be 15 7c 40 20 00 	movsbl 0x20407c(%rip),%edx        # 606148 <target_prefix>
  4020cc:	4c 8d 05 6d 34 20 00 	lea    0x20346d(%rip),%r8        # 605540 <gets_buf>
  4020d3:	89 f9                	mov    %edi,%ecx
  4020d5:	48 8d 35 f7 16 00 00 	lea    0x16f7(%rip),%rsi        # 4037d3 <_IO_stdin_used+0x4d3>
  4020dc:	bf 01 00 00 00       	mov    $0x1,%edi
  4020e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e6:	e8 75 ed ff ff       	callq  400e60 <__printf_chk@plt>
  4020eb:	5b                   	pop    %rbx
  4020ec:	c3                   	retq   
  4020ed:	48 8d 3d c1 16 00 00 	lea    0x16c1(%rip),%rdi        # 4037b5 <_IO_stdin_used+0x4b5>
  4020f4:	e8 47 ec ff ff       	callq  400d40 <puts@plt>
  4020f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fe:	e8 04 fd ff ff       	callq  401e07 <check_fail>
  402103:	89 f9                	mov    %edi,%ecx
  402105:	48 8d 35 f4 17 00 00 	lea    0x17f4(%rip),%rsi        # 403900 <_IO_stdin_used+0x600>
  40210c:	bf 01 00 00 00       	mov    $0x1,%edi
  402111:	b8 00 00 00 00       	mov    $0x0,%eax
  402116:	e8 45 ed ff ff       	callq  400e60 <__printf_chk@plt>
  40211b:	b8 00 00 00 00       	mov    $0x0,%eax
  402120:	e8 e2 fc ff ff       	callq  401e07 <check_fail>
  402125:	39 3d f1 33 20 00    	cmp    %edi,0x2033f1(%rip)        # 60551c <vlevel>
  40212b:	74 1a                	je     402147 <validate+0xa0>
  40212d:	48 8d 3d 81 16 00 00 	lea    0x1681(%rip),%rdi        # 4037b5 <_IO_stdin_used+0x4b5>
  402134:	e8 07 ec ff ff       	callq  400d40 <puts@plt>
  402139:	89 de                	mov    %ebx,%esi
  40213b:	bf 00 00 00 00       	mov    $0x0,%edi
  402140:	e8 4c fd ff ff       	callq  401e91 <notify_server>
  402145:	eb a4                	jmp    4020eb <validate+0x44>
  402147:	0f be 0d fa 3f 20 00 	movsbl 0x203ffa(%rip),%ecx        # 606148 <target_prefix>
  40214e:	89 fa                	mov    %edi,%edx
  402150:	48 8d 35 d1 17 00 00 	lea    0x17d1(%rip),%rsi        # 403928 <_IO_stdin_used+0x628>
  402157:	bf 01 00 00 00       	mov    $0x1,%edi
  40215c:	b8 00 00 00 00       	mov    $0x0,%eax
  402161:	e8 fa ec ff ff       	callq  400e60 <__printf_chk@plt>
  402166:	89 de                	mov    %ebx,%esi
  402168:	bf 01 00 00 00       	mov    $0x1,%edi
  40216d:	e8 1f fd ff ff       	callq  401e91 <notify_server>
  402172:	e9 74 ff ff ff       	jmpq   4020eb <validate+0x44>

0000000000402177 <fail>:
  402177:	48 83 ec 08          	sub    $0x8,%rsp
  40217b:	83 3d a6 33 20 00 00 	cmpl   $0x0,0x2033a6(%rip)        # 605528 <is_checker>
  402182:	75 11                	jne    402195 <fail+0x1e>
  402184:	89 fe                	mov    %edi,%esi
  402186:	bf 00 00 00 00       	mov    $0x0,%edi
  40218b:	e8 01 fd ff ff       	callq  401e91 <notify_server>
  402190:	48 83 c4 08          	add    $0x8,%rsp
  402194:	c3                   	retq   
  402195:	b8 00 00 00 00       	mov    $0x0,%eax
  40219a:	e8 68 fc ff ff       	callq  401e07 <check_fail>

000000000040219f <bushandler>:
  40219f:	48 83 ec 08          	sub    $0x8,%rsp
  4021a3:	83 3d 7e 33 20 00 00 	cmpl   $0x0,0x20337e(%rip)        # 605528 <is_checker>
  4021aa:	74 16                	je     4021c2 <bushandler+0x23>
  4021ac:	48 8d 3d 35 16 00 00 	lea    0x1635(%rip),%rdi        # 4037e8 <_IO_stdin_used+0x4e8>
  4021b3:	e8 88 eb ff ff       	callq  400d40 <puts@plt>
  4021b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bd:	e8 45 fc ff ff       	callq  401e07 <check_fail>
  4021c2:	48 8d 3d 97 17 00 00 	lea    0x1797(%rip),%rdi        # 403960 <_IO_stdin_used+0x660>
  4021c9:	e8 72 eb ff ff       	callq  400d40 <puts@plt>
  4021ce:	48 8d 3d 1d 16 00 00 	lea    0x161d(%rip),%rdi        # 4037f2 <_IO_stdin_used+0x4f2>
  4021d5:	e8 66 eb ff ff       	callq  400d40 <puts@plt>
  4021da:	be 00 00 00 00       	mov    $0x0,%esi
  4021df:	bf 00 00 00 00       	mov    $0x0,%edi
  4021e4:	e8 a8 fc ff ff       	callq  401e91 <notify_server>
  4021e9:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ee:	e8 bd ec ff ff       	callq  400eb0 <exit@plt>

00000000004021f3 <seghandler>:
  4021f3:	48 83 ec 08          	sub    $0x8,%rsp
  4021f7:	83 3d 2a 33 20 00 00 	cmpl   $0x0,0x20332a(%rip)        # 605528 <is_checker>
  4021fe:	74 16                	je     402216 <seghandler+0x23>
  402200:	48 8d 3d 01 16 00 00 	lea    0x1601(%rip),%rdi        # 403808 <_IO_stdin_used+0x508>
  402207:	e8 34 eb ff ff       	callq  400d40 <puts@plt>
  40220c:	b8 00 00 00 00       	mov    $0x0,%eax
  402211:	e8 f1 fb ff ff       	callq  401e07 <check_fail>
  402216:	48 8d 3d 63 17 00 00 	lea    0x1763(%rip),%rdi        # 403980 <_IO_stdin_used+0x680>
  40221d:	e8 1e eb ff ff       	callq  400d40 <puts@plt>
  402222:	48 8d 3d c9 15 00 00 	lea    0x15c9(%rip),%rdi        # 4037f2 <_IO_stdin_used+0x4f2>
  402229:	e8 12 eb ff ff       	callq  400d40 <puts@plt>
  40222e:	be 00 00 00 00       	mov    $0x0,%esi
  402233:	bf 00 00 00 00       	mov    $0x0,%edi
  402238:	e8 54 fc ff ff       	callq  401e91 <notify_server>
  40223d:	bf 01 00 00 00       	mov    $0x1,%edi
  402242:	e8 69 ec ff ff       	callq  400eb0 <exit@plt>

0000000000402247 <illegalhandler>:
  402247:	48 83 ec 08          	sub    $0x8,%rsp
  40224b:	83 3d d6 32 20 00 00 	cmpl   $0x0,0x2032d6(%rip)        # 605528 <is_checker>
  402252:	74 16                	je     40226a <illegalhandler+0x23>
  402254:	48 8d 3d c0 15 00 00 	lea    0x15c0(%rip),%rdi        # 40381b <_IO_stdin_used+0x51b>
  40225b:	e8 e0 ea ff ff       	callq  400d40 <puts@plt>
  402260:	b8 00 00 00 00       	mov    $0x0,%eax
  402265:	e8 9d fb ff ff       	callq  401e07 <check_fail>
  40226a:	48 8d 3d 37 17 00 00 	lea    0x1737(%rip),%rdi        # 4039a8 <_IO_stdin_used+0x6a8>
  402271:	e8 ca ea ff ff       	callq  400d40 <puts@plt>
  402276:	48 8d 3d 75 15 00 00 	lea    0x1575(%rip),%rdi        # 4037f2 <_IO_stdin_used+0x4f2>
  40227d:	e8 be ea ff ff       	callq  400d40 <puts@plt>
  402282:	be 00 00 00 00       	mov    $0x0,%esi
  402287:	bf 00 00 00 00       	mov    $0x0,%edi
  40228c:	e8 00 fc ff ff       	callq  401e91 <notify_server>
  402291:	bf 01 00 00 00       	mov    $0x1,%edi
  402296:	e8 15 ec ff ff       	callq  400eb0 <exit@plt>

000000000040229b <sigalrmhandler>:
  40229b:	48 83 ec 08          	sub    $0x8,%rsp
  40229f:	83 3d 82 32 20 00 00 	cmpl   $0x0,0x203282(%rip)        # 605528 <is_checker>
  4022a6:	74 16                	je     4022be <sigalrmhandler+0x23>
  4022a8:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 40382f <_IO_stdin_used+0x52f>
  4022af:	e8 8c ea ff ff       	callq  400d40 <puts@plt>
  4022b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b9:	e8 49 fb ff ff       	callq  401e07 <check_fail>
  4022be:	ba 02 00 00 00       	mov    $0x2,%edx
  4022c3:	48 8d 35 0e 17 00 00 	lea    0x170e(%rip),%rsi        # 4039d8 <_IO_stdin_used+0x6d8>
  4022ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4022cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d4:	e8 87 eb ff ff       	callq  400e60 <__printf_chk@plt>
  4022d9:	be 00 00 00 00       	mov    $0x0,%esi
  4022de:	bf 00 00 00 00       	mov    $0x0,%edi
  4022e3:	e8 a9 fb ff ff       	callq  401e91 <notify_server>
  4022e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4022ed:	e8 be eb ff ff       	callq  400eb0 <exit@plt>

00000000004022f2 <__stack_chk_fail>:
  4022f2:	48 83 ec 08          	sub    $0x8,%rsp
  4022f6:	83 3d 2b 32 20 00 00 	cmpl   $0x0,0x20322b(%rip)        # 605528 <is_checker>
  4022fd:	74 16                	je     402315 <__stack_chk_fail+0x23>
  4022ff:	48 8d 3d 31 15 00 00 	lea    0x1531(%rip),%rdi        # 403837 <_IO_stdin_used+0x537>
  402306:	e8 35 ea ff ff       	callq  400d40 <puts@plt>
  40230b:	b8 00 00 00 00       	mov    $0x0,%eax
  402310:	e8 f2 fa ff ff       	callq  401e07 <check_fail>
  402315:	48 8d 3d f4 16 00 00 	lea    0x16f4(%rip),%rdi        # 403a10 <_IO_stdin_used+0x710>
  40231c:	e8 1f ea ff ff       	callq  400d40 <puts@plt>
  402321:	48 8d 3d ca 14 00 00 	lea    0x14ca(%rip),%rdi        # 4037f2 <_IO_stdin_used+0x4f2>
  402328:	e8 13 ea ff ff       	callq  400d40 <puts@plt>
  40232d:	be 00 00 00 00       	mov    $0x0,%esi
  402332:	bf 00 00 00 00       	mov    $0x0,%edi
  402337:	e8 55 fb ff ff       	callq  401e91 <notify_server>
  40233c:	bf 01 00 00 00       	mov    $0x1,%edi
  402341:	e8 6a eb ff ff       	callq  400eb0 <exit@plt>

0000000000402346 <launch>:
  402346:	55                   	push   %rbp
  402347:	48 89 e5             	mov    %rsp,%rbp
  40234a:	53                   	push   %rbx
  40234b:	48 83 ec 18          	sub    $0x18,%rsp
  40234f:	48 89 fa             	mov    %rdi,%rdx
  402352:	89 f3                	mov    %esi,%ebx
  402354:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40235b:	00 00 
  40235d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402361:	31 c0                	xor    %eax,%eax
  402363:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402367:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40236b:	48 29 c4             	sub    %rax,%rsp
  40236e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402373:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402377:	be f4 00 00 00       	mov    $0xf4,%esi
  40237c:	e8 ef e9 ff ff       	callq  400d70 <memset@plt>
  402381:	48 8b 05 38 31 20 00 	mov    0x203138(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402388:	48 39 05 81 31 20 00 	cmp    %rax,0x203181(%rip)        # 605510 <infile>
  40238f:	74 42                	je     4023d3 <launch+0x8d>
  402391:	c7 05 81 31 20 00 00 	movl   $0x0,0x203181(%rip)        # 60551c <vlevel>
  402398:	00 00 00 
  40239b:	85 db                	test   %ebx,%ebx
  40239d:	75 4c                	jne    4023eb <launch+0xa5>
  40239f:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a4:	e8 04 f8 ff ff       	callq  401bad <test>
  4023a9:	83 3d 78 31 20 00 00 	cmpl   $0x0,0x203178(%rip)        # 605528 <is_checker>
  4023b0:	75 45                	jne    4023f7 <launch+0xb1>
  4023b2:	48 8d 3d a5 14 00 00 	lea    0x14a5(%rip),%rdi        # 40385e <_IO_stdin_used+0x55e>
  4023b9:	e8 82 e9 ff ff       	callq  400d40 <puts@plt>
  4023be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023c2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4023c9:	00 00 
  4023cb:	75 40                	jne    40240d <launch+0xc7>
  4023cd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4023d1:	c9                   	leaveq 
  4023d2:	c3                   	retq   
  4023d3:	48 8d 35 6c 14 00 00 	lea    0x146c(%rip),%rsi        # 403846 <_IO_stdin_used+0x546>
  4023da:	bf 01 00 00 00       	mov    $0x1,%edi
  4023df:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e4:	e8 77 ea ff ff       	callq  400e60 <__printf_chk@plt>
  4023e9:	eb a6                	jmp    402391 <launch+0x4b>
  4023eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023f0:	e8 e3 f7 ff ff       	callq  401bd8 <test2>
  4023f5:	eb b2                	jmp    4023a9 <launch+0x63>
  4023f7:	48 8d 3d 55 14 00 00 	lea    0x1455(%rip),%rdi        # 403853 <_IO_stdin_used+0x553>
  4023fe:	e8 3d e9 ff ff       	callq  400d40 <puts@plt>
  402403:	b8 00 00 00 00       	mov    $0x0,%eax
  402408:	e8 fa f9 ff ff       	callq  401e07 <check_fail>
  40240d:	e8 e0 fe ff ff       	callq  4022f2 <__stack_chk_fail>

0000000000402412 <stable_launch>:
  402412:	55                   	push   %rbp
  402413:	53                   	push   %rbx
  402414:	48 83 ec 08          	sub    $0x8,%rsp
  402418:	89 f5                	mov    %esi,%ebp
  40241a:	48 89 3d e7 30 20 00 	mov    %rdi,0x2030e7(%rip)        # 605508 <global_offset>
  402421:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402427:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40242d:	b9 32 01 00 00       	mov    $0x132,%ecx
  402432:	ba 07 00 00 00       	mov    $0x7,%edx
  402437:	be 00 00 10 00       	mov    $0x100000,%esi
  40243c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402441:	e8 1a e9 ff ff       	callq  400d60 <mmap@plt>
  402446:	48 89 c3             	mov    %rax,%rbx
  402449:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40244f:	75 4a                	jne    40249b <stable_launch+0x89>
  402451:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402458:	48 89 15 f1 3c 20 00 	mov    %rdx,0x203cf1(%rip)        # 606150 <stack_top>
  40245f:	48 89 e0             	mov    %rsp,%rax
  402462:	48 89 d4             	mov    %rdx,%rsp
  402465:	48 89 c2             	mov    %rax,%rdx
  402468:	48 89 15 91 30 20 00 	mov    %rdx,0x203091(%rip)        # 605500 <global_save_stack>
  40246f:	89 ee                	mov    %ebp,%esi
  402471:	48 8b 3d 90 30 20 00 	mov    0x203090(%rip),%rdi        # 605508 <global_offset>
  402478:	e8 c9 fe ff ff       	callq  402346 <launch>
  40247d:	48 8b 05 7c 30 20 00 	mov    0x20307c(%rip),%rax        # 605500 <global_save_stack>
  402484:	48 89 c4             	mov    %rax,%rsp
  402487:	be 00 00 10 00       	mov    $0x100000,%esi
  40248c:	48 89 df             	mov    %rbx,%rdi
  40248f:	e8 bc e9 ff ff       	callq  400e50 <munmap@plt>
  402494:	48 83 c4 08          	add    $0x8,%rsp
  402498:	5b                   	pop    %rbx
  402499:	5d                   	pop    %rbp
  40249a:	c3                   	retq   
  40249b:	be 00 00 10 00       	mov    $0x100000,%esi
  4024a0:	48 89 c7             	mov    %rax,%rdi
  4024a3:	e8 a8 e9 ff ff       	callq  400e50 <munmap@plt>
  4024a8:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4024ad:	48 8d 15 84 15 00 00 	lea    0x1584(%rip),%rdx        # 403a38 <_IO_stdin_used+0x738>
  4024b4:	be 01 00 00 00       	mov    $0x1,%esi
  4024b9:	48 8b 3d 20 30 20 00 	mov    0x203020(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4024c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c5:	e8 06 ea ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4024ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4024cf:	e8 dc e9 ff ff       	callq  400eb0 <exit@plt>

00000000004024d4 <rio_readinitb>:
  4024d4:	89 37                	mov    %esi,(%rdi)
  4024d6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4024dd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4024e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4024e5:	c3                   	retq   

00000000004024e6 <sigalrm_handler>:
  4024e6:	48 83 ec 08          	sub    $0x8,%rsp
  4024ea:	b9 00 00 00 00       	mov    $0x0,%ecx
  4024ef:	48 8d 15 7a 15 00 00 	lea    0x157a(%rip),%rdx        # 403a70 <trans_char+0x10>
  4024f6:	be 01 00 00 00       	mov    $0x1,%esi
  4024fb:	48 8b 3d de 2f 20 00 	mov    0x202fde(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402502:	b8 00 00 00 00       	mov    $0x0,%eax
  402507:	e8 c4 e9 ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40250c:	bf 01 00 00 00       	mov    $0x1,%edi
  402511:	e8 9a e9 ff ff       	callq  400eb0 <exit@plt>

0000000000402516 <rio_writen>:
  402516:	41 55                	push   %r13
  402518:	41 54                	push   %r12
  40251a:	55                   	push   %rbp
  40251b:	53                   	push   %rbx
  40251c:	48 83 ec 08          	sub    $0x8,%rsp
  402520:	41 89 fc             	mov    %edi,%r12d
  402523:	48 89 f5             	mov    %rsi,%rbp
  402526:	49 89 d5             	mov    %rdx,%r13
  402529:	48 89 d3             	mov    %rdx,%rbx
  40252c:	eb 06                	jmp    402534 <rio_writen+0x1e>
  40252e:	48 29 c3             	sub    %rax,%rbx
  402531:	48 01 c5             	add    %rax,%rbp
  402534:	48 85 db             	test   %rbx,%rbx
  402537:	74 24                	je     40255d <rio_writen+0x47>
  402539:	48 89 da             	mov    %rbx,%rdx
  40253c:	48 89 ee             	mov    %rbp,%rsi
  40253f:	44 89 e7             	mov    %r12d,%edi
  402542:	e8 09 e8 ff ff       	callq  400d50 <write@plt>
  402547:	48 85 c0             	test   %rax,%rax
  40254a:	7f e2                	jg     40252e <rio_writen+0x18>
  40254c:	e8 9f e7 ff ff       	callq  400cf0 <__errno_location@plt>
  402551:	83 38 04             	cmpl   $0x4,(%rax)
  402554:	75 15                	jne    40256b <rio_writen+0x55>
  402556:	b8 00 00 00 00       	mov    $0x0,%eax
  40255b:	eb d1                	jmp    40252e <rio_writen+0x18>
  40255d:	4c 89 e8             	mov    %r13,%rax
  402560:	48 83 c4 08          	add    $0x8,%rsp
  402564:	5b                   	pop    %rbx
  402565:	5d                   	pop    %rbp
  402566:	41 5c                	pop    %r12
  402568:	41 5d                	pop    %r13
  40256a:	c3                   	retq   
  40256b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402572:	eb ec                	jmp    402560 <rio_writen+0x4a>

0000000000402574 <rio_read>:
  402574:	41 55                	push   %r13
  402576:	41 54                	push   %r12
  402578:	55                   	push   %rbp
  402579:	53                   	push   %rbx
  40257a:	48 83 ec 08          	sub    $0x8,%rsp
  40257e:	48 89 fb             	mov    %rdi,%rbx
  402581:	49 89 f5             	mov    %rsi,%r13
  402584:	49 89 d4             	mov    %rdx,%r12
  402587:	eb 0a                	jmp    402593 <rio_read+0x1f>
  402589:	e8 62 e7 ff ff       	callq  400cf0 <__errno_location@plt>
  40258e:	83 38 04             	cmpl   $0x4,(%rax)
  402591:	75 5c                	jne    4025ef <rio_read+0x7b>
  402593:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402596:	85 ed                	test   %ebp,%ebp
  402598:	7f 24                	jg     4025be <rio_read+0x4a>
  40259a:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40259e:	8b 3b                	mov    (%rbx),%edi
  4025a0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025a5:	48 89 ee             	mov    %rbp,%rsi
  4025a8:	e8 f3 e7 ff ff       	callq  400da0 <read@plt>
  4025ad:	89 43 04             	mov    %eax,0x4(%rbx)
  4025b0:	85 c0                	test   %eax,%eax
  4025b2:	78 d5                	js     402589 <rio_read+0x15>
  4025b4:	85 c0                	test   %eax,%eax
  4025b6:	74 40                	je     4025f8 <rio_read+0x84>
  4025b8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4025bc:	eb d5                	jmp    402593 <rio_read+0x1f>
  4025be:	89 e8                	mov    %ebp,%eax
  4025c0:	4c 39 e0             	cmp    %r12,%rax
  4025c3:	72 03                	jb     4025c8 <rio_read+0x54>
  4025c5:	44 89 e5             	mov    %r12d,%ebp
  4025c8:	4c 63 e5             	movslq %ebp,%r12
  4025cb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4025cf:	4c 89 e2             	mov    %r12,%rdx
  4025d2:	4c 89 ef             	mov    %r13,%rdi
  4025d5:	e8 26 e8 ff ff       	callq  400e00 <memcpy@plt>
  4025da:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4025de:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4025e1:	4c 89 e0             	mov    %r12,%rax
  4025e4:	48 83 c4 08          	add    $0x8,%rsp
  4025e8:	5b                   	pop    %rbx
  4025e9:	5d                   	pop    %rbp
  4025ea:	41 5c                	pop    %r12
  4025ec:	41 5d                	pop    %r13
  4025ee:	c3                   	retq   
  4025ef:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025f6:	eb ec                	jmp    4025e4 <rio_read+0x70>
  4025f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4025fd:	eb e5                	jmp    4025e4 <rio_read+0x70>

00000000004025ff <rio_readlineb>:
  4025ff:	41 55                	push   %r13
  402601:	41 54                	push   %r12
  402603:	55                   	push   %rbp
  402604:	53                   	push   %rbx
  402605:	48 83 ec 18          	sub    $0x18,%rsp
  402609:	49 89 fd             	mov    %rdi,%r13
  40260c:	48 89 f5             	mov    %rsi,%rbp
  40260f:	49 89 d4             	mov    %rdx,%r12
  402612:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402619:	00 00 
  40261b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402620:	31 c0                	xor    %eax,%eax
  402622:	bb 01 00 00 00       	mov    $0x1,%ebx
  402627:	4c 39 e3             	cmp    %r12,%rbx
  40262a:	73 47                	jae    402673 <rio_readlineb+0x74>
  40262c:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402631:	ba 01 00 00 00       	mov    $0x1,%edx
  402636:	4c 89 ef             	mov    %r13,%rdi
  402639:	e8 36 ff ff ff       	callq  402574 <rio_read>
  40263e:	83 f8 01             	cmp    $0x1,%eax
  402641:	75 1c                	jne    40265f <rio_readlineb+0x60>
  402643:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402647:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40264c:	88 55 00             	mov    %dl,0x0(%rbp)
  40264f:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402654:	74 1a                	je     402670 <rio_readlineb+0x71>
  402656:	48 83 c3 01          	add    $0x1,%rbx
  40265a:	48 89 c5             	mov    %rax,%rbp
  40265d:	eb c8                	jmp    402627 <rio_readlineb+0x28>
  40265f:	85 c0                	test   %eax,%eax
  402661:	75 32                	jne    402695 <rio_readlineb+0x96>
  402663:	48 83 fb 01          	cmp    $0x1,%rbx
  402667:	75 0a                	jne    402673 <rio_readlineb+0x74>
  402669:	b8 00 00 00 00       	mov    $0x0,%eax
  40266e:	eb 0a                	jmp    40267a <rio_readlineb+0x7b>
  402670:	48 89 c5             	mov    %rax,%rbp
  402673:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402677:	48 89 d8             	mov    %rbx,%rax
  40267a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40267f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402686:	00 00 
  402688:	75 14                	jne    40269e <rio_readlineb+0x9f>
  40268a:	48 83 c4 18          	add    $0x18,%rsp
  40268e:	5b                   	pop    %rbx
  40268f:	5d                   	pop    %rbp
  402690:	41 5c                	pop    %r12
  402692:	41 5d                	pop    %r13
  402694:	c3                   	retq   
  402695:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40269c:	eb dc                	jmp    40267a <rio_readlineb+0x7b>
  40269e:	e8 4f fc ff ff       	callq  4022f2 <__stack_chk_fail>

00000000004026a3 <urlencode>:
  4026a3:	41 54                	push   %r12
  4026a5:	55                   	push   %rbp
  4026a6:	53                   	push   %rbx
  4026a7:	48 83 ec 10          	sub    $0x10,%rsp
  4026ab:	48 89 fb             	mov    %rdi,%rbx
  4026ae:	48 89 f5             	mov    %rsi,%rbp
  4026b1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4026b8:	00 00 
  4026ba:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4026bf:	31 c0                	xor    %eax,%eax
  4026c1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4026c8:	f2 ae                	repnz scas %es:(%rdi),%al
  4026ca:	48 89 ce             	mov    %rcx,%rsi
  4026cd:	48 f7 d6             	not    %rsi
  4026d0:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4026d3:	eb 0f                	jmp    4026e4 <urlencode+0x41>
  4026d5:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4026d9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4026dd:	48 83 c3 01          	add    $0x1,%rbx
  4026e1:	44 89 e0             	mov    %r12d,%eax
  4026e4:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4026e8:	85 c0                	test   %eax,%eax
  4026ea:	0f 84 a8 00 00 00    	je     402798 <urlencode+0xf5>
  4026f0:	44 0f b6 03          	movzbl (%rbx),%r8d
  4026f4:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4026f8:	0f 94 c2             	sete   %dl
  4026fb:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4026ff:	0f 94 c0             	sete   %al
  402702:	08 c2                	or     %al,%dl
  402704:	75 cf                	jne    4026d5 <urlencode+0x32>
  402706:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40270a:	74 c9                	je     4026d5 <urlencode+0x32>
  40270c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402710:	74 c3                	je     4026d5 <urlencode+0x32>
  402712:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402716:	3c 09                	cmp    $0x9,%al
  402718:	76 bb                	jbe    4026d5 <urlencode+0x32>
  40271a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40271e:	3c 19                	cmp    $0x19,%al
  402720:	76 b3                	jbe    4026d5 <urlencode+0x32>
  402722:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402726:	3c 19                	cmp    $0x19,%al
  402728:	76 ab                	jbe    4026d5 <urlencode+0x32>
  40272a:	41 80 f8 20          	cmp    $0x20,%r8b
  40272e:	74 56                	je     402786 <urlencode+0xe3>
  402730:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402734:	3c 5f                	cmp    $0x5f,%al
  402736:	0f 96 c2             	setbe  %dl
  402739:	41 80 f8 09          	cmp    $0x9,%r8b
  40273d:	0f 94 c0             	sete   %al
  402740:	08 c2                	or     %al,%dl
  402742:	74 4f                	je     402793 <urlencode+0xf0>
  402744:	48 89 e7             	mov    %rsp,%rdi
  402747:	45 0f b6 c0          	movzbl %r8b,%r8d
  40274b:	48 8d 0d d6 13 00 00 	lea    0x13d6(%rip),%rcx        # 403b28 <trans_char+0xc8>
  402752:	ba 08 00 00 00       	mov    $0x8,%edx
  402757:	be 01 00 00 00       	mov    $0x1,%esi
  40275c:	b8 00 00 00 00       	mov    $0x0,%eax
  402761:	e8 7a e7 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402766:	0f b6 04 24          	movzbl (%rsp),%eax
  40276a:	88 45 00             	mov    %al,0x0(%rbp)
  40276d:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402772:	88 45 01             	mov    %al,0x1(%rbp)
  402775:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40277a:	88 45 02             	mov    %al,0x2(%rbp)
  40277d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402781:	e9 57 ff ff ff       	jmpq   4026dd <urlencode+0x3a>
  402786:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40278a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40278e:	e9 4a ff ff ff       	jmpq   4026dd <urlencode+0x3a>
  402793:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402798:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40279d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4027a4:	00 00 
  4027a6:	75 09                	jne    4027b1 <urlencode+0x10e>
  4027a8:	48 83 c4 10          	add    $0x10,%rsp
  4027ac:	5b                   	pop    %rbx
  4027ad:	5d                   	pop    %rbp
  4027ae:	41 5c                	pop    %r12
  4027b0:	c3                   	retq   
  4027b1:	e8 3c fb ff ff       	callq  4022f2 <__stack_chk_fail>

00000000004027b6 <submitr>:
  4027b6:	41 57                	push   %r15
  4027b8:	41 56                	push   %r14
  4027ba:	41 55                	push   %r13
  4027bc:	41 54                	push   %r12
  4027be:	55                   	push   %rbp
  4027bf:	53                   	push   %rbx
  4027c0:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4027c7:	49 89 fd             	mov    %rdi,%r13
  4027ca:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  4027ce:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  4027d3:	49 89 ce             	mov    %rcx,%r14
  4027d6:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  4027db:	4d 89 cf             	mov    %r9,%r15
  4027de:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  4027e5:	00 
  4027e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027ed:	00 00 
  4027ef:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4027f6:	00 
  4027f7:	31 c0                	xor    %eax,%eax
  4027f9:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402800:	00 
  402801:	ba 00 00 00 00       	mov    $0x0,%edx
  402806:	be 01 00 00 00       	mov    $0x1,%esi
  40280b:	bf 02 00 00 00       	mov    $0x2,%edi
  402810:	e8 db e6 ff ff       	callq  400ef0 <socket@plt>
  402815:	85 c0                	test   %eax,%eax
  402817:	0f 88 ae 02 00 00    	js     402acb <submitr+0x315>
  40281d:	89 c3                	mov    %eax,%ebx
  40281f:	4c 89 ef             	mov    %r13,%rdi
  402822:	e8 a9 e5 ff ff       	callq  400dd0 <gethostbyname@plt>
  402827:	48 85 c0             	test   %rax,%rax
  40282a:	0f 84 e7 02 00 00    	je     402b17 <submitr+0x361>
  402830:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402835:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  40283c:	00 00 
  40283e:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  402845:	00 
  402846:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  40284d:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402854:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402858:	48 8b 40 18          	mov    0x18(%rax),%rax
  40285c:	48 8b 30             	mov    (%rax),%rsi
  40285f:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402864:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402869:	e8 72 e5 ff ff       	callq  400de0 <__memmove_chk@plt>
  40286e:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402873:	66 c1 c8 08          	ror    $0x8,%ax
  402877:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40287c:	ba 10 00 00 00       	mov    $0x10,%edx
  402881:	4c 89 e6             	mov    %r12,%rsi
  402884:	89 df                	mov    %ebx,%edi
  402886:	e8 35 e6 ff ff       	callq  400ec0 <connect@plt>
  40288b:	85 c0                	test   %eax,%eax
  40288d:	0f 88 fa 02 00 00    	js     402b8d <submitr+0x3d7>
  402893:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40289a:	b8 00 00 00 00       	mov    $0x0,%eax
  40289f:	48 89 f1             	mov    %rsi,%rcx
  4028a2:	4c 89 ff             	mov    %r15,%rdi
  4028a5:	f2 ae                	repnz scas %es:(%rdi),%al
  4028a7:	48 89 ca             	mov    %rcx,%rdx
  4028aa:	48 f7 d2             	not    %rdx
  4028ad:	48 89 f1             	mov    %rsi,%rcx
  4028b0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4028b5:	f2 ae                	repnz scas %es:(%rdi),%al
  4028b7:	48 f7 d1             	not    %rcx
  4028ba:	49 89 c8             	mov    %rcx,%r8
  4028bd:	48 89 f1             	mov    %rsi,%rcx
  4028c0:	4c 89 f7             	mov    %r14,%rdi
  4028c3:	f2 ae                	repnz scas %es:(%rdi),%al
  4028c5:	48 f7 d1             	not    %rcx
  4028c8:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4028cd:	48 89 f1             	mov    %rsi,%rcx
  4028d0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4028d5:	f2 ae                	repnz scas %es:(%rdi),%al
  4028d7:	48 89 c8             	mov    %rcx,%rax
  4028da:	48 f7 d0             	not    %rax
  4028dd:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4028e2:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4028e7:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4028ee:	00 
  4028ef:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4028f5:	0f 87 fa 02 00 00    	ja     402bf5 <submitr+0x43f>
  4028fb:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402902:	00 
  402903:	b9 00 04 00 00       	mov    $0x400,%ecx
  402908:	b8 00 00 00 00       	mov    $0x0,%eax
  40290d:	48 89 f7             	mov    %rsi,%rdi
  402910:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402913:	4c 89 ff             	mov    %r15,%rdi
  402916:	e8 88 fd ff ff       	callq  4026a3 <urlencode>
  40291b:	85 c0                	test   %eax,%eax
  40291d:	0f 88 45 03 00 00    	js     402c68 <submitr+0x4b2>
  402923:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  40292a:	00 
  40292b:	48 83 ec 08          	sub    $0x8,%rsp
  40292f:	41 55                	push   %r13
  402931:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402938:	00 
  402939:	50                   	push   %rax
  40293a:	41 56                	push   %r14
  40293c:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402941:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402946:	48 8d 0d 4b 11 00 00 	lea    0x114b(%rip),%rcx        # 403a98 <trans_char+0x38>
  40294d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402952:	be 01 00 00 00       	mov    $0x1,%esi
  402957:	4c 89 e7             	mov    %r12,%rdi
  40295a:	b8 00 00 00 00       	mov    $0x0,%eax
  40295f:	e8 7c e5 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402964:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40296b:	b8 00 00 00 00       	mov    $0x0,%eax
  402970:	4c 89 e7             	mov    %r12,%rdi
  402973:	f2 ae                	repnz scas %es:(%rdi),%al
  402975:	48 89 ca             	mov    %rcx,%rdx
  402978:	48 f7 d2             	not    %rdx
  40297b:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40297f:	48 83 c4 20          	add    $0x20,%rsp
  402983:	4c 89 e6             	mov    %r12,%rsi
  402986:	89 df                	mov    %ebx,%edi
  402988:	e8 89 fb ff ff       	callq  402516 <rio_writen>
  40298d:	48 85 c0             	test   %rax,%rax
  402990:	0f 88 5d 03 00 00    	js     402cf3 <submitr+0x53d>
  402996:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40299b:	89 de                	mov    %ebx,%esi
  40299d:	4c 89 e7             	mov    %r12,%rdi
  4029a0:	e8 2f fb ff ff       	callq  4024d4 <rio_readinitb>
  4029a5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4029ac:	00 
  4029ad:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029b2:	4c 89 e7             	mov    %r12,%rdi
  4029b5:	e8 45 fc ff ff       	callq  4025ff <rio_readlineb>
  4029ba:	48 85 c0             	test   %rax,%rax
  4029bd:	0f 8e 9c 03 00 00    	jle    402d5f <submitr+0x5a9>
  4029c3:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4029c8:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4029cf:	00 
  4029d0:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4029d7:	00 
  4029d8:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4029df:	00 
  4029e0:	48 8d 35 48 11 00 00 	lea    0x1148(%rip),%rsi        # 403b2f <trans_char+0xcf>
  4029e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ec:	e8 4f e4 ff ff       	callq  400e40 <__isoc99_sscanf@plt>
  4029f1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4029f8:	00 
  4029f9:	b9 03 00 00 00       	mov    $0x3,%ecx
  4029fe:	48 8d 3d 41 11 00 00 	lea    0x1141(%rip),%rdi        # 403b46 <trans_char+0xe6>
  402a05:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a07:	0f 97 c0             	seta   %al
  402a0a:	1c 00                	sbb    $0x0,%al
  402a0c:	84 c0                	test   %al,%al
  402a0e:	0f 84 cb 03 00 00    	je     402ddf <submitr+0x629>
  402a14:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402a1b:	00 
  402a1c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402a21:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a26:	e8 d4 fb ff ff       	callq  4025ff <rio_readlineb>
  402a2b:	48 85 c0             	test   %rax,%rax
  402a2e:	7f c1                	jg     4029f1 <submitr+0x23b>
  402a30:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a37:	3a 20 43 
  402a3a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a41:	20 75 6e 
  402a44:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a48:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a4c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a53:	74 6f 20 
  402a56:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402a5d:	68 65 61 
  402a60:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a64:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a68:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a6f:	66 72 6f 
  402a72:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402a79:	6f 6c 61 
  402a7c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a80:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a84:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402a8b:	76 65 72 
  402a8e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a92:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402a96:	89 df                	mov    %ebx,%edi
  402a98:	e8 f3 e2 ff ff       	callq  400d90 <close@plt>
  402a9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa2:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402aa9:	00 
  402aaa:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ab1:	00 00 
  402ab3:	0f 85 96 04 00 00    	jne    402f4f <submitr+0x799>
  402ab9:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402ac0:	5b                   	pop    %rbx
  402ac1:	5d                   	pop    %rbp
  402ac2:	41 5c                	pop    %r12
  402ac4:	41 5d                	pop    %r13
  402ac6:	41 5e                	pop    %r14
  402ac8:	41 5f                	pop    %r15
  402aca:	c3                   	retq   
  402acb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ad2:	3a 20 43 
  402ad5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402adc:	20 75 6e 
  402adf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ae3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ae7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aee:	74 6f 20 
  402af1:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402af8:	65 20 73 
  402afb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aff:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b03:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b0a:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b15:	eb 8b                	jmp    402aa2 <submitr+0x2ec>
  402b17:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b1e:	3a 20 44 
  402b21:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402b28:	20 75 6e 
  402b2b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b2f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b33:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b3a:	74 6f 20 
  402b3d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402b44:	76 65 20 
  402b47:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b4b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b4f:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402b56:	61 62 20 
  402b59:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402b60:	72 20 61 
  402b63:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b67:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b6b:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402b72:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402b78:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402b7c:	89 df                	mov    %ebx,%edi
  402b7e:	e8 0d e2 ff ff       	callq  400d90 <close@plt>
  402b83:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b88:	e9 15 ff ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402b8d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b94:	3a 20 55 
  402b97:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402b9e:	20 74 6f 
  402ba1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ba5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ba9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402bb0:	65 63 74 
  402bb3:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402bba:	68 65 20 
  402bbd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bc1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bc5:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402bcc:	61 62 20 
  402bcf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bd3:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402bda:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402be0:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402be4:	89 df                	mov    %ebx,%edi
  402be6:	e8 a5 e1 ff ff       	callq  400d90 <close@plt>
  402beb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf0:	e9 ad fe ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402bf5:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402bfc:	3a 20 52 
  402bff:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c06:	20 73 74 
  402c09:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c0d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c11:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402c18:	74 6f 6f 
  402c1b:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402c22:	65 2e 20 
  402c25:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c29:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c2d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402c34:	61 73 65 
  402c37:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402c3e:	49 54 52 
  402c41:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c45:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c49:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402c50:	55 46 00 
  402c53:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c57:	89 df                	mov    %ebx,%edi
  402c59:	e8 32 e1 ff ff       	callq  400d90 <close@plt>
  402c5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c63:	e9 3a fe ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402c68:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c6f:	3a 20 52 
  402c72:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c79:	20 73 74 
  402c7c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c80:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c84:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402c8b:	63 6f 6e 
  402c8e:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402c95:	20 61 6e 
  402c98:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c9c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ca0:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402ca7:	67 61 6c 
  402caa:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402cb1:	6e 70 72 
  402cb4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402cb8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402cbc:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402cc3:	6c 65 20 
  402cc6:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402ccd:	63 74 65 
  402cd0:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402cd4:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402cd8:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402cde:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402ce2:	89 df                	mov    %ebx,%edi
  402ce4:	e8 a7 e0 ff ff       	callq  400d90 <close@plt>
  402ce9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cee:	e9 af fd ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402cf3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cfa:	3a 20 43 
  402cfd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d04:	20 75 6e 
  402d07:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d0b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d0f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d16:	74 6f 20 
  402d19:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402d20:	20 74 6f 
  402d23:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d27:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d2b:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402d32:	41 75 74 
  402d35:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402d3c:	73 65 72 
  402d3f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d43:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d47:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402d4e:	89 df                	mov    %ebx,%edi
  402d50:	e8 3b e0 ff ff       	callq  400d90 <close@plt>
  402d55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d5a:	e9 43 fd ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402d5f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d66:	3a 20 43 
  402d69:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d70:	20 75 6e 
  402d73:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d77:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d7b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d82:	74 6f 20 
  402d85:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402d8c:	66 69 72 
  402d8f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d93:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d97:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402d9e:	61 64 65 
  402da1:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402da8:	6d 20 41 
  402dab:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402daf:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402db3:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402dba:	62 20 73 
  402dbd:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402dc1:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402dc8:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402dce:	89 df                	mov    %ebx,%edi
  402dd0:	e8 bb df ff ff       	callq  400d90 <close@plt>
  402dd5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dda:	e9 c3 fc ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402ddf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402de6:	00 
  402de7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402dec:	ba 00 20 00 00       	mov    $0x2000,%edx
  402df1:	e8 09 f8 ff ff       	callq  4025ff <rio_readlineb>
  402df6:	48 85 c0             	test   %rax,%rax
  402df9:	0f 8e 96 00 00 00    	jle    402e95 <submitr+0x6df>
  402dff:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402e04:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402e0b:	0f 85 05 01 00 00    	jne    402f16 <submitr+0x760>
  402e11:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e18:	00 
  402e19:	48 89 ef             	mov    %rbp,%rdi
  402e1c:	e8 0f df ff ff       	callq  400d30 <strcpy@plt>
  402e21:	89 df                	mov    %ebx,%edi
  402e23:	e8 68 df ff ff       	callq  400d90 <close@plt>
  402e28:	b9 04 00 00 00       	mov    $0x4,%ecx
  402e2d:	48 8d 3d 0c 0d 00 00 	lea    0xd0c(%rip),%rdi        # 403b40 <trans_char+0xe0>
  402e34:	48 89 ee             	mov    %rbp,%rsi
  402e37:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e39:	0f 97 c0             	seta   %al
  402e3c:	1c 00                	sbb    $0x0,%al
  402e3e:	0f be c0             	movsbl %al,%eax
  402e41:	85 c0                	test   %eax,%eax
  402e43:	0f 84 59 fc ff ff    	je     402aa2 <submitr+0x2ec>
  402e49:	b9 05 00 00 00       	mov    $0x5,%ecx
  402e4e:	48 8d 3d ef 0c 00 00 	lea    0xcef(%rip),%rdi        # 403b44 <trans_char+0xe4>
  402e55:	48 89 ee             	mov    %rbp,%rsi
  402e58:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e5a:	0f 97 c0             	seta   %al
  402e5d:	1c 00                	sbb    $0x0,%al
  402e5f:	0f be c0             	movsbl %al,%eax
  402e62:	85 c0                	test   %eax,%eax
  402e64:	0f 84 38 fc ff ff    	je     402aa2 <submitr+0x2ec>
  402e6a:	b9 03 00 00 00       	mov    $0x3,%ecx
  402e6f:	48 8d 3d d3 0c 00 00 	lea    0xcd3(%rip),%rdi        # 403b49 <trans_char+0xe9>
  402e76:	48 89 ee             	mov    %rbp,%rsi
  402e79:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e7b:	0f 97 c0             	seta   %al
  402e7e:	1c 00                	sbb    $0x0,%al
  402e80:	0f be c0             	movsbl %al,%eax
  402e83:	85 c0                	test   %eax,%eax
  402e85:	0f 84 17 fc ff ff    	je     402aa2 <submitr+0x2ec>
  402e8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e90:	e9 0d fc ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402e95:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e9c:	3a 20 43 
  402e9f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ea6:	20 75 6e 
  402ea9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ead:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402eb1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eb8:	74 6f 20 
  402ebb:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402ec2:	73 74 61 
  402ec5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ec9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ecd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402ed4:	65 73 73 
  402ed7:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402ede:	72 6f 6d 
  402ee1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ee5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ee9:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ef0:	6c 61 62 
  402ef3:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402efa:	65 72 00 
  402efd:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f01:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402f05:	89 df                	mov    %ebx,%edi
  402f07:	e8 84 de ff ff       	callq  400d90 <close@plt>
  402f0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f11:	e9 8c fb ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402f16:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402f1d:	00 
  402f1e:	48 8d 0d d3 0b 00 00 	lea    0xbd3(%rip),%rcx        # 403af8 <trans_char+0x98>
  402f25:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402f2c:	be 01 00 00 00       	mov    $0x1,%esi
  402f31:	48 89 ef             	mov    %rbp,%rdi
  402f34:	b8 00 00 00 00       	mov    $0x0,%eax
  402f39:	e8 a2 df ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402f3e:	89 df                	mov    %ebx,%edi
  402f40:	e8 4b de ff ff       	callq  400d90 <close@plt>
  402f45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f4a:	e9 53 fb ff ff       	jmpq   402aa2 <submitr+0x2ec>
  402f4f:	e8 9e f3 ff ff       	callq  4022f2 <__stack_chk_fail>

0000000000402f54 <init_timeout>:
  402f54:	85 ff                	test   %edi,%edi
  402f56:	74 28                	je     402f80 <init_timeout+0x2c>
  402f58:	53                   	push   %rbx
  402f59:	89 fb                	mov    %edi,%ebx
  402f5b:	85 ff                	test   %edi,%edi
  402f5d:	78 1a                	js     402f79 <init_timeout+0x25>
  402f5f:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 4024e6 <sigalrm_handler>
  402f66:	bf 0e 00 00 00       	mov    $0xe,%edi
  402f6b:	e8 50 de ff ff       	callq  400dc0 <signal@plt>
  402f70:	89 df                	mov    %ebx,%edi
  402f72:	e8 09 de ff ff       	callq  400d80 <alarm@plt>
  402f77:	5b                   	pop    %rbx
  402f78:	c3                   	retq   
  402f79:	bb 00 00 00 00       	mov    $0x0,%ebx
  402f7e:	eb df                	jmp    402f5f <init_timeout+0xb>
  402f80:	f3 c3                	repz retq 

0000000000402f82 <init_driver>:
  402f82:	41 54                	push   %r12
  402f84:	55                   	push   %rbp
  402f85:	53                   	push   %rbx
  402f86:	48 83 ec 20          	sub    $0x20,%rsp
  402f8a:	49 89 fc             	mov    %rdi,%r12
  402f8d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f94:	00 00 
  402f96:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402f9b:	31 c0                	xor    %eax,%eax
  402f9d:	be 01 00 00 00       	mov    $0x1,%esi
  402fa2:	bf 0d 00 00 00       	mov    $0xd,%edi
  402fa7:	e8 14 de ff ff       	callq  400dc0 <signal@plt>
  402fac:	be 01 00 00 00       	mov    $0x1,%esi
  402fb1:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402fb6:	e8 05 de ff ff       	callq  400dc0 <signal@plt>
  402fbb:	be 01 00 00 00       	mov    $0x1,%esi
  402fc0:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402fc5:	e8 f6 dd ff ff       	callq  400dc0 <signal@plt>
  402fca:	ba 00 00 00 00       	mov    $0x0,%edx
  402fcf:	be 01 00 00 00       	mov    $0x1,%esi
  402fd4:	bf 02 00 00 00       	mov    $0x2,%edi
  402fd9:	e8 12 df ff ff       	callq  400ef0 <socket@plt>
  402fde:	85 c0                	test   %eax,%eax
  402fe0:	0f 88 a3 00 00 00    	js     403089 <init_driver+0x107>
  402fe6:	89 c3                	mov    %eax,%ebx
  402fe8:	48 8d 3d 5d 0b 00 00 	lea    0xb5d(%rip),%rdi        # 403b4c <trans_char+0xec>
  402fef:	e8 dc dd ff ff       	callq  400dd0 <gethostbyname@plt>
  402ff4:	48 85 c0             	test   %rax,%rax
  402ff7:	0f 84 df 00 00 00    	je     4030dc <init_driver+0x15a>
  402ffd:	48 89 e5             	mov    %rsp,%rbp
  403000:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  403007:	00 00 
  403009:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  403010:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  403016:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40301c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403020:	48 8b 40 18          	mov    0x18(%rax),%rax
  403024:	48 8b 30             	mov    (%rax),%rsi
  403027:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  40302b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403030:	e8 ab dd ff ff       	callq  400de0 <__memmove_chk@plt>
  403035:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  40303c:	ba 10 00 00 00       	mov    $0x10,%edx
  403041:	48 89 ee             	mov    %rbp,%rsi
  403044:	89 df                	mov    %ebx,%edi
  403046:	e8 75 de ff ff       	callq  400ec0 <connect@plt>
  40304b:	85 c0                	test   %eax,%eax
  40304d:	0f 88 fb 00 00 00    	js     40314e <init_driver+0x1cc>
  403053:	89 df                	mov    %ebx,%edi
  403055:	e8 36 dd ff ff       	callq  400d90 <close@plt>
  40305a:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  403061:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  403067:	b8 00 00 00 00       	mov    $0x0,%eax
  40306c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403071:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403078:	00 00 
  40307a:	0f 85 28 01 00 00    	jne    4031a8 <init_driver+0x226>
  403080:	48 83 c4 20          	add    $0x20,%rsp
  403084:	5b                   	pop    %rbx
  403085:	5d                   	pop    %rbp
  403086:	41 5c                	pop    %r12
  403088:	c3                   	retq   
  403089:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403090:	3a 20 43 
  403093:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40309a:	20 75 6e 
  40309d:	49 89 04 24          	mov    %rax,(%r12)
  4030a1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4030a6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030ad:	74 6f 20 
  4030b0:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4030b7:	65 20 73 
  4030ba:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4030bf:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4030c4:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  4030cb:	6b 65 
  4030cd:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  4030d4:	00 
  4030d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030da:	eb 90                	jmp    40306c <init_driver+0xea>
  4030dc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4030e3:	3a 20 44 
  4030e6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4030ed:	20 75 6e 
  4030f0:	49 89 04 24          	mov    %rax,(%r12)
  4030f4:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4030f9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403100:	74 6f 20 
  403103:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40310a:	76 65 20 
  40310d:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403112:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403117:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40311e:	72 20 61 
  403121:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  403126:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  40312d:	72 65 
  40312f:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  403136:	73 
  403137:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  40313d:	89 df                	mov    %ebx,%edi
  40313f:	e8 4c dc ff ff       	callq  400d90 <close@plt>
  403144:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403149:	e9 1e ff ff ff       	jmpq   40306c <init_driver+0xea>
  40314e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403155:	3a 20 55 
  403158:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40315f:	20 74 6f 
  403162:	49 89 04 24          	mov    %rax,(%r12)
  403166:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40316b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403172:	65 63 74 
  403175:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40317c:	65 72 76 
  40317f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403184:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403189:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403190:	72 
  403191:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  403197:	89 df                	mov    %ebx,%edi
  403199:	e8 f2 db ff ff       	callq  400d90 <close@plt>
  40319e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031a3:	e9 c4 fe ff ff       	jmpq   40306c <init_driver+0xea>
  4031a8:	e8 45 f1 ff ff       	callq  4022f2 <__stack_chk_fail>

00000000004031ad <driver_post>:
  4031ad:	53                   	push   %rbx
  4031ae:	4c 89 cb             	mov    %r9,%rbx
  4031b1:	45 85 c0             	test   %r8d,%r8d
  4031b4:	75 18                	jne    4031ce <driver_post+0x21>
  4031b6:	48 85 ff             	test   %rdi,%rdi
  4031b9:	74 05                	je     4031c0 <driver_post+0x13>
  4031bb:	80 3f 00             	cmpb   $0x0,(%rdi)
  4031be:	75 37                	jne    4031f7 <driver_post+0x4a>
  4031c0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4031c5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031c9:	44 89 c0             	mov    %r8d,%eax
  4031cc:	5b                   	pop    %rbx
  4031cd:	c3                   	retq   
  4031ce:	48 89 ca             	mov    %rcx,%rdx
  4031d1:	48 8d 35 84 09 00 00 	lea    0x984(%rip),%rsi        # 403b5c <trans_char+0xfc>
  4031d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4031dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4031e2:	e8 79 dc ff ff       	callq  400e60 <__printf_chk@plt>
  4031e7:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4031ec:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4031f5:	eb d5                	jmp    4031cc <driver_post+0x1f>
  4031f7:	48 83 ec 08          	sub    $0x8,%rsp
  4031fb:	41 51                	push   %r9
  4031fd:	49 89 c9             	mov    %rcx,%r9
  403200:	49 89 d0             	mov    %rdx,%r8
  403203:	48 89 f9             	mov    %rdi,%rcx
  403206:	48 89 f2             	mov    %rsi,%rdx
  403209:	be b8 0b 00 00       	mov    $0xbb8,%esi
  40320e:	48 8d 3d 37 09 00 00 	lea    0x937(%rip),%rdi        # 403b4c <trans_char+0xec>
  403215:	e8 9c f5 ff ff       	callq  4027b6 <submitr>
  40321a:	48 83 c4 10          	add    $0x10,%rsp
  40321e:	eb ac                	jmp    4031cc <driver_post+0x1f>

0000000000403220 <check>:
  403220:	89 f8                	mov    %edi,%eax
  403222:	c1 e8 1c             	shr    $0x1c,%eax
  403225:	85 c0                	test   %eax,%eax
  403227:	74 1d                	je     403246 <check+0x26>
  403229:	b9 00 00 00 00       	mov    $0x0,%ecx
  40322e:	83 f9 1f             	cmp    $0x1f,%ecx
  403231:	7f 0d                	jg     403240 <check+0x20>
  403233:	89 f8                	mov    %edi,%eax
  403235:	d3 e8                	shr    %cl,%eax
  403237:	3c 0a                	cmp    $0xa,%al
  403239:	74 11                	je     40324c <check+0x2c>
  40323b:	83 c1 08             	add    $0x8,%ecx
  40323e:	eb ee                	jmp    40322e <check+0xe>
  403240:	b8 01 00 00 00       	mov    $0x1,%eax
  403245:	c3                   	retq   
  403246:	b8 00 00 00 00       	mov    $0x0,%eax
  40324b:	c3                   	retq   
  40324c:	b8 00 00 00 00       	mov    $0x0,%eax
  403251:	c3                   	retq   

0000000000403252 <gencookie>:
  403252:	53                   	push   %rbx
  403253:	83 c7 01             	add    $0x1,%edi
  403256:	e8 a5 da ff ff       	callq  400d00 <srandom@plt>
  40325b:	e8 c0 db ff ff       	callq  400e20 <random@plt>
  403260:	89 c3                	mov    %eax,%ebx
  403262:	89 c7                	mov    %eax,%edi
  403264:	e8 b7 ff ff ff       	callq  403220 <check>
  403269:	85 c0                	test   %eax,%eax
  40326b:	74 ee                	je     40325b <gencookie+0x9>
  40326d:	89 d8                	mov    %ebx,%eax
  40326f:	5b                   	pop    %rbx
  403270:	c3                   	retq   
  403271:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403278:	00 00 00 
  40327b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403280 <__libc_csu_init>:
  403280:	41 57                	push   %r15
  403282:	41 56                	push   %r14
  403284:	49 89 d7             	mov    %rdx,%r15
  403287:	41 55                	push   %r13
  403289:	41 54                	push   %r12
  40328b:	4c 8d 25 6e 1b 20 00 	lea    0x201b6e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403292:	55                   	push   %rbp
  403293:	48 8d 2d 6e 1b 20 00 	lea    0x201b6e(%rip),%rbp        # 604e08 <__init_array_end>
  40329a:	53                   	push   %rbx
  40329b:	41 89 fd             	mov    %edi,%r13d
  40329e:	49 89 f6             	mov    %rsi,%r14
  4032a1:	4c 29 e5             	sub    %r12,%rbp
  4032a4:	48 83 ec 08          	sub    $0x8,%rsp
  4032a8:	48 c1 fd 03          	sar    $0x3,%rbp
  4032ac:	e8 ff d9 ff ff       	callq  400cb0 <_init>
  4032b1:	48 85 ed             	test   %rbp,%rbp
  4032b4:	74 20                	je     4032d6 <__libc_csu_init+0x56>
  4032b6:	31 db                	xor    %ebx,%ebx
  4032b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4032bf:	00 
  4032c0:	4c 89 fa             	mov    %r15,%rdx
  4032c3:	4c 89 f6             	mov    %r14,%rsi
  4032c6:	44 89 ef             	mov    %r13d,%edi
  4032c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4032cd:	48 83 c3 01          	add    $0x1,%rbx
  4032d1:	48 39 dd             	cmp    %rbx,%rbp
  4032d4:	75 ea                	jne    4032c0 <__libc_csu_init+0x40>
  4032d6:	48 83 c4 08          	add    $0x8,%rsp
  4032da:	5b                   	pop    %rbx
  4032db:	5d                   	pop    %rbp
  4032dc:	41 5c                	pop    %r12
  4032de:	41 5d                	pop    %r13
  4032e0:	41 5e                	pop    %r14
  4032e2:	41 5f                	pop    %r15
  4032e4:	c3                   	retq   
  4032e5:	90                   	nop
  4032e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4032ed:	00 00 00 

00000000004032f0 <__libc_csu_fini>:
  4032f0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004032f4 <_fini>:
  4032f4:	48 83 ec 08          	sub    $0x8,%rsp
  4032f8:	48 83 c4 08          	add    $0x8,%rsp
  4032fc:	c3                   	retq   
