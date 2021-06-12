ctarget:     file format elf64-x86-64


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
  400f0f:	49 c7 c0 c0 31 40 00 	mov    $0x4031c0,%r8
  400f16:	48 c7 c1 50 31 40 00 	mov    $0x403150,%rcx
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
  400ff7:	48 8d 35 da 21 00 00 	lea    0x21da(%rip),%rsi        # 4031d8 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40100d:	48 8d 3d fc 21 00 00 	lea    0x21fc(%rip),%rdi        # 403210 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	callq  400d40 <puts@plt>
  401019:	48 8d 3d 80 23 00 00 	lea    0x2380(%rip),%rdi        # 4033a0 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	callq  400d40 <puts@plt>
  401025:	48 8d 3d 0c 22 00 00 	lea    0x220c(%rip),%rdi        # 403238 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	callq  400d40 <puts@plt>
  401031:	48 8d 3d 82 23 00 00 	lea    0x2382(%rip),%rdi        # 4033ba <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	callq  400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	callq  400eb0 <exit@plt>
  401047:	48 8d 35 88 23 00 00 	lea    0x2388(%rip),%rsi        # 4033d6 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40105d:	48 8d 3d fc 21 00 00 	lea    0x21fc(%rip),%rdi        # 403260 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	callq  400d40 <puts@plt>
  401069:	48 8d 3d 18 22 00 00 	lea    0x2218(%rip),%rdi        # 403288 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	callq  400d40 <puts@plt>
  401075:	48 8d 3d 78 23 00 00 	lea    0x2378(%rip),%rdi        # 4033f4 <_IO_stdin_used+0x224>
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
  4010ad:	e8 7e 20 00 00       	callq  403130 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 71 20 00 00       	callq  403130 <gencookie>
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
  4010ff:	c6 05 42 50 20 00 63 	movb   $0x63,0x205042(%rip)        # 606148 <target_prefix>
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
  40118a:	48 8d 3d 27 21 00 00 	lea    0x2127(%rip),%rdi        # 4032b8 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	callq  400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	callq  400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 aa 1c 00 00       	callq  402e60 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 63 21 00 00 	lea    0x2163(%rip),%rsi        # 403330 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	callq  400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 00 21 00 00 	lea    0x2100(%rip),%rsi        # 4032f0 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	callq  400eb0 <exit@plt>
  401209:	e8 c2 0f 00 00       	callq  4021d0 <__stack_chk_fail>

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
  401251:	48 c7 c6 d1 20 40 00 	mov    $0x4020d1,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	callq  400dc0 <signal@plt>
  401262:	48 c7 c6 7d 20 40 00 	mov    $0x40207d,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	callq  400dc0 <signal@plt>
  401273:	48 c7 c6 25 21 40 00 	mov    $0x402125,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	callq  400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 79 21 00 00 	lea    0x2179(%rip),%r12        # 40340d <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmpq   401340 <main+0x132>
  4012b3:	48 c7 c6 79 21 40 00 	mov    $0x402179,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	callq  400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	callq  400d80 <alarm@plt>
  4012ce:	4c 8d 25 3d 21 00 00 	lea    0x213d(%rip),%r12        # 403412 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	callq  400fe7 <usage>
  4012df:	48 8d 35 fa 21 00 00 	lea    0x21fa(%rip),%rsi        # 4034e0 <_IO_stdin_used+0x310>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	callq  400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 10 21 00 00 	lea    0x2110(%rip),%rdx        # 40341c <_IO_stdin_used+0x24c>
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
  40135e:	48 8d 0d f7 20 00 00 	lea    0x20f7(%rip),%rcx        # 40345c <_IO_stdin_used+0x28c>
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
  4013ab:	48 8d 35 87 20 00 00 	lea    0x2087(%rip),%rsi        # 403439 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	callq  400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	callq  400fe7 <usage>
  4013c9:	be 00 00 00 00       	mov    $0x0,%esi
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
  4013fe:	48 8d 35 53 1f 00 00 	lea    0x1f53(%rip),%rsi        # 403358 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	callq  400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 c7 08 00 00       	callq  401ce5 <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 21 20 00 00 	lea    0x2021(%rip),%rsi        # 40344c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	callq  400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 a5 0e 00 00       	callq  4022f0 <stable_launch>
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
  40146d:	e8 5e 0d 00 00       	callq  4021d0 <__stack_chk_fail>

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
  4019db:	e8 f0 07 00 00       	callq  4021d0 <__stack_chk_fail>

00000000004019e0 <getbuf>:
  4019e0:	48 83 ec 28          	sub    $0x28,%rsp
  4019e4:	48 89 e7             	mov    %rsp,%rdi
  4019e7:	e8 31 03 00 00       	callq  401d1d <Gets>
  4019ec:	b8 01 00 00 00       	mov    $0x1,%eax
  4019f1:	48 83 c4 28          	add    $0x28,%rsp
  4019f5:	c3                   	retq   

00000000004019f6 <getbuf_withcanary>:
  4019f6:	55                   	push   %rbp
  4019f7:	48 89 e5             	mov    %rsp,%rbp
  4019fa:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401a01:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a08:	00 00 
  401a0a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a0e:	31 c0                	xor    %eax,%eax
  401a10:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401a17:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a1e:	48 89 c7             	mov    %rax,%rdi
  401a21:	e8 f7 02 00 00       	callq  401d1d <Gets>
  401a26:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401a29:	48 98                	cltq   
  401a2b:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401a32:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401a36:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a3d:	ba 80 00 00 00       	mov    $0x80,%edx
  401a42:	48 89 c6             	mov    %rax,%rsi
  401a45:	48 89 cf             	mov    %rcx,%rdi
  401a48:	e8 b3 f3 ff ff       	callq  400e00 <memcpy@plt>
  401a4d:	b8 01 00 00 00       	mov    $0x1,%eax
  401a52:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401a56:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401a5d:	00 00 
  401a5f:	74 05                	je     401a66 <getbuf_withcanary+0x70>
  401a61:	e8 6a 07 00 00       	callq  4021d0 <__stack_chk_fail>
  401a66:	c9                   	leaveq 
  401a67:	c3                   	retq   

0000000000401a68 <touch1>:
  401a68:	48 83 ec 08          	sub    $0x8,%rsp
  401a6c:	c7 05 a6 3a 20 00 01 	movl   $0x1,0x203aa6(%rip)        # 60551c <vlevel>
  401a73:	00 00 00 
  401a76:	48 8d 3d 65 1a 00 00 	lea    0x1a65(%rip),%rdi        # 4034e2 <_IO_stdin_used+0x312>
  401a7d:	e8 be f2 ff ff       	callq  400d40 <puts@plt>
  401a82:	bf 01 00 00 00       	mov    $0x1,%edi
  401a87:	e8 f9 04 00 00       	callq  401f85 <validate>
  401a8c:	bf 00 00 00 00       	mov    $0x0,%edi
  401a91:	e8 1a f4 ff ff       	callq  400eb0 <exit@plt>

0000000000401a96 <touch2>:
  401a96:	48 83 ec 08          	sub    $0x8,%rsp
  401a9a:	89 fa                	mov    %edi,%edx
  401a9c:	c7 05 76 3a 20 00 02 	movl   $0x2,0x203a76(%rip)        # 60551c <vlevel>
  401aa3:	00 00 00 
  401aa6:	39 3d 78 3a 20 00    	cmp    %edi,0x203a78(%rip)        # 605524 <cookie>
  401aac:	74 2a                	je     401ad8 <touch2+0x42>
  401aae:	48 8d 35 7b 1a 00 00 	lea    0x1a7b(%rip),%rsi        # 403530 <_IO_stdin_used+0x360>
  401ab5:	bf 01 00 00 00       	mov    $0x1,%edi
  401aba:	b8 00 00 00 00       	mov    $0x0,%eax
  401abf:	e8 9c f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401ac4:	bf 02 00 00 00       	mov    $0x2,%edi
  401ac9:	e8 87 05 00 00       	callq  402055 <fail>
  401ace:	bf 00 00 00 00       	mov    $0x0,%edi
  401ad3:	e8 d8 f3 ff ff       	callq  400eb0 <exit@plt>
  401ad8:	48 8d 35 29 1a 00 00 	lea    0x1a29(%rip),%rsi        # 403508 <_IO_stdin_used+0x338>
  401adf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ae4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae9:	e8 72 f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401aee:	bf 02 00 00 00       	mov    $0x2,%edi
  401af3:	e8 8d 04 00 00       	callq  401f85 <validate>
  401af8:	eb d4                	jmp    401ace <touch2+0x38>

0000000000401afa <hexmatch>:
  401afa:	41 54                	push   %r12
  401afc:	55                   	push   %rbp
  401afd:	53                   	push   %rbx
  401afe:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401b02:	89 fd                	mov    %edi,%ebp
  401b04:	48 89 f3             	mov    %rsi,%rbx
  401b07:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b0e:	00 00 
  401b10:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401b15:	31 c0                	xor    %eax,%eax
  401b17:	e8 04 f3 ff ff       	callq  400e20 <random@plt>
  401b1c:	48 89 c1             	mov    %rax,%rcx
  401b1f:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401b26:	0a d7 a3 
  401b29:	48 f7 ea             	imul   %rdx
  401b2c:	48 01 ca             	add    %rcx,%rdx
  401b2f:	48 c1 fa 06          	sar    $0x6,%rdx
  401b33:	48 89 c8             	mov    %rcx,%rax
  401b36:	48 c1 f8 3f          	sar    $0x3f,%rax
  401b3a:	48 29 c2             	sub    %rax,%rdx
  401b3d:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b41:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b45:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b4c:	00 
  401b4d:	48 29 c1             	sub    %rax,%rcx
  401b50:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401b54:	41 89 e8             	mov    %ebp,%r8d
  401b57:	48 8d 0d a1 19 00 00 	lea    0x19a1(%rip),%rcx        # 4034ff <_IO_stdin_used+0x32f>
  401b5e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401b65:	be 01 00 00 00       	mov    $0x1,%esi
  401b6a:	4c 89 e7             	mov    %r12,%rdi
  401b6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b72:	e8 69 f3 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401b77:	ba 09 00 00 00       	mov    $0x9,%edx
  401b7c:	4c 89 e6             	mov    %r12,%rsi
  401b7f:	48 89 df             	mov    %rbx,%rdi
  401b82:	e8 99 f1 ff ff       	callq  400d20 <strncmp@plt>
  401b87:	85 c0                	test   %eax,%eax
  401b89:	0f 94 c0             	sete   %al
  401b8c:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401b91:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401b98:	00 00 
  401b9a:	75 0c                	jne    401ba8 <hexmatch+0xae>
  401b9c:	0f b6 c0             	movzbl %al,%eax
  401b9f:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401ba3:	5b                   	pop    %rbx
  401ba4:	5d                   	pop    %rbp
  401ba5:	41 5c                	pop    %r12
  401ba7:	c3                   	retq   
  401ba8:	e8 23 06 00 00       	callq  4021d0 <__stack_chk_fail>

0000000000401bad <touch3>:
  401bad:	53                   	push   %rbx
  401bae:	48 89 fb             	mov    %rdi,%rbx
  401bb1:	c7 05 61 39 20 00 03 	movl   $0x3,0x203961(%rip)        # 60551c <vlevel>
  401bb8:	00 00 00 
  401bbb:	48 89 fe             	mov    %rdi,%rsi
  401bbe:	8b 3d 60 39 20 00    	mov    0x203960(%rip),%edi        # 605524 <cookie>
  401bc4:	e8 31 ff ff ff       	callq  401afa <hexmatch>
  401bc9:	85 c0                	test   %eax,%eax
  401bcb:	74 2d                	je     401bfa <touch3+0x4d>
  401bcd:	48 89 da             	mov    %rbx,%rdx
  401bd0:	48 8d 35 81 19 00 00 	lea    0x1981(%rip),%rsi        # 403558 <_IO_stdin_used+0x388>
  401bd7:	bf 01 00 00 00       	mov    $0x1,%edi
  401bdc:	b8 00 00 00 00       	mov    $0x0,%eax
  401be1:	e8 7a f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401be6:	bf 03 00 00 00       	mov    $0x3,%edi
  401beb:	e8 95 03 00 00       	callq  401f85 <validate>
  401bf0:	bf 00 00 00 00       	mov    $0x0,%edi
  401bf5:	e8 b6 f2 ff ff       	callq  400eb0 <exit@plt>
  401bfa:	48 89 da             	mov    %rbx,%rdx
  401bfd:	48 8d 35 7c 19 00 00 	lea    0x197c(%rip),%rsi        # 403580 <_IO_stdin_used+0x3b0>
  401c04:	bf 01 00 00 00       	mov    $0x1,%edi
  401c09:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0e:	e8 4d f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c13:	bf 03 00 00 00       	mov    $0x3,%edi
  401c18:	e8 38 04 00 00       	callq  402055 <fail>
  401c1d:	eb d1                	jmp    401bf0 <touch3+0x43>

0000000000401c1f <test>:
  401c1f:	48 83 ec 08          	sub    $0x8,%rsp
  401c23:	b8 00 00 00 00       	mov    $0x0,%eax
  401c28:	e8 b3 fd ff ff       	callq  4019e0 <getbuf>
  401c2d:	89 c2                	mov    %eax,%edx
  401c2f:	48 8d 35 72 19 00 00 	lea    0x1972(%rip),%rsi        # 4035a8 <_IO_stdin_used+0x3d8>
  401c36:	bf 01 00 00 00       	mov    $0x1,%edi
  401c3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401c40:	e8 1b f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c45:	48 83 c4 08          	add    $0x8,%rsp
  401c49:	c3                   	retq   

0000000000401c4a <test2>:
  401c4a:	48 83 ec 08          	sub    $0x8,%rsp
  401c4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c53:	e8 9e fd ff ff       	callq  4019f6 <getbuf_withcanary>
  401c58:	89 c2                	mov    %eax,%edx
  401c5a:	48 8d 35 6f 19 00 00 	lea    0x196f(%rip),%rsi        # 4035d0 <_IO_stdin_used+0x400>
  401c61:	bf 01 00 00 00       	mov    $0x1,%edi
  401c66:	b8 00 00 00 00       	mov    $0x0,%eax
  401c6b:	e8 f0 f1 ff ff       	callq  400e60 <__printf_chk@plt>
  401c70:	48 83 c4 08          	add    $0x8,%rsp
  401c74:	c3                   	retq   

0000000000401c75 <save_char>:
  401c75:	8b 05 c9 44 20 00    	mov    0x2044c9(%rip),%eax        # 606144 <gets_cnt>
  401c7b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c80:	7f 4a                	jg     401ccc <save_char+0x57>
  401c82:	89 f9                	mov    %edi,%ecx
  401c84:	c0 e9 04             	shr    $0x4,%cl
  401c87:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c8a:	4c 8d 05 9f 1c 00 00 	lea    0x1c9f(%rip),%r8        # 403930 <trans_char>
  401c91:	83 e1 0f             	and    $0xf,%ecx
  401c94:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c99:	48 8d 0d a0 38 20 00 	lea    0x2038a0(%rip),%rcx        # 605540 <gets_buf>
  401ca0:	48 63 f2             	movslq %edx,%rsi
  401ca3:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401ca7:	8d 72 01             	lea    0x1(%rdx),%esi
  401caa:	83 e7 0f             	and    $0xf,%edi
  401cad:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401cb2:	48 63 f6             	movslq %esi,%rsi
  401cb5:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401cb9:	83 c2 02             	add    $0x2,%edx
  401cbc:	48 63 d2             	movslq %edx,%rdx
  401cbf:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401cc3:	83 c0 01             	add    $0x1,%eax
  401cc6:	89 05 78 44 20 00    	mov    %eax,0x204478(%rip)        # 606144 <gets_cnt>
  401ccc:	f3 c3                	repz retq 

0000000000401cce <save_term>:
  401cce:	8b 05 70 44 20 00    	mov    0x204470(%rip),%eax        # 606144 <gets_cnt>
  401cd4:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401cd7:	48 98                	cltq   
  401cd9:	48 8d 15 60 38 20 00 	lea    0x203860(%rip),%rdx        # 605540 <gets_buf>
  401ce0:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401ce4:	c3                   	retq   

0000000000401ce5 <check_fail>:
  401ce5:	48 83 ec 08          	sub    $0x8,%rsp
  401ce9:	0f be 15 58 44 20 00 	movsbl 0x204458(%rip),%edx        # 606148 <target_prefix>
  401cf0:	4c 8d 05 49 38 20 00 	lea    0x203849(%rip),%r8        # 605540 <gets_buf>
  401cf7:	8b 0d 1b 38 20 00    	mov    0x20381b(%rip),%ecx        # 605518 <check_level>
  401cfd:	48 8d 35 fa 18 00 00 	lea    0x18fa(%rip),%rsi        # 4035fe <_IO_stdin_used+0x42e>
  401d04:	bf 01 00 00 00       	mov    $0x1,%edi
  401d09:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0e:	e8 4d f1 ff ff       	callq  400e60 <__printf_chk@plt>
  401d13:	bf 01 00 00 00       	mov    $0x1,%edi
  401d18:	e8 93 f1 ff ff       	callq  400eb0 <exit@plt>

0000000000401d1d <Gets>:
  401d1d:	41 54                	push   %r12
  401d1f:	55                   	push   %rbp
  401d20:	53                   	push   %rbx
  401d21:	49 89 fc             	mov    %rdi,%r12
  401d24:	c7 05 16 44 20 00 00 	movl   $0x0,0x204416(%rip)        # 606144 <gets_cnt>
  401d2b:	00 00 00 
  401d2e:	48 89 fb             	mov    %rdi,%rbx
  401d31:	eb 11                	jmp    401d44 <Gets+0x27>
  401d33:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d37:	88 03                	mov    %al,(%rbx)
  401d39:	0f b6 f8             	movzbl %al,%edi
  401d3c:	e8 34 ff ff ff       	callq  401c75 <save_char>
  401d41:	48 89 eb             	mov    %rbp,%rbx
  401d44:	48 8b 3d c5 37 20 00 	mov    0x2037c5(%rip),%rdi        # 605510 <infile>
  401d4b:	e8 e0 f0 ff ff       	callq  400e30 <_IO_getc@plt>
  401d50:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d53:	74 05                	je     401d5a <Gets+0x3d>
  401d55:	83 f8 0a             	cmp    $0xa,%eax
  401d58:	75 d9                	jne    401d33 <Gets+0x16>
  401d5a:	c6 03 00             	movb   $0x0,(%rbx)
  401d5d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d62:	e8 67 ff ff ff       	callq  401cce <save_term>
  401d67:	4c 89 e0             	mov    %r12,%rax
  401d6a:	5b                   	pop    %rbx
  401d6b:	5d                   	pop    %rbp
  401d6c:	41 5c                	pop    %r12
  401d6e:	c3                   	retq   

0000000000401d6f <notify_server>:
  401d6f:	55                   	push   %rbp
  401d70:	53                   	push   %rbx
  401d71:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d78:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d7f:	00 00 
  401d81:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d88:	00 
  401d89:	31 c0                	xor    %eax,%eax
  401d8b:	83 3d 96 37 20 00 00 	cmpl   $0x0,0x203796(%rip)        # 605528 <is_checker>
  401d92:	0f 85 cb 01 00 00    	jne    401f63 <notify_server+0x1f4>
  401d98:	89 fb                	mov    %edi,%ebx
  401d9a:	8b 05 a4 43 20 00    	mov    0x2043a4(%rip),%eax        # 606144 <gets_cnt>
  401da0:	83 c0 64             	add    $0x64,%eax
  401da3:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401da8:	0f 8f bd 00 00 00    	jg     401e6b <notify_server+0xfc>
  401dae:	0f be 05 93 43 20 00 	movsbl 0x204393(%rip),%eax        # 606148 <target_prefix>
  401db5:	83 3d ec 36 20 00 00 	cmpl   $0x0,0x2036ec(%rip)        # 6054a8 <notify>
  401dbc:	0f 84 c9 00 00 00    	je     401e8b <notify_server+0x11c>
  401dc2:	8b 15 58 37 20 00    	mov    0x203758(%rip),%edx        # 605520 <authkey>
  401dc8:	85 db                	test   %ebx,%ebx
  401dca:	0f 84 c5 00 00 00    	je     401e95 <notify_server+0x126>
  401dd0:	48 8d 2d 3d 18 00 00 	lea    0x183d(%rip),%rbp        # 403614 <_IO_stdin_used+0x444>
  401dd7:	48 89 e7             	mov    %rsp,%rdi
  401dda:	48 8d 0d 5f 37 20 00 	lea    0x20375f(%rip),%rcx        # 605540 <gets_buf>
  401de1:	51                   	push   %rcx
  401de2:	56                   	push   %rsi
  401de3:	50                   	push   %rax
  401de4:	52                   	push   %rdx
  401de5:	49 89 e9             	mov    %rbp,%r9
  401de8:	44 8b 05 61 33 20 00 	mov    0x203361(%rip),%r8d        # 605150 <target_id>
  401def:	48 8d 0d 28 18 00 00 	lea    0x1828(%rip),%rcx        # 40361e <_IO_stdin_used+0x44e>
  401df6:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dfb:	be 01 00 00 00       	mov    $0x1,%esi
  401e00:	b8 00 00 00 00       	mov    $0x0,%eax
  401e05:	e8 d6 f0 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401e0a:	48 83 c4 20          	add    $0x20,%rsp
  401e0e:	83 3d 93 36 20 00 00 	cmpl   $0x0,0x203693(%rip)        # 6054a8 <notify>
  401e15:	0f 84 bf 00 00 00    	je     401eda <notify_server+0x16b>
  401e1b:	48 89 e1             	mov    %rsp,%rcx
  401e1e:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401e25:	00 
  401e26:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e2c:	48 8b 15 35 33 20 00 	mov    0x203335(%rip),%rdx        # 605168 <lab>
  401e33:	48 8b 35 36 33 20 00 	mov    0x203336(%rip),%rsi        # 605170 <course>
  401e3a:	48 8b 3d 1f 33 20 00 	mov    0x20331f(%rip),%rdi        # 605160 <user_id>
  401e41:	e8 45 12 00 00       	callq  40308b <driver_post>
  401e46:	85 c0                	test   %eax,%eax
  401e48:	78 57                	js     401ea1 <notify_server+0x132>
  401e4a:	85 db                	test   %ebx,%ebx
  401e4c:	74 7b                	je     401ec9 <notify_server+0x15a>
  401e4e:	48 8d 3d 1b 19 00 00 	lea    0x191b(%rip),%rdi        # 403770 <_IO_stdin_used+0x5a0>
  401e55:	e8 e6 ee ff ff       	callq  400d40 <puts@plt>
  401e5a:	48 8d 3d e5 17 00 00 	lea    0x17e5(%rip),%rdi        # 403646 <_IO_stdin_used+0x476>
  401e61:	e8 da ee ff ff       	callq  400d40 <puts@plt>
  401e66:	e9 f8 00 00 00       	jmpq   401f63 <notify_server+0x1f4>
  401e6b:	48 8d 35 ce 18 00 00 	lea    0x18ce(%rip),%rsi        # 403740 <_IO_stdin_used+0x570>
  401e72:	bf 01 00 00 00       	mov    $0x1,%edi
  401e77:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7c:	e8 df ef ff ff       	callq  400e60 <__printf_chk@plt>
  401e81:	bf 01 00 00 00       	mov    $0x1,%edi
  401e86:	e8 25 f0 ff ff       	callq  400eb0 <exit@plt>
  401e8b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e90:	e9 33 ff ff ff       	jmpq   401dc8 <notify_server+0x59>
  401e95:	48 8d 2d 7d 17 00 00 	lea    0x177d(%rip),%rbp        # 403619 <_IO_stdin_used+0x449>
  401e9c:	e9 36 ff ff ff       	jmpq   401dd7 <notify_server+0x68>
  401ea1:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401ea8:	00 
  401ea9:	48 8d 35 8a 17 00 00 	lea    0x178a(%rip),%rsi        # 40363a <_IO_stdin_used+0x46a>
  401eb0:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eba:	e8 a1 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401ebf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec4:	e8 e7 ef ff ff       	callq  400eb0 <exit@plt>
  401ec9:	48 8d 3d 80 17 00 00 	lea    0x1780(%rip),%rdi        # 403650 <_IO_stdin_used+0x480>
  401ed0:	e8 6b ee ff ff       	callq  400d40 <puts@plt>
  401ed5:	e9 89 00 00 00       	jmpq   401f63 <notify_server+0x1f4>
  401eda:	48 89 ea             	mov    %rbp,%rdx
  401edd:	48 8d 35 c4 18 00 00 	lea    0x18c4(%rip),%rsi        # 4037a8 <_IO_stdin_used+0x5d8>
  401ee4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee9:	b8 00 00 00 00       	mov    $0x0,%eax
  401eee:	e8 6d ef ff ff       	callq  400e60 <__printf_chk@plt>
  401ef3:	48 8b 15 66 32 20 00 	mov    0x203266(%rip),%rdx        # 605160 <user_id>
  401efa:	48 8d 35 56 17 00 00 	lea    0x1756(%rip),%rsi        # 403657 <_IO_stdin_used+0x487>
  401f01:	bf 01 00 00 00       	mov    $0x1,%edi
  401f06:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0b:	e8 50 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f10:	48 8b 15 59 32 20 00 	mov    0x203259(%rip),%rdx        # 605170 <course>
  401f17:	48 8d 35 46 17 00 00 	lea    0x1746(%rip),%rsi        # 403664 <_IO_stdin_used+0x494>
  401f1e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f23:	b8 00 00 00 00       	mov    $0x0,%eax
  401f28:	e8 33 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f2d:	48 8b 15 34 32 20 00 	mov    0x203234(%rip),%rdx        # 605168 <lab>
  401f34:	48 8d 35 35 17 00 00 	lea    0x1735(%rip),%rsi        # 403670 <_IO_stdin_used+0x4a0>
  401f3b:	bf 01 00 00 00       	mov    $0x1,%edi
  401f40:	b8 00 00 00 00       	mov    $0x0,%eax
  401f45:	e8 16 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f4a:	48 89 e2             	mov    %rsp,%rdx
  401f4d:	48 8d 35 25 17 00 00 	lea    0x1725(%rip),%rsi        # 403679 <_IO_stdin_used+0x4a9>
  401f54:	bf 01 00 00 00       	mov    $0x1,%edi
  401f59:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5e:	e8 fd ee ff ff       	callq  400e60 <__printf_chk@plt>
  401f63:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f6a:	00 
  401f6b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f72:	00 00 
  401f74:	75 0a                	jne    401f80 <notify_server+0x211>
  401f76:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401f7d:	5b                   	pop    %rbx
  401f7e:	5d                   	pop    %rbp
  401f7f:	c3                   	retq   
  401f80:	e8 4b 02 00 00       	callq  4021d0 <__stack_chk_fail>

0000000000401f85 <validate>:
  401f85:	53                   	push   %rbx
  401f86:	89 fb                	mov    %edi,%ebx
  401f88:	83 3d 99 35 20 00 00 	cmpl   $0x0,0x203599(%rip)        # 605528 <is_checker>
  401f8f:	74 72                	je     402003 <validate+0x7e>
  401f91:	39 3d 85 35 20 00    	cmp    %edi,0x203585(%rip)        # 60551c <vlevel>
  401f97:	75 32                	jne    401fcb <validate+0x46>
  401f99:	8b 15 79 35 20 00    	mov    0x203579(%rip),%edx        # 605518 <check_level>
  401f9f:	39 fa                	cmp    %edi,%edx
  401fa1:	75 3e                	jne    401fe1 <validate+0x5c>
  401fa3:	0f be 15 9e 41 20 00 	movsbl 0x20419e(%rip),%edx        # 606148 <target_prefix>
  401faa:	4c 8d 05 8f 35 20 00 	lea    0x20358f(%rip),%r8        # 605540 <gets_buf>
  401fb1:	89 f9                	mov    %edi,%ecx
  401fb3:	48 8d 35 e9 16 00 00 	lea    0x16e9(%rip),%rsi        # 4036a3 <_IO_stdin_used+0x4d3>
  401fba:	bf 01 00 00 00       	mov    $0x1,%edi
  401fbf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc4:	e8 97 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fc9:	5b                   	pop    %rbx
  401fca:	c3                   	retq   
  401fcb:	48 8d 3d b3 16 00 00 	lea    0x16b3(%rip),%rdi        # 403685 <_IO_stdin_used+0x4b5>
  401fd2:	e8 69 ed ff ff       	callq  400d40 <puts@plt>
  401fd7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdc:	e8 04 fd ff ff       	callq  401ce5 <check_fail>
  401fe1:	89 f9                	mov    %edi,%ecx
  401fe3:	48 8d 35 e6 17 00 00 	lea    0x17e6(%rip),%rsi        # 4037d0 <_IO_stdin_used+0x600>
  401fea:	bf 01 00 00 00       	mov    $0x1,%edi
  401fef:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff4:	e8 67 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401ff9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffe:	e8 e2 fc ff ff       	callq  401ce5 <check_fail>
  402003:	39 3d 13 35 20 00    	cmp    %edi,0x203513(%rip)        # 60551c <vlevel>
  402009:	74 1a                	je     402025 <validate+0xa0>
  40200b:	48 8d 3d 73 16 00 00 	lea    0x1673(%rip),%rdi        # 403685 <_IO_stdin_used+0x4b5>
  402012:	e8 29 ed ff ff       	callq  400d40 <puts@plt>
  402017:	89 de                	mov    %ebx,%esi
  402019:	bf 00 00 00 00       	mov    $0x0,%edi
  40201e:	e8 4c fd ff ff       	callq  401d6f <notify_server>
  402023:	eb a4                	jmp    401fc9 <validate+0x44>
  402025:	0f be 0d 1c 41 20 00 	movsbl 0x20411c(%rip),%ecx        # 606148 <target_prefix>
  40202c:	89 fa                	mov    %edi,%edx
  40202e:	48 8d 35 c3 17 00 00 	lea    0x17c3(%rip),%rsi        # 4037f8 <_IO_stdin_used+0x628>
  402035:	bf 01 00 00 00       	mov    $0x1,%edi
  40203a:	b8 00 00 00 00       	mov    $0x0,%eax
  40203f:	e8 1c ee ff ff       	callq  400e60 <__printf_chk@plt>
  402044:	89 de                	mov    %ebx,%esi
  402046:	bf 01 00 00 00       	mov    $0x1,%edi
  40204b:	e8 1f fd ff ff       	callq  401d6f <notify_server>
  402050:	e9 74 ff ff ff       	jmpq   401fc9 <validate+0x44>

0000000000402055 <fail>:
  402055:	48 83 ec 08          	sub    $0x8,%rsp
  402059:	83 3d c8 34 20 00 00 	cmpl   $0x0,0x2034c8(%rip)        # 605528 <is_checker>
  402060:	75 11                	jne    402073 <fail+0x1e>
  402062:	89 fe                	mov    %edi,%esi
  402064:	bf 00 00 00 00       	mov    $0x0,%edi
  402069:	e8 01 fd ff ff       	callq  401d6f <notify_server>
  40206e:	48 83 c4 08          	add    $0x8,%rsp
  402072:	c3                   	retq   
  402073:	b8 00 00 00 00       	mov    $0x0,%eax
  402078:	e8 68 fc ff ff       	callq  401ce5 <check_fail>

000000000040207d <bushandler>:
  40207d:	48 83 ec 08          	sub    $0x8,%rsp
  402081:	83 3d a0 34 20 00 00 	cmpl   $0x0,0x2034a0(%rip)        # 605528 <is_checker>
  402088:	74 16                	je     4020a0 <bushandler+0x23>
  40208a:	48 8d 3d 27 16 00 00 	lea    0x1627(%rip),%rdi        # 4036b8 <_IO_stdin_used+0x4e8>
  402091:	e8 aa ec ff ff       	callq  400d40 <puts@plt>
  402096:	b8 00 00 00 00       	mov    $0x0,%eax
  40209b:	e8 45 fc ff ff       	callq  401ce5 <check_fail>
  4020a0:	48 8d 3d 89 17 00 00 	lea    0x1789(%rip),%rdi        # 403830 <_IO_stdin_used+0x660>
  4020a7:	e8 94 ec ff ff       	callq  400d40 <puts@plt>
  4020ac:	48 8d 3d 0f 16 00 00 	lea    0x160f(%rip),%rdi        # 4036c2 <_IO_stdin_used+0x4f2>
  4020b3:	e8 88 ec ff ff       	callq  400d40 <puts@plt>
  4020b8:	be 00 00 00 00       	mov    $0x0,%esi
  4020bd:	bf 00 00 00 00       	mov    $0x0,%edi
  4020c2:	e8 a8 fc ff ff       	callq  401d6f <notify_server>
  4020c7:	bf 01 00 00 00       	mov    $0x1,%edi
  4020cc:	e8 df ed ff ff       	callq  400eb0 <exit@plt>

00000000004020d1 <seghandler>:
  4020d1:	48 83 ec 08          	sub    $0x8,%rsp
  4020d5:	83 3d 4c 34 20 00 00 	cmpl   $0x0,0x20344c(%rip)        # 605528 <is_checker>
  4020dc:	74 16                	je     4020f4 <seghandler+0x23>
  4020de:	48 8d 3d f3 15 00 00 	lea    0x15f3(%rip),%rdi        # 4036d8 <_IO_stdin_used+0x508>
  4020e5:	e8 56 ec ff ff       	callq  400d40 <puts@plt>
  4020ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ef:	e8 f1 fb ff ff       	callq  401ce5 <check_fail>
  4020f4:	48 8d 3d 55 17 00 00 	lea    0x1755(%rip),%rdi        # 403850 <_IO_stdin_used+0x680>
  4020fb:	e8 40 ec ff ff       	callq  400d40 <puts@plt>
  402100:	48 8d 3d bb 15 00 00 	lea    0x15bb(%rip),%rdi        # 4036c2 <_IO_stdin_used+0x4f2>
  402107:	e8 34 ec ff ff       	callq  400d40 <puts@plt>
  40210c:	be 00 00 00 00       	mov    $0x0,%esi
  402111:	bf 00 00 00 00       	mov    $0x0,%edi
  402116:	e8 54 fc ff ff       	callq  401d6f <notify_server>
  40211b:	bf 01 00 00 00       	mov    $0x1,%edi
  402120:	e8 8b ed ff ff       	callq  400eb0 <exit@plt>

0000000000402125 <illegalhandler>:
  402125:	48 83 ec 08          	sub    $0x8,%rsp
  402129:	83 3d f8 33 20 00 00 	cmpl   $0x0,0x2033f8(%rip)        # 605528 <is_checker>
  402130:	74 16                	je     402148 <illegalhandler+0x23>
  402132:	48 8d 3d b2 15 00 00 	lea    0x15b2(%rip),%rdi        # 4036eb <_IO_stdin_used+0x51b>
  402139:	e8 02 ec ff ff       	callq  400d40 <puts@plt>
  40213e:	b8 00 00 00 00       	mov    $0x0,%eax
  402143:	e8 9d fb ff ff       	callq  401ce5 <check_fail>
  402148:	48 8d 3d 29 17 00 00 	lea    0x1729(%rip),%rdi        # 403878 <_IO_stdin_used+0x6a8>
  40214f:	e8 ec eb ff ff       	callq  400d40 <puts@plt>
  402154:	48 8d 3d 67 15 00 00 	lea    0x1567(%rip),%rdi        # 4036c2 <_IO_stdin_used+0x4f2>
  40215b:	e8 e0 eb ff ff       	callq  400d40 <puts@plt>
  402160:	be 00 00 00 00       	mov    $0x0,%esi
  402165:	bf 00 00 00 00       	mov    $0x0,%edi
  40216a:	e8 00 fc ff ff       	callq  401d6f <notify_server>
  40216f:	bf 01 00 00 00       	mov    $0x1,%edi
  402174:	e8 37 ed ff ff       	callq  400eb0 <exit@plt>

0000000000402179 <sigalrmhandler>:
  402179:	48 83 ec 08          	sub    $0x8,%rsp
  40217d:	83 3d a4 33 20 00 00 	cmpl   $0x0,0x2033a4(%rip)        # 605528 <is_checker>
  402184:	74 16                	je     40219c <sigalrmhandler+0x23>
  402186:	48 8d 3d 72 15 00 00 	lea    0x1572(%rip),%rdi        # 4036ff <_IO_stdin_used+0x52f>
  40218d:	e8 ae eb ff ff       	callq  400d40 <puts@plt>
  402192:	b8 00 00 00 00       	mov    $0x0,%eax
  402197:	e8 49 fb ff ff       	callq  401ce5 <check_fail>
  40219c:	ba 02 00 00 00       	mov    $0x2,%edx
  4021a1:	48 8d 35 00 17 00 00 	lea    0x1700(%rip),%rsi        # 4038a8 <_IO_stdin_used+0x6d8>
  4021a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b2:	e8 a9 ec ff ff       	callq  400e60 <__printf_chk@plt>
  4021b7:	be 00 00 00 00       	mov    $0x0,%esi
  4021bc:	bf 00 00 00 00       	mov    $0x0,%edi
  4021c1:	e8 a9 fb ff ff       	callq  401d6f <notify_server>
  4021c6:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cb:	e8 e0 ec ff ff       	callq  400eb0 <exit@plt>

00000000004021d0 <__stack_chk_fail>:
  4021d0:	48 83 ec 08          	sub    $0x8,%rsp
  4021d4:	83 3d 4d 33 20 00 00 	cmpl   $0x0,0x20334d(%rip)        # 605528 <is_checker>
  4021db:	74 16                	je     4021f3 <__stack_chk_fail+0x23>
  4021dd:	48 8d 3d 23 15 00 00 	lea    0x1523(%rip),%rdi        # 403707 <_IO_stdin_used+0x537>
  4021e4:	e8 57 eb ff ff       	callq  400d40 <puts@plt>
  4021e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ee:	e8 f2 fa ff ff       	callq  401ce5 <check_fail>
  4021f3:	48 8d 3d e6 16 00 00 	lea    0x16e6(%rip),%rdi        # 4038e0 <_IO_stdin_used+0x710>
  4021fa:	e8 41 eb ff ff       	callq  400d40 <puts@plt>
  4021ff:	48 8d 3d bc 14 00 00 	lea    0x14bc(%rip),%rdi        # 4036c2 <_IO_stdin_used+0x4f2>
  402206:	e8 35 eb ff ff       	callq  400d40 <puts@plt>
  40220b:	be 00 00 00 00       	mov    $0x0,%esi
  402210:	bf 00 00 00 00       	mov    $0x0,%edi
  402215:	e8 55 fb ff ff       	callq  401d6f <notify_server>
  40221a:	bf 01 00 00 00       	mov    $0x1,%edi
  40221f:	e8 8c ec ff ff       	callq  400eb0 <exit@plt>

0000000000402224 <launch>:
  402224:	55                   	push   %rbp
  402225:	48 89 e5             	mov    %rsp,%rbp
  402228:	53                   	push   %rbx
  402229:	48 83 ec 18          	sub    $0x18,%rsp
  40222d:	48 89 fa             	mov    %rdi,%rdx
  402230:	89 f3                	mov    %esi,%ebx
  402232:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402239:	00 00 
  40223b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40223f:	31 c0                	xor    %eax,%eax
  402241:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402245:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402249:	48 29 c4             	sub    %rax,%rsp
  40224c:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402251:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402255:	be f4 00 00 00       	mov    $0xf4,%esi
  40225a:	e8 11 eb ff ff       	callq  400d70 <memset@plt>
  40225f:	48 8b 05 5a 32 20 00 	mov    0x20325a(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402266:	48 39 05 a3 32 20 00 	cmp    %rax,0x2032a3(%rip)        # 605510 <infile>
  40226d:	74 42                	je     4022b1 <launch+0x8d>
  40226f:	c7 05 a3 32 20 00 00 	movl   $0x0,0x2032a3(%rip)        # 60551c <vlevel>
  402276:	00 00 00 
  402279:	85 db                	test   %ebx,%ebx
  40227b:	75 4c                	jne    4022c9 <launch+0xa5>
  40227d:	b8 00 00 00 00       	mov    $0x0,%eax
  402282:	e8 98 f9 ff ff       	callq  401c1f <test>
  402287:	83 3d 9a 32 20 00 00 	cmpl   $0x0,0x20329a(%rip)        # 605528 <is_checker>
  40228e:	75 45                	jne    4022d5 <launch+0xb1>
  402290:	48 8d 3d 97 14 00 00 	lea    0x1497(%rip),%rdi        # 40372e <_IO_stdin_used+0x55e>
  402297:	e8 a4 ea ff ff       	callq  400d40 <puts@plt>
  40229c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4022a7:	00 00 
  4022a9:	75 40                	jne    4022eb <launch+0xc7>
  4022ab:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4022af:	c9                   	leaveq 
  4022b0:	c3                   	retq   
  4022b1:	48 8d 35 5e 14 00 00 	lea    0x145e(%rip),%rsi        # 403716 <_IO_stdin_used+0x546>
  4022b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4022bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c2:	e8 99 eb ff ff       	callq  400e60 <__printf_chk@plt>
  4022c7:	eb a6                	jmp    40226f <launch+0x4b>
  4022c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ce:	e8 77 f9 ff ff       	callq  401c4a <test2>
  4022d3:	eb b2                	jmp    402287 <launch+0x63>
  4022d5:	48 8d 3d 47 14 00 00 	lea    0x1447(%rip),%rdi        # 403723 <_IO_stdin_used+0x553>
  4022dc:	e8 5f ea ff ff       	callq  400d40 <puts@plt>
  4022e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e6:	e8 fa f9 ff ff       	callq  401ce5 <check_fail>
  4022eb:	e8 e0 fe ff ff       	callq  4021d0 <__stack_chk_fail>

00000000004022f0 <stable_launch>:
  4022f0:	55                   	push   %rbp
  4022f1:	53                   	push   %rbx
  4022f2:	48 83 ec 08          	sub    $0x8,%rsp
  4022f6:	89 f5                	mov    %esi,%ebp
  4022f8:	48 89 3d 09 32 20 00 	mov    %rdi,0x203209(%rip)        # 605508 <global_offset>
  4022ff:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402305:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40230b:	b9 32 01 00 00       	mov    $0x132,%ecx
  402310:	ba 07 00 00 00       	mov    $0x7,%edx
  402315:	be 00 00 10 00       	mov    $0x100000,%esi
  40231a:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40231f:	e8 3c ea ff ff       	callq  400d60 <mmap@plt>
  402324:	48 89 c3             	mov    %rax,%rbx
  402327:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40232d:	75 4a                	jne    402379 <stable_launch+0x89>
  40232f:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402336:	48 89 15 13 3e 20 00 	mov    %rdx,0x203e13(%rip)        # 606150 <stack_top>
  40233d:	48 89 e0             	mov    %rsp,%rax
  402340:	48 89 d4             	mov    %rdx,%rsp
  402343:	48 89 c2             	mov    %rax,%rdx
  402346:	48 89 15 b3 31 20 00 	mov    %rdx,0x2031b3(%rip)        # 605500 <global_save_stack>
  40234d:	89 ee                	mov    %ebp,%esi
  40234f:	48 8b 3d b2 31 20 00 	mov    0x2031b2(%rip),%rdi        # 605508 <global_offset>
  402356:	e8 c9 fe ff ff       	callq  402224 <launch>
  40235b:	48 8b 05 9e 31 20 00 	mov    0x20319e(%rip),%rax        # 605500 <global_save_stack>
  402362:	48 89 c4             	mov    %rax,%rsp
  402365:	be 00 00 10 00       	mov    $0x100000,%esi
  40236a:	48 89 df             	mov    %rbx,%rdi
  40236d:	e8 de ea ff ff       	callq  400e50 <munmap@plt>
  402372:	48 83 c4 08          	add    $0x8,%rsp
  402376:	5b                   	pop    %rbx
  402377:	5d                   	pop    %rbp
  402378:	c3                   	retq   
  402379:	be 00 00 10 00       	mov    $0x100000,%esi
  40237e:	48 89 c7             	mov    %rax,%rdi
  402381:	e8 ca ea ff ff       	callq  400e50 <munmap@plt>
  402386:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40238b:	48 8d 15 76 15 00 00 	lea    0x1576(%rip),%rdx        # 403908 <_IO_stdin_used+0x738>
  402392:	be 01 00 00 00       	mov    $0x1,%esi
  402397:	48 8b 3d 42 31 20 00 	mov    0x203142(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40239e:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a3:	e8 28 eb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4023a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ad:	e8 fe ea ff ff       	callq  400eb0 <exit@plt>

00000000004023b2 <rio_readinitb>:
  4023b2:	89 37                	mov    %esi,(%rdi)
  4023b4:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4023bb:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4023bf:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4023c3:	c3                   	retq   

00000000004023c4 <sigalrm_handler>:
  4023c4:	48 83 ec 08          	sub    $0x8,%rsp
  4023c8:	b9 00 00 00 00       	mov    $0x0,%ecx
  4023cd:	48 8d 15 6c 15 00 00 	lea    0x156c(%rip),%rdx        # 403940 <trans_char+0x10>
  4023d4:	be 01 00 00 00       	mov    $0x1,%esi
  4023d9:	48 8b 3d 00 31 20 00 	mov    0x203100(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4023e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e5:	e8 e6 ea ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4023ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ef:	e8 bc ea ff ff       	callq  400eb0 <exit@plt>

00000000004023f4 <rio_writen>:
  4023f4:	41 55                	push   %r13
  4023f6:	41 54                	push   %r12
  4023f8:	55                   	push   %rbp
  4023f9:	53                   	push   %rbx
  4023fa:	48 83 ec 08          	sub    $0x8,%rsp
  4023fe:	41 89 fc             	mov    %edi,%r12d
  402401:	48 89 f5             	mov    %rsi,%rbp
  402404:	49 89 d5             	mov    %rdx,%r13
  402407:	48 89 d3             	mov    %rdx,%rbx
  40240a:	eb 06                	jmp    402412 <rio_writen+0x1e>
  40240c:	48 29 c3             	sub    %rax,%rbx
  40240f:	48 01 c5             	add    %rax,%rbp
  402412:	48 85 db             	test   %rbx,%rbx
  402415:	74 24                	je     40243b <rio_writen+0x47>
  402417:	48 89 da             	mov    %rbx,%rdx
  40241a:	48 89 ee             	mov    %rbp,%rsi
  40241d:	44 89 e7             	mov    %r12d,%edi
  402420:	e8 2b e9 ff ff       	callq  400d50 <write@plt>
  402425:	48 85 c0             	test   %rax,%rax
  402428:	7f e2                	jg     40240c <rio_writen+0x18>
  40242a:	e8 c1 e8 ff ff       	callq  400cf0 <__errno_location@plt>
  40242f:	83 38 04             	cmpl   $0x4,(%rax)
  402432:	75 15                	jne    402449 <rio_writen+0x55>
  402434:	b8 00 00 00 00       	mov    $0x0,%eax
  402439:	eb d1                	jmp    40240c <rio_writen+0x18>
  40243b:	4c 89 e8             	mov    %r13,%rax
  40243e:	48 83 c4 08          	add    $0x8,%rsp
  402442:	5b                   	pop    %rbx
  402443:	5d                   	pop    %rbp
  402444:	41 5c                	pop    %r12
  402446:	41 5d                	pop    %r13
  402448:	c3                   	retq   
  402449:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402450:	eb ec                	jmp    40243e <rio_writen+0x4a>

0000000000402452 <rio_read>:
  402452:	41 55                	push   %r13
  402454:	41 54                	push   %r12
  402456:	55                   	push   %rbp
  402457:	53                   	push   %rbx
  402458:	48 83 ec 08          	sub    $0x8,%rsp
  40245c:	48 89 fb             	mov    %rdi,%rbx
  40245f:	49 89 f5             	mov    %rsi,%r13
  402462:	49 89 d4             	mov    %rdx,%r12
  402465:	eb 0a                	jmp    402471 <rio_read+0x1f>
  402467:	e8 84 e8 ff ff       	callq  400cf0 <__errno_location@plt>
  40246c:	83 38 04             	cmpl   $0x4,(%rax)
  40246f:	75 5c                	jne    4024cd <rio_read+0x7b>
  402471:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402474:	85 ed                	test   %ebp,%ebp
  402476:	7f 24                	jg     40249c <rio_read+0x4a>
  402478:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40247c:	8b 3b                	mov    (%rbx),%edi
  40247e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402483:	48 89 ee             	mov    %rbp,%rsi
  402486:	e8 15 e9 ff ff       	callq  400da0 <read@plt>
  40248b:	89 43 04             	mov    %eax,0x4(%rbx)
  40248e:	85 c0                	test   %eax,%eax
  402490:	78 d5                	js     402467 <rio_read+0x15>
  402492:	85 c0                	test   %eax,%eax
  402494:	74 40                	je     4024d6 <rio_read+0x84>
  402496:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40249a:	eb d5                	jmp    402471 <rio_read+0x1f>
  40249c:	89 e8                	mov    %ebp,%eax
  40249e:	4c 39 e0             	cmp    %r12,%rax
  4024a1:	72 03                	jb     4024a6 <rio_read+0x54>
  4024a3:	44 89 e5             	mov    %r12d,%ebp
  4024a6:	4c 63 e5             	movslq %ebp,%r12
  4024a9:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4024ad:	4c 89 e2             	mov    %r12,%rdx
  4024b0:	4c 89 ef             	mov    %r13,%rdi
  4024b3:	e8 48 e9 ff ff       	callq  400e00 <memcpy@plt>
  4024b8:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4024bc:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4024bf:	4c 89 e0             	mov    %r12,%rax
  4024c2:	48 83 c4 08          	add    $0x8,%rsp
  4024c6:	5b                   	pop    %rbx
  4024c7:	5d                   	pop    %rbp
  4024c8:	41 5c                	pop    %r12
  4024ca:	41 5d                	pop    %r13
  4024cc:	c3                   	retq   
  4024cd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024d4:	eb ec                	jmp    4024c2 <rio_read+0x70>
  4024d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4024db:	eb e5                	jmp    4024c2 <rio_read+0x70>

00000000004024dd <rio_readlineb>:
  4024dd:	41 55                	push   %r13
  4024df:	41 54                	push   %r12
  4024e1:	55                   	push   %rbp
  4024e2:	53                   	push   %rbx
  4024e3:	48 83 ec 18          	sub    $0x18,%rsp
  4024e7:	49 89 fd             	mov    %rdi,%r13
  4024ea:	48 89 f5             	mov    %rsi,%rbp
  4024ed:	49 89 d4             	mov    %rdx,%r12
  4024f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024f7:	00 00 
  4024f9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024fe:	31 c0                	xor    %eax,%eax
  402500:	bb 01 00 00 00       	mov    $0x1,%ebx
  402505:	4c 39 e3             	cmp    %r12,%rbx
  402508:	73 47                	jae    402551 <rio_readlineb+0x74>
  40250a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40250f:	ba 01 00 00 00       	mov    $0x1,%edx
  402514:	4c 89 ef             	mov    %r13,%rdi
  402517:	e8 36 ff ff ff       	callq  402452 <rio_read>
  40251c:	83 f8 01             	cmp    $0x1,%eax
  40251f:	75 1c                	jne    40253d <rio_readlineb+0x60>
  402521:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402525:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40252a:	88 55 00             	mov    %dl,0x0(%rbp)
  40252d:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402532:	74 1a                	je     40254e <rio_readlineb+0x71>
  402534:	48 83 c3 01          	add    $0x1,%rbx
  402538:	48 89 c5             	mov    %rax,%rbp
  40253b:	eb c8                	jmp    402505 <rio_readlineb+0x28>
  40253d:	85 c0                	test   %eax,%eax
  40253f:	75 32                	jne    402573 <rio_readlineb+0x96>
  402541:	48 83 fb 01          	cmp    $0x1,%rbx
  402545:	75 0a                	jne    402551 <rio_readlineb+0x74>
  402547:	b8 00 00 00 00       	mov    $0x0,%eax
  40254c:	eb 0a                	jmp    402558 <rio_readlineb+0x7b>
  40254e:	48 89 c5             	mov    %rax,%rbp
  402551:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402555:	48 89 d8             	mov    %rbx,%rax
  402558:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40255d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402564:	00 00 
  402566:	75 14                	jne    40257c <rio_readlineb+0x9f>
  402568:	48 83 c4 18          	add    $0x18,%rsp
  40256c:	5b                   	pop    %rbx
  40256d:	5d                   	pop    %rbp
  40256e:	41 5c                	pop    %r12
  402570:	41 5d                	pop    %r13
  402572:	c3                   	retq   
  402573:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40257a:	eb dc                	jmp    402558 <rio_readlineb+0x7b>
  40257c:	e8 4f fc ff ff       	callq  4021d0 <__stack_chk_fail>

0000000000402581 <urlencode>:
  402581:	41 54                	push   %r12
  402583:	55                   	push   %rbp
  402584:	53                   	push   %rbx
  402585:	48 83 ec 10          	sub    $0x10,%rsp
  402589:	48 89 fb             	mov    %rdi,%rbx
  40258c:	48 89 f5             	mov    %rsi,%rbp
  40258f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402596:	00 00 
  402598:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40259d:	31 c0                	xor    %eax,%eax
  40259f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4025a6:	f2 ae                	repnz scas %es:(%rdi),%al
  4025a8:	48 89 ce             	mov    %rcx,%rsi
  4025ab:	48 f7 d6             	not    %rsi
  4025ae:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4025b1:	eb 0f                	jmp    4025c2 <urlencode+0x41>
  4025b3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4025b7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4025bb:	48 83 c3 01          	add    $0x1,%rbx
  4025bf:	44 89 e0             	mov    %r12d,%eax
  4025c2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4025c6:	85 c0                	test   %eax,%eax
  4025c8:	0f 84 a8 00 00 00    	je     402676 <urlencode+0xf5>
  4025ce:	44 0f b6 03          	movzbl (%rbx),%r8d
  4025d2:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4025d6:	0f 94 c2             	sete   %dl
  4025d9:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4025dd:	0f 94 c0             	sete   %al
  4025e0:	08 c2                	or     %al,%dl
  4025e2:	75 cf                	jne    4025b3 <urlencode+0x32>
  4025e4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4025e8:	74 c9                	je     4025b3 <urlencode+0x32>
  4025ea:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4025ee:	74 c3                	je     4025b3 <urlencode+0x32>
  4025f0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4025f4:	3c 09                	cmp    $0x9,%al
  4025f6:	76 bb                	jbe    4025b3 <urlencode+0x32>
  4025f8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4025fc:	3c 19                	cmp    $0x19,%al
  4025fe:	76 b3                	jbe    4025b3 <urlencode+0x32>
  402600:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402604:	3c 19                	cmp    $0x19,%al
  402606:	76 ab                	jbe    4025b3 <urlencode+0x32>
  402608:	41 80 f8 20          	cmp    $0x20,%r8b
  40260c:	74 56                	je     402664 <urlencode+0xe3>
  40260e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402612:	3c 5f                	cmp    $0x5f,%al
  402614:	0f 96 c2             	setbe  %dl
  402617:	41 80 f8 09          	cmp    $0x9,%r8b
  40261b:	0f 94 c0             	sete   %al
  40261e:	08 c2                	or     %al,%dl
  402620:	74 4f                	je     402671 <urlencode+0xf0>
  402622:	48 89 e7             	mov    %rsp,%rdi
  402625:	45 0f b6 c0          	movzbl %r8b,%r8d
  402629:	48 8d 0d c8 13 00 00 	lea    0x13c8(%rip),%rcx        # 4039f8 <trans_char+0xc8>
  402630:	ba 08 00 00 00       	mov    $0x8,%edx
  402635:	be 01 00 00 00       	mov    $0x1,%esi
  40263a:	b8 00 00 00 00       	mov    $0x0,%eax
  40263f:	e8 9c e8 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402644:	0f b6 04 24          	movzbl (%rsp),%eax
  402648:	88 45 00             	mov    %al,0x0(%rbp)
  40264b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402650:	88 45 01             	mov    %al,0x1(%rbp)
  402653:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402658:	88 45 02             	mov    %al,0x2(%rbp)
  40265b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40265f:	e9 57 ff ff ff       	jmpq   4025bb <urlencode+0x3a>
  402664:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402668:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40266c:	e9 4a ff ff ff       	jmpq   4025bb <urlencode+0x3a>
  402671:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402676:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40267b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402682:	00 00 
  402684:	75 09                	jne    40268f <urlencode+0x10e>
  402686:	48 83 c4 10          	add    $0x10,%rsp
  40268a:	5b                   	pop    %rbx
  40268b:	5d                   	pop    %rbp
  40268c:	41 5c                	pop    %r12
  40268e:	c3                   	retq   
  40268f:	e8 3c fb ff ff       	callq  4021d0 <__stack_chk_fail>

0000000000402694 <submitr>:
  402694:	41 57                	push   %r15
  402696:	41 56                	push   %r14
  402698:	41 55                	push   %r13
  40269a:	41 54                	push   %r12
  40269c:	55                   	push   %rbp
  40269d:	53                   	push   %rbx
  40269e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4026a5:	49 89 fd             	mov    %rdi,%r13
  4026a8:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  4026ac:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  4026b1:	49 89 ce             	mov    %rcx,%r14
  4026b4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  4026b9:	4d 89 cf             	mov    %r9,%r15
  4026bc:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  4026c3:	00 
  4026c4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4026cb:	00 00 
  4026cd:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4026d4:	00 
  4026d5:	31 c0                	xor    %eax,%eax
  4026d7:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4026de:	00 
  4026df:	ba 00 00 00 00       	mov    $0x0,%edx
  4026e4:	be 01 00 00 00       	mov    $0x1,%esi
  4026e9:	bf 02 00 00 00       	mov    $0x2,%edi
  4026ee:	e8 fd e7 ff ff       	callq  400ef0 <socket@plt>
  4026f3:	85 c0                	test   %eax,%eax
  4026f5:	0f 88 ae 02 00 00    	js     4029a9 <submitr+0x315>
  4026fb:	89 c3                	mov    %eax,%ebx
  4026fd:	4c 89 ef             	mov    %r13,%rdi
  402700:	e8 cb e6 ff ff       	callq  400dd0 <gethostbyname@plt>
  402705:	48 85 c0             	test   %rax,%rax
  402708:	0f 84 e7 02 00 00    	je     4029f5 <submitr+0x361>
  40270e:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402713:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  40271a:	00 00 
  40271c:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  402723:	00 
  402724:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  40272b:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402732:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402736:	48 8b 40 18          	mov    0x18(%rax),%rax
  40273a:	48 8b 30             	mov    (%rax),%rsi
  40273d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402742:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402747:	e8 94 e6 ff ff       	callq  400de0 <__memmove_chk@plt>
  40274c:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402751:	66 c1 c8 08          	ror    $0x8,%ax
  402755:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40275a:	ba 10 00 00 00       	mov    $0x10,%edx
  40275f:	4c 89 e6             	mov    %r12,%rsi
  402762:	89 df                	mov    %ebx,%edi
  402764:	e8 57 e7 ff ff       	callq  400ec0 <connect@plt>
  402769:	85 c0                	test   %eax,%eax
  40276b:	0f 88 fa 02 00 00    	js     402a6b <submitr+0x3d7>
  402771:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402778:	b8 00 00 00 00       	mov    $0x0,%eax
  40277d:	48 89 f1             	mov    %rsi,%rcx
  402780:	4c 89 ff             	mov    %r15,%rdi
  402783:	f2 ae                	repnz scas %es:(%rdi),%al
  402785:	48 89 ca             	mov    %rcx,%rdx
  402788:	48 f7 d2             	not    %rdx
  40278b:	48 89 f1             	mov    %rsi,%rcx
  40278e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402793:	f2 ae                	repnz scas %es:(%rdi),%al
  402795:	48 f7 d1             	not    %rcx
  402798:	49 89 c8             	mov    %rcx,%r8
  40279b:	48 89 f1             	mov    %rsi,%rcx
  40279e:	4c 89 f7             	mov    %r14,%rdi
  4027a1:	f2 ae                	repnz scas %es:(%rdi),%al
  4027a3:	48 f7 d1             	not    %rcx
  4027a6:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4027ab:	48 89 f1             	mov    %rsi,%rcx
  4027ae:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4027b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4027b5:	48 89 c8             	mov    %rcx,%rax
  4027b8:	48 f7 d0             	not    %rax
  4027bb:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4027c0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4027c5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4027cc:	00 
  4027cd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4027d3:	0f 87 fa 02 00 00    	ja     402ad3 <submitr+0x43f>
  4027d9:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4027e0:	00 
  4027e1:	b9 00 04 00 00       	mov    $0x400,%ecx
  4027e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4027eb:	48 89 f7             	mov    %rsi,%rdi
  4027ee:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027f1:	4c 89 ff             	mov    %r15,%rdi
  4027f4:	e8 88 fd ff ff       	callq  402581 <urlencode>
  4027f9:	85 c0                	test   %eax,%eax
  4027fb:	0f 88 45 03 00 00    	js     402b46 <submitr+0x4b2>
  402801:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402808:	00 
  402809:	48 83 ec 08          	sub    $0x8,%rsp
  40280d:	41 55                	push   %r13
  40280f:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402816:	00 
  402817:	50                   	push   %rax
  402818:	41 56                	push   %r14
  40281a:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  40281f:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402824:	48 8d 0d 3d 11 00 00 	lea    0x113d(%rip),%rcx        # 403968 <trans_char+0x38>
  40282b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402830:	be 01 00 00 00       	mov    $0x1,%esi
  402835:	4c 89 e7             	mov    %r12,%rdi
  402838:	b8 00 00 00 00       	mov    $0x0,%eax
  40283d:	e8 9e e6 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402842:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402849:	b8 00 00 00 00       	mov    $0x0,%eax
  40284e:	4c 89 e7             	mov    %r12,%rdi
  402851:	f2 ae                	repnz scas %es:(%rdi),%al
  402853:	48 89 ca             	mov    %rcx,%rdx
  402856:	48 f7 d2             	not    %rdx
  402859:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40285d:	48 83 c4 20          	add    $0x20,%rsp
  402861:	4c 89 e6             	mov    %r12,%rsi
  402864:	89 df                	mov    %ebx,%edi
  402866:	e8 89 fb ff ff       	callq  4023f4 <rio_writen>
  40286b:	48 85 c0             	test   %rax,%rax
  40286e:	0f 88 5d 03 00 00    	js     402bd1 <submitr+0x53d>
  402874:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402879:	89 de                	mov    %ebx,%esi
  40287b:	4c 89 e7             	mov    %r12,%rdi
  40287e:	e8 2f fb ff ff       	callq  4023b2 <rio_readinitb>
  402883:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40288a:	00 
  40288b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402890:	4c 89 e7             	mov    %r12,%rdi
  402893:	e8 45 fc ff ff       	callq  4024dd <rio_readlineb>
  402898:	48 85 c0             	test   %rax,%rax
  40289b:	0f 8e 9c 03 00 00    	jle    402c3d <submitr+0x5a9>
  4028a1:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4028a6:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  4028ad:	00 
  4028ae:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  4028b5:	00 
  4028b6:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4028bd:	00 
  4028be:	48 8d 35 3a 11 00 00 	lea    0x113a(%rip),%rsi        # 4039ff <trans_char+0xcf>
  4028c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ca:	e8 71 e5 ff ff       	callq  400e40 <__isoc99_sscanf@plt>
  4028cf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4028d6:	00 
  4028d7:	b9 03 00 00 00       	mov    $0x3,%ecx
  4028dc:	48 8d 3d 33 11 00 00 	lea    0x1133(%rip),%rdi        # 403a16 <trans_char+0xe6>
  4028e3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028e5:	0f 97 c0             	seta   %al
  4028e8:	1c 00                	sbb    $0x0,%al
  4028ea:	84 c0                	test   %al,%al
  4028ec:	0f 84 cb 03 00 00    	je     402cbd <submitr+0x629>
  4028f2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4028f9:	00 
  4028fa:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4028ff:	ba 00 20 00 00       	mov    $0x2000,%edx
  402904:	e8 d4 fb ff ff       	callq  4024dd <rio_readlineb>
  402909:	48 85 c0             	test   %rax,%rax
  40290c:	7f c1                	jg     4028cf <submitr+0x23b>
  40290e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402915:	3a 20 43 
  402918:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40291f:	20 75 6e 
  402922:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402926:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40292a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402931:	74 6f 20 
  402934:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40293b:	68 65 61 
  40293e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402942:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402946:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40294d:	66 72 6f 
  402950:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402957:	6f 6c 61 
  40295a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40295e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402962:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402969:	76 65 72 
  40296c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402970:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402974:	89 df                	mov    %ebx,%edi
  402976:	e8 15 e4 ff ff       	callq  400d90 <close@plt>
  40297b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402980:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402987:	00 
  402988:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40298f:	00 00 
  402991:	0f 85 96 04 00 00    	jne    402e2d <submitr+0x799>
  402997:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40299e:	5b                   	pop    %rbx
  40299f:	5d                   	pop    %rbp
  4029a0:	41 5c                	pop    %r12
  4029a2:	41 5d                	pop    %r13
  4029a4:	41 5e                	pop    %r14
  4029a6:	41 5f                	pop    %r15
  4029a8:	c3                   	retq   
  4029a9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029b0:	3a 20 43 
  4029b3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029ba:	20 75 6e 
  4029bd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029c1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029c5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029cc:	74 6f 20 
  4029cf:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4029d6:	65 20 73 
  4029d9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029dd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029e1:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4029e8:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029f3:	eb 8b                	jmp    402980 <submitr+0x2ec>
  4029f5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029fc:	3a 20 44 
  4029ff:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402a06:	20 75 6e 
  402a09:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a0d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a11:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a18:	74 6f 20 
  402a1b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402a22:	76 65 20 
  402a25:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a29:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a2d:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402a34:	61 62 20 
  402a37:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402a3e:	72 20 61 
  402a41:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a45:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a49:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402a50:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402a56:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402a5a:	89 df                	mov    %ebx,%edi
  402a5c:	e8 2f e3 ff ff       	callq  400d90 <close@plt>
  402a61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a66:	e9 15 ff ff ff       	jmpq   402980 <submitr+0x2ec>
  402a6b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a72:	3a 20 55 
  402a75:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a7c:	20 74 6f 
  402a7f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a83:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a87:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a8e:	65 63 74 
  402a91:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a98:	68 65 20 
  402a9b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a9f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402aa3:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402aaa:	61 62 20 
  402aad:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ab1:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402ab8:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402abe:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402ac2:	89 df                	mov    %ebx,%edi
  402ac4:	e8 c7 e2 ff ff       	callq  400d90 <close@plt>
  402ac9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ace:	e9 ad fe ff ff       	jmpq   402980 <submitr+0x2ec>
  402ad3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402ada:	3a 20 52 
  402add:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402ae4:	20 73 74 
  402ae7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aeb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aef:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402af6:	74 6f 6f 
  402af9:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402b00:	65 2e 20 
  402b03:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b07:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b0b:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402b12:	61 73 65 
  402b15:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402b1c:	49 54 52 
  402b1f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b23:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b27:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402b2e:	55 46 00 
  402b31:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b35:	89 df                	mov    %ebx,%edi
  402b37:	e8 54 e2 ff ff       	callq  400d90 <close@plt>
  402b3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b41:	e9 3a fe ff ff       	jmpq   402980 <submitr+0x2ec>
  402b46:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b4d:	3a 20 52 
  402b50:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402b57:	20 73 74 
  402b5a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b5e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b62:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402b69:	63 6f 6e 
  402b6c:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402b73:	20 61 6e 
  402b76:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b7a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b7e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402b85:	67 61 6c 
  402b88:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402b8f:	6e 70 72 
  402b92:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b96:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b9a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ba1:	6c 65 20 
  402ba4:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402bab:	63 74 65 
  402bae:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bb2:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402bb6:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402bbc:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402bc0:	89 df                	mov    %ebx,%edi
  402bc2:	e8 c9 e1 ff ff       	callq  400d90 <close@plt>
  402bc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bcc:	e9 af fd ff ff       	jmpq   402980 <submitr+0x2ec>
  402bd1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bd8:	3a 20 43 
  402bdb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402be2:	20 75 6e 
  402be5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402be9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bf4:	74 6f 20 
  402bf7:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402bfe:	20 74 6f 
  402c01:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c05:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c09:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402c10:	41 75 74 
  402c13:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402c1a:	73 65 72 
  402c1d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c21:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c25:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402c2c:	89 df                	mov    %ebx,%edi
  402c2e:	e8 5d e1 ff ff       	callq  400d90 <close@plt>
  402c33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c38:	e9 43 fd ff ff       	jmpq   402980 <submitr+0x2ec>
  402c3d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c44:	3a 20 43 
  402c47:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c4e:	20 75 6e 
  402c51:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c55:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c59:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c60:	74 6f 20 
  402c63:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402c6a:	66 69 72 
  402c6d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c71:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c75:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402c7c:	61 64 65 
  402c7f:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402c86:	6d 20 41 
  402c89:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c8d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c91:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402c98:	62 20 73 
  402c9b:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c9f:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402ca6:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402cac:	89 df                	mov    %ebx,%edi
  402cae:	e8 dd e0 ff ff       	callq  400d90 <close@plt>
  402cb3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cb8:	e9 c3 fc ff ff       	jmpq   402980 <submitr+0x2ec>
  402cbd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402cc4:	00 
  402cc5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402cca:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ccf:	e8 09 f8 ff ff       	callq  4024dd <rio_readlineb>
  402cd4:	48 85 c0             	test   %rax,%rax
  402cd7:	0f 8e 96 00 00 00    	jle    402d73 <submitr+0x6df>
  402cdd:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402ce2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ce9:	0f 85 05 01 00 00    	jne    402df4 <submitr+0x760>
  402cef:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402cf6:	00 
  402cf7:	48 89 ef             	mov    %rbp,%rdi
  402cfa:	e8 31 e0 ff ff       	callq  400d30 <strcpy@plt>
  402cff:	89 df                	mov    %ebx,%edi
  402d01:	e8 8a e0 ff ff       	callq  400d90 <close@plt>
  402d06:	b9 04 00 00 00       	mov    $0x4,%ecx
  402d0b:	48 8d 3d fe 0c 00 00 	lea    0xcfe(%rip),%rdi        # 403a10 <trans_char+0xe0>
  402d12:	48 89 ee             	mov    %rbp,%rsi
  402d15:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d17:	0f 97 c0             	seta   %al
  402d1a:	1c 00                	sbb    $0x0,%al
  402d1c:	0f be c0             	movsbl %al,%eax
  402d1f:	85 c0                	test   %eax,%eax
  402d21:	0f 84 59 fc ff ff    	je     402980 <submitr+0x2ec>
  402d27:	b9 05 00 00 00       	mov    $0x5,%ecx
  402d2c:	48 8d 3d e1 0c 00 00 	lea    0xce1(%rip),%rdi        # 403a14 <trans_char+0xe4>
  402d33:	48 89 ee             	mov    %rbp,%rsi
  402d36:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d38:	0f 97 c0             	seta   %al
  402d3b:	1c 00                	sbb    $0x0,%al
  402d3d:	0f be c0             	movsbl %al,%eax
  402d40:	85 c0                	test   %eax,%eax
  402d42:	0f 84 38 fc ff ff    	je     402980 <submitr+0x2ec>
  402d48:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d4d:	48 8d 3d c5 0c 00 00 	lea    0xcc5(%rip),%rdi        # 403a19 <trans_char+0xe9>
  402d54:	48 89 ee             	mov    %rbp,%rsi
  402d57:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d59:	0f 97 c0             	seta   %al
  402d5c:	1c 00                	sbb    $0x0,%al
  402d5e:	0f be c0             	movsbl %al,%eax
  402d61:	85 c0                	test   %eax,%eax
  402d63:	0f 84 17 fc ff ff    	je     402980 <submitr+0x2ec>
  402d69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d6e:	e9 0d fc ff ff       	jmpq   402980 <submitr+0x2ec>
  402d73:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d7a:	3a 20 43 
  402d7d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d84:	20 75 6e 
  402d87:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d8b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d8f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d96:	74 6f 20 
  402d99:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402da0:	73 74 61 
  402da3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402da7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402dab:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402db2:	65 73 73 
  402db5:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402dbc:	72 6f 6d 
  402dbf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402dc3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402dc7:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402dce:	6c 61 62 
  402dd1:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402dd8:	65 72 00 
  402ddb:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ddf:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402de3:	89 df                	mov    %ebx,%edi
  402de5:	e8 a6 df ff ff       	callq  400d90 <close@plt>
  402dea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402def:	e9 8c fb ff ff       	jmpq   402980 <submitr+0x2ec>
  402df4:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402dfb:	00 
  402dfc:	48 8d 0d c5 0b 00 00 	lea    0xbc5(%rip),%rcx        # 4039c8 <trans_char+0x98>
  402e03:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402e0a:	be 01 00 00 00       	mov    $0x1,%esi
  402e0f:	48 89 ef             	mov    %rbp,%rdi
  402e12:	b8 00 00 00 00       	mov    $0x0,%eax
  402e17:	e8 c4 e0 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402e1c:	89 df                	mov    %ebx,%edi
  402e1e:	e8 6d df ff ff       	callq  400d90 <close@plt>
  402e23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e28:	e9 53 fb ff ff       	jmpq   402980 <submitr+0x2ec>
  402e2d:	e8 9e f3 ff ff       	callq  4021d0 <__stack_chk_fail>

0000000000402e32 <init_timeout>:
  402e32:	85 ff                	test   %edi,%edi
  402e34:	74 28                	je     402e5e <init_timeout+0x2c>
  402e36:	53                   	push   %rbx
  402e37:	89 fb                	mov    %edi,%ebx
  402e39:	85 ff                	test   %edi,%edi
  402e3b:	78 1a                	js     402e57 <init_timeout+0x25>
  402e3d:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 4023c4 <sigalrm_handler>
  402e44:	bf 0e 00 00 00       	mov    $0xe,%edi
  402e49:	e8 72 df ff ff       	callq  400dc0 <signal@plt>
  402e4e:	89 df                	mov    %ebx,%edi
  402e50:	e8 2b df ff ff       	callq  400d80 <alarm@plt>
  402e55:	5b                   	pop    %rbx
  402e56:	c3                   	retq   
  402e57:	bb 00 00 00 00       	mov    $0x0,%ebx
  402e5c:	eb df                	jmp    402e3d <init_timeout+0xb>
  402e5e:	f3 c3                	repz retq 

0000000000402e60 <init_driver>:
  402e60:	41 54                	push   %r12
  402e62:	55                   	push   %rbp
  402e63:	53                   	push   %rbx
  402e64:	48 83 ec 20          	sub    $0x20,%rsp
  402e68:	49 89 fc             	mov    %rdi,%r12
  402e6b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e72:	00 00 
  402e74:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402e79:	31 c0                	xor    %eax,%eax
  402e7b:	be 01 00 00 00       	mov    $0x1,%esi
  402e80:	bf 0d 00 00 00       	mov    $0xd,%edi
  402e85:	e8 36 df ff ff       	callq  400dc0 <signal@plt>
  402e8a:	be 01 00 00 00       	mov    $0x1,%esi
  402e8f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e94:	e8 27 df ff ff       	callq  400dc0 <signal@plt>
  402e99:	be 01 00 00 00       	mov    $0x1,%esi
  402e9e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ea3:	e8 18 df ff ff       	callq  400dc0 <signal@plt>
  402ea8:	ba 00 00 00 00       	mov    $0x0,%edx
  402ead:	be 01 00 00 00       	mov    $0x1,%esi
  402eb2:	bf 02 00 00 00       	mov    $0x2,%edi
  402eb7:	e8 34 e0 ff ff       	callq  400ef0 <socket@plt>
  402ebc:	85 c0                	test   %eax,%eax
  402ebe:	0f 88 a3 00 00 00    	js     402f67 <init_driver+0x107>
  402ec4:	89 c3                	mov    %eax,%ebx
  402ec6:	48 8d 3d 4f 0b 00 00 	lea    0xb4f(%rip),%rdi        # 403a1c <trans_char+0xec>
  402ecd:	e8 fe de ff ff       	callq  400dd0 <gethostbyname@plt>
  402ed2:	48 85 c0             	test   %rax,%rax
  402ed5:	0f 84 df 00 00 00    	je     402fba <init_driver+0x15a>
  402edb:	48 89 e5             	mov    %rsp,%rbp
  402ede:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402ee5:	00 00 
  402ee7:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402eee:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402ef4:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402efa:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402efe:	48 8b 40 18          	mov    0x18(%rax),%rax
  402f02:	48 8b 30             	mov    (%rax),%rsi
  402f05:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402f09:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402f0e:	e8 cd de ff ff       	callq  400de0 <__memmove_chk@plt>
  402f13:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  402f1a:	ba 10 00 00 00       	mov    $0x10,%edx
  402f1f:	48 89 ee             	mov    %rbp,%rsi
  402f22:	89 df                	mov    %ebx,%edi
  402f24:	e8 97 df ff ff       	callq  400ec0 <connect@plt>
  402f29:	85 c0                	test   %eax,%eax
  402f2b:	0f 88 fb 00 00 00    	js     40302c <init_driver+0x1cc>
  402f31:	89 df                	mov    %ebx,%edi
  402f33:	e8 58 de ff ff       	callq  400d90 <close@plt>
  402f38:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402f3f:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402f45:	b8 00 00 00 00       	mov    $0x0,%eax
  402f4a:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f4f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f56:	00 00 
  402f58:	0f 85 28 01 00 00    	jne    403086 <init_driver+0x226>
  402f5e:	48 83 c4 20          	add    $0x20,%rsp
  402f62:	5b                   	pop    %rbx
  402f63:	5d                   	pop    %rbp
  402f64:	41 5c                	pop    %r12
  402f66:	c3                   	retq   
  402f67:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f6e:	3a 20 43 
  402f71:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f78:	20 75 6e 
  402f7b:	49 89 04 24          	mov    %rax,(%r12)
  402f7f:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f84:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f8b:	74 6f 20 
  402f8e:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f95:	65 20 73 
  402f98:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f9d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fa2:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402fa9:	6b 65 
  402fab:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402fb2:	00 
  402fb3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fb8:	eb 90                	jmp    402f4a <init_driver+0xea>
  402fba:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402fc1:	3a 20 44 
  402fc4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402fcb:	20 75 6e 
  402fce:	49 89 04 24          	mov    %rax,(%r12)
  402fd2:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402fd7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fde:	74 6f 20 
  402fe1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402fe8:	76 65 20 
  402feb:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ff0:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ff5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402ffc:	72 20 61 
  402fff:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  403004:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  40300b:	72 65 
  40300d:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  403014:	73 
  403015:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  40301b:	89 df                	mov    %ebx,%edi
  40301d:	e8 6e dd ff ff       	callq  400d90 <close@plt>
  403022:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403027:	e9 1e ff ff ff       	jmpq   402f4a <init_driver+0xea>
  40302c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403033:	3a 20 55 
  403036:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40303d:	20 74 6f 
  403040:	49 89 04 24          	mov    %rax,(%r12)
  403044:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403049:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403050:	65 63 74 
  403053:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40305a:	65 72 76 
  40305d:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403062:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403067:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  40306e:	72 
  40306f:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  403075:	89 df                	mov    %ebx,%edi
  403077:	e8 14 dd ff ff       	callq  400d90 <close@plt>
  40307c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403081:	e9 c4 fe ff ff       	jmpq   402f4a <init_driver+0xea>
  403086:	e8 45 f1 ff ff       	callq  4021d0 <__stack_chk_fail>

000000000040308b <driver_post>:
  40308b:	53                   	push   %rbx
  40308c:	4c 89 cb             	mov    %r9,%rbx
  40308f:	45 85 c0             	test   %r8d,%r8d
  403092:	75 18                	jne    4030ac <driver_post+0x21>
  403094:	48 85 ff             	test   %rdi,%rdi
  403097:	74 05                	je     40309e <driver_post+0x13>
  403099:	80 3f 00             	cmpb   $0x0,(%rdi)
  40309c:	75 37                	jne    4030d5 <driver_post+0x4a>
  40309e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4030a3:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4030a7:	44 89 c0             	mov    %r8d,%eax
  4030aa:	5b                   	pop    %rbx
  4030ab:	c3                   	retq   
  4030ac:	48 89 ca             	mov    %rcx,%rdx
  4030af:	48 8d 35 76 09 00 00 	lea    0x976(%rip),%rsi        # 403a2c <trans_char+0xfc>
  4030b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4030bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4030c0:	e8 9b dd ff ff       	callq  400e60 <__printf_chk@plt>
  4030c5:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4030ca:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4030ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4030d3:	eb d5                	jmp    4030aa <driver_post+0x1f>
  4030d5:	48 83 ec 08          	sub    $0x8,%rsp
  4030d9:	41 51                	push   %r9
  4030db:	49 89 c9             	mov    %rcx,%r9
  4030de:	49 89 d0             	mov    %rdx,%r8
  4030e1:	48 89 f9             	mov    %rdi,%rcx
  4030e4:	48 89 f2             	mov    %rsi,%rdx
  4030e7:	be b8 0b 00 00       	mov    $0xbb8,%esi
  4030ec:	48 8d 3d 29 09 00 00 	lea    0x929(%rip),%rdi        # 403a1c <trans_char+0xec>
  4030f3:	e8 9c f5 ff ff       	callq  402694 <submitr>
  4030f8:	48 83 c4 10          	add    $0x10,%rsp
  4030fc:	eb ac                	jmp    4030aa <driver_post+0x1f>

00000000004030fe <check>:
  4030fe:	89 f8                	mov    %edi,%eax
  403100:	c1 e8 1c             	shr    $0x1c,%eax
  403103:	85 c0                	test   %eax,%eax
  403105:	74 1d                	je     403124 <check+0x26>
  403107:	b9 00 00 00 00       	mov    $0x0,%ecx
  40310c:	83 f9 1f             	cmp    $0x1f,%ecx
  40310f:	7f 0d                	jg     40311e <check+0x20>
  403111:	89 f8                	mov    %edi,%eax
  403113:	d3 e8                	shr    %cl,%eax
  403115:	3c 0a                	cmp    $0xa,%al
  403117:	74 11                	je     40312a <check+0x2c>
  403119:	83 c1 08             	add    $0x8,%ecx
  40311c:	eb ee                	jmp    40310c <check+0xe>
  40311e:	b8 01 00 00 00       	mov    $0x1,%eax
  403123:	c3                   	retq   
  403124:	b8 00 00 00 00       	mov    $0x0,%eax
  403129:	c3                   	retq   
  40312a:	b8 00 00 00 00       	mov    $0x0,%eax
  40312f:	c3                   	retq   

0000000000403130 <gencookie>:
  403130:	53                   	push   %rbx
  403131:	83 c7 01             	add    $0x1,%edi
  403134:	e8 c7 db ff ff       	callq  400d00 <srandom@plt>
  403139:	e8 e2 dc ff ff       	callq  400e20 <random@plt>
  40313e:	89 c3                	mov    %eax,%ebx
  403140:	89 c7                	mov    %eax,%edi
  403142:	e8 b7 ff ff ff       	callq  4030fe <check>
  403147:	85 c0                	test   %eax,%eax
  403149:	74 ee                	je     403139 <gencookie+0x9>
  40314b:	89 d8                	mov    %ebx,%eax
  40314d:	5b                   	pop    %rbx
  40314e:	c3                   	retq   
  40314f:	90                   	nop

0000000000403150 <__libc_csu_init>:
  403150:	41 57                	push   %r15
  403152:	41 56                	push   %r14
  403154:	49 89 d7             	mov    %rdx,%r15
  403157:	41 55                	push   %r13
  403159:	41 54                	push   %r12
  40315b:	4c 8d 25 9e 1c 20 00 	lea    0x201c9e(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403162:	55                   	push   %rbp
  403163:	48 8d 2d 9e 1c 20 00 	lea    0x201c9e(%rip),%rbp        # 604e08 <__init_array_end>
  40316a:	53                   	push   %rbx
  40316b:	41 89 fd             	mov    %edi,%r13d
  40316e:	49 89 f6             	mov    %rsi,%r14
  403171:	4c 29 e5             	sub    %r12,%rbp
  403174:	48 83 ec 08          	sub    $0x8,%rsp
  403178:	48 c1 fd 03          	sar    $0x3,%rbp
  40317c:	e8 2f db ff ff       	callq  400cb0 <_init>
  403181:	48 85 ed             	test   %rbp,%rbp
  403184:	74 20                	je     4031a6 <__libc_csu_init+0x56>
  403186:	31 db                	xor    %ebx,%ebx
  403188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40318f:	00 
  403190:	4c 89 fa             	mov    %r15,%rdx
  403193:	4c 89 f6             	mov    %r14,%rsi
  403196:	44 89 ef             	mov    %r13d,%edi
  403199:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40319d:	48 83 c3 01          	add    $0x1,%rbx
  4031a1:	48 39 dd             	cmp    %rbx,%rbp
  4031a4:	75 ea                	jne    403190 <__libc_csu_init+0x40>
  4031a6:	48 83 c4 08          	add    $0x8,%rsp
  4031aa:	5b                   	pop    %rbx
  4031ab:	5d                   	pop    %rbp
  4031ac:	41 5c                	pop    %r12
  4031ae:	41 5d                	pop    %r13
  4031b0:	41 5e                	pop    %r14
  4031b2:	41 5f                	pop    %r15
  4031b4:	c3                   	retq   
  4031b5:	90                   	nop
  4031b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4031bd:	00 00 00 

00000000004031c0 <__libc_csu_fini>:
  4031c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004031c4 <_fini>:
  4031c4:	48 83 ec 08          	sub    $0x8,%rsp
  4031c8:	48 83 c4 08          	add    $0x8,%rsp
  4031cc:	c3                   	retq   
