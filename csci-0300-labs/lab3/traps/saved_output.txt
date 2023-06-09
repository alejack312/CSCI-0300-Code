
trap1:     file format elf64-x86-64


Disassembly of section .init:

0000000000000630 <_init>:
 630:	48 83 ec 08          	sub    $0x8,%rsp
 634:	48 8b 05 ad 09 20 00 	mov    0x2009ad(%rip),%rax        # 200fe8 <__gmon_start__>
 63b:	48 85 c0             	test   %rax,%rax
 63e:	74 02                	je     642 <_init+0x12>
 640:	ff d0                	callq  *%rax
 642:	48 83 c4 08          	add    $0x8,%rsp
 646:	c3                   	retq   

Disassembly of section .plt:

0000000000000650 <.plt>:
 650:	ff 35 4a 09 20 00    	pushq  0x20094a(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 656:	ff 25 4c 09 20 00    	jmpq   *0x20094c(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 65c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000660 <puts@plt>:
 660:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 200fb0 <puts@GLIBC_2.2.5>
 666:	68 00 00 00 00       	pushq  $0x0
 66b:	e9 e0 ff ff ff       	jmpq   650 <.plt>

0000000000000670 <__stack_chk_fail@plt>:
 670:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 200fb8 <__stack_chk_fail@GLIBC_2.4>
 676:	68 01 00 00 00       	pushq  $0x1
 67b:	e9 d0 ff ff ff       	jmpq   650 <.plt>

0000000000000680 <memset@plt>:
 680:	ff 25 3a 09 20 00    	jmpq   *0x20093a(%rip)        # 200fc0 <memset@GLIBC_2.2.5>
 686:	68 02 00 00 00       	pushq  $0x2
 68b:	e9 c0 ff ff ff       	jmpq   650 <.plt>

0000000000000690 <fgets@plt>:
 690:	ff 25 32 09 20 00    	jmpq   *0x200932(%rip)        # 200fc8 <fgets@GLIBC_2.2.5>
 696:	68 03 00 00 00       	pushq  $0x3
 69b:	e9 b0 ff ff ff       	jmpq   650 <.plt>

00000000000006a0 <atoi@plt>:
 6a0:	ff 25 2a 09 20 00    	jmpq   *0x20092a(%rip)        # 200fd0 <atoi@GLIBC_2.2.5>
 6a6:	68 04 00 00 00       	pushq  $0x4
 6ab:	e9 a0 ff ff ff       	jmpq   650 <.plt>

Disassembly of section .plt.got:

00000000000006b0 <__cxa_finalize@plt>:
 6b0:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 6b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006c0 <_start>:
 6c0:	31 ed                	xor    %ebp,%ebp
 6c2:	49 89 d1             	mov    %rdx,%r9
 6c5:	5e                   	pop    %rsi
 6c6:	48 89 e2             	mov    %rsp,%rdx
 6c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 6cd:	50                   	push   %rax
 6ce:	54                   	push   %rsp
 6cf:	4c 8d 05 ba 02 00 00 	lea    0x2ba(%rip),%r8        # 990 <__libc_csu_fini>
 6d6:	48 8d 0d 43 02 00 00 	lea    0x243(%rip),%rcx        # 920 <__libc_csu_init>
 6dd:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 7ca <main>
 6e4:	ff 15 f6 08 20 00    	callq  *0x2008f6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 6ea:	f4                   	hlt    
 6eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006f0 <deregister_tm_clones>:
 6f0:	48 8d 3d 21 09 20 00 	lea    0x200921(%rip),%rdi        # 201018 <__TMC_END__>
 6f7:	55                   	push   %rbp
 6f8:	48 8d 05 19 09 20 00 	lea    0x200919(%rip),%rax        # 201018 <__TMC_END__>
 6ff:	48 39 f8             	cmp    %rdi,%rax
 702:	48 89 e5             	mov    %rsp,%rbp
 705:	74 19                	je     720 <deregister_tm_clones+0x30>
 707:	48 8b 05 ca 08 20 00 	mov    0x2008ca(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 70e:	48 85 c0             	test   %rax,%rax
 711:	74 0d                	je     720 <deregister_tm_clones+0x30>
 713:	5d                   	pop    %rbp
 714:	ff e0                	jmpq   *%rax
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 
 720:	5d                   	pop    %rbp
 721:	c3                   	retq   
 722:	0f 1f 40 00          	nopl   0x0(%rax)
 726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 72d:	00 00 00 

0000000000000730 <register_tm_clones>:
 730:	48 8d 3d e1 08 20 00 	lea    0x2008e1(%rip),%rdi        # 201018 <__TMC_END__>
 737:	48 8d 35 da 08 20 00 	lea    0x2008da(%rip),%rsi        # 201018 <__TMC_END__>
 73e:	55                   	push   %rbp
 73f:	48 29 fe             	sub    %rdi,%rsi
 742:	48 89 e5             	mov    %rsp,%rbp
 745:	48 c1 fe 03          	sar    $0x3,%rsi
 749:	48 89 f0             	mov    %rsi,%rax
 74c:	48 c1 e8 3f          	shr    $0x3f,%rax
 750:	48 01 c6             	add    %rax,%rsi
 753:	48 d1 fe             	sar    %rsi
 756:	74 18                	je     770 <register_tm_clones+0x40>
 758:	48 8b 05 91 08 20 00 	mov    0x200891(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 75f:	48 85 c0             	test   %rax,%rax
 762:	74 0c                	je     770 <register_tm_clones+0x40>
 764:	5d                   	pop    %rbp
 765:	ff e0                	jmpq   *%rax
 767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 76e:	00 00 
 770:	5d                   	pop    %rbp
 771:	c3                   	retq   
 772:	0f 1f 40 00          	nopl   0x0(%rax)
 776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 77d:	00 00 00 

0000000000000780 <__do_global_dtors_aux>:
 780:	80 3d a1 08 20 00 00 	cmpb   $0x0,0x2008a1(%rip)        # 201028 <completed.7697>
 787:	75 2f                	jne    7b8 <__do_global_dtors_aux+0x38>
 789:	48 83 3d 67 08 20 00 	cmpq   $0x0,0x200867(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 790:	00 
 791:	55                   	push   %rbp
 792:	48 89 e5             	mov    %rsp,%rbp
 795:	74 0c                	je     7a3 <__do_global_dtors_aux+0x23>
 797:	48 8b 3d 6a 08 20 00 	mov    0x20086a(%rip),%rdi        # 201008 <__dso_handle>
 79e:	e8 0d ff ff ff       	callq  6b0 <__cxa_finalize@plt>
 7a3:	e8 48 ff ff ff       	callq  6f0 <deregister_tm_clones>
 7a8:	c6 05 79 08 20 00 01 	movb   $0x1,0x200879(%rip)        # 201028 <completed.7697>
 7af:	5d                   	pop    %rbp
 7b0:	c3                   	retq   
 7b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7b8:	f3 c3                	repz retq 
 7ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000007c0 <frame_dummy>:
 7c0:	55                   	push   %rbp
 7c1:	48 89 e5             	mov    %rsp,%rbp
 7c4:	5d                   	pop    %rbp
 7c5:	e9 66 ff ff ff       	jmpq   730 <register_tm_clones>

00000000000007ca <main>:
 7ca:	55                   	push   %rbp
 7cb:	48 89 e5             	mov    %rsp,%rbp
 7ce:	41 57                	push   %r15
 7d0:	41 56                	push   %r14
 7d2:	41 55                	push   %r13
 7d4:	41 54                	push   %r12
 7d6:	53                   	push   %rbx
 7d7:	48 83 ec 38          	sub    $0x38,%rsp
 7db:	89 7d ac             	mov    %edi,-0x54(%rbp)
 7de:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
 7e2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7e9:	00 00 
 7eb:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 7ef:	31 c0                	xor    %eax,%eax
 7f1:	48 89 e0             	mov    %rsp,%rax
 7f4:	48 89 c3             	mov    %rax,%rbx
 7f7:	48 8d 3d aa 01 00 00 	lea    0x1aa(%rip),%rdi        # 9a8 <_IO_stdin_used+0x8>
 7fe:	e8 5d fe ff ff       	callq  660 <puts@plt>
 803:	8b 05 07 08 20 00    	mov    0x200807(%rip),%eax        # 201010 <MINBUF_SIZE>
 809:	48 63 d0             	movslq %eax,%rdx
 80c:	48 83 ea 01          	sub    $0x1,%rdx
 810:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
 814:	48 63 d0             	movslq %eax,%rdx
 817:	49 89 d6             	mov    %rdx,%r14
 81a:	41 bf 00 00 00 00    	mov    $0x0,%r15d
 820:	48 63 d0             	movslq %eax,%rdx
 823:	49 89 d4             	mov    %rdx,%r12
 826:	41 bd 00 00 00 00    	mov    $0x0,%r13d
 82c:	48 98                	cltq   
 82e:	ba 10 00 00 00       	mov    $0x10,%edx
 833:	48 83 ea 01          	sub    $0x1,%rdx
 837:	48 01 d0             	add    %rdx,%rax
 83a:	b9 10 00 00 00       	mov    $0x10,%ecx
 83f:	ba 00 00 00 00       	mov    $0x0,%edx
 844:	48 f7 f1             	div    %rcx
 847:	48 6b c0 10          	imul   $0x10,%rax,%rax
 84b:	48 29 c4             	sub    %rax,%rsp
 84e:	48 89 e0             	mov    %rsp,%rax
 851:	48 83 c0 00          	add    $0x0,%rax
 855:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 859:	8b 05 b1 07 20 00    	mov    0x2007b1(%rip),%eax        # 201010 <MINBUF_SIZE>
 85f:	48 63 d0             	movslq %eax,%rdx
 862:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 866:	be 00 00 00 00       	mov    $0x0,%esi
 86b:	48 89 c7             	mov    %rax,%rdi
 86e:	e8 0d fe ff ff       	callq  680 <memset@plt>
 873:	48 8b 15 a6 07 20 00 	mov    0x2007a6(%rip),%rdx        # 201020 <stdin@@GLIBC_2.2.5>
 87a:	8b 0d 90 07 20 00    	mov    0x200790(%rip),%ecx        # 201010 <MINBUF_SIZE>
 880:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 884:	89 ce                	mov    %ecx,%esi
 886:	48 89 c7             	mov    %rax,%rdi
 889:	e8 02 fe ff ff       	callq  690 <fgets@plt>
 88e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 892:	48 89 c7             	mov    %rax,%rdi
 895:	e8 06 fe ff ff       	callq  6a0 <atoi@plt>
 89a:	89 45 b0             	mov    %eax,-0x50(%rbp)
 89d:	8b 45 b0             	mov    -0x50(%rbp),%eax
 8a0:	89 c7                	mov    %eax,%edi
 8a2:	e8 4e 00 00 00       	callq  8f5 <trap1>
 8a7:	89 45 b4             	mov    %eax,-0x4c(%rbp)
 8aa:	83 7d b4 01          	cmpl   $0x1,-0x4c(%rbp)
 8ae:	75 0e                	jne    8be <main+0xf4>
 8b0:	48 8d 3d 11 01 00 00 	lea    0x111(%rip),%rdi        # 9c8 <_IO_stdin_used+0x28>
 8b7:	e8 a4 fd ff ff       	callq  660 <puts@plt>
 8bc:	eb 0c                	jmp    8ca <main+0x100>
 8be:	48 8d 3d 25 01 00 00 	lea    0x125(%rip),%rdi        # 9ea <_IO_stdin_used+0x4a>
 8c5:	e8 96 fd ff ff       	callq  660 <puts@plt>
 8ca:	b8 00 00 00 00       	mov    $0x0,%eax
 8cf:	48 89 dc             	mov    %rbx,%rsp
 8d2:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
 8d6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 8dd:	00 00 
 8df:	74 05                	je     8e6 <main+0x11c>
 8e1:	e8 8a fd ff ff       	callq  670 <__stack_chk_fail@plt>
 8e6:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 8ea:	5b                   	pop    %rbx
 8eb:	41 5c                	pop    %r12
 8ed:	41 5d                	pop    %r13
 8ef:	41 5e                	pop    %r14
 8f1:	41 5f                	pop    %r15
 8f3:	5d                   	pop    %rbp
 8f4:	c3                   	retq   

00000000000008f5 <trap1>:
 8f5:	55                   	push   %rbp
 8f6:	48 89 e5             	mov    %rsp,%rbp
 8f9:	89 7d ec             	mov    %edi,-0x14(%rbp)
 8fc:	c7 45 fc 1e 05 00 00 	movl   $0x51e,-0x4(%rbp)
 903:	8b 45 ec             	mov    -0x14(%rbp),%eax
 906:	3b 45 fc             	cmp    -0x4(%rbp),%eax
 909:	0f 9f c0             	setg   %al
 90c:	0f b6 c0             	movzbl %al,%eax
 90f:	5d                   	pop    %rbp
 910:	c3                   	retq   
 911:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 918:	00 00 00 
 91b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000920 <__libc_csu_init>:
 920:	41 57                	push   %r15
 922:	41 56                	push   %r14
 924:	49 89 d7             	mov    %rdx,%r15
 927:	41 55                	push   %r13
 929:	41 54                	push   %r12
 92b:	4c 8d 25 66 04 20 00 	lea    0x200466(%rip),%r12        # 200d98 <__frame_dummy_init_array_entry>
 932:	55                   	push   %rbp
 933:	48 8d 2d 66 04 20 00 	lea    0x200466(%rip),%rbp        # 200da0 <__do_global_dtors_aux_fini_array_entry>
 93a:	53                   	push   %rbx
 93b:	41 89 fd             	mov    %edi,%r13d
 93e:	49 89 f6             	mov    %rsi,%r14
 941:	4c 29 e5             	sub    %r12,%rbp
 944:	48 83 ec 08          	sub    $0x8,%rsp
 948:	48 c1 fd 03          	sar    $0x3,%rbp
 94c:	e8 df fc ff ff       	callq  630 <_init>
 951:	48 85 ed             	test   %rbp,%rbp
 954:	74 20                	je     976 <__libc_csu_init+0x56>
 956:	31 db                	xor    %ebx,%ebx
 958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 95f:	00 
 960:	4c 89 fa             	mov    %r15,%rdx
 963:	4c 89 f6             	mov    %r14,%rsi
 966:	44 89 ef             	mov    %r13d,%edi
 969:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 96d:	48 83 c3 01          	add    $0x1,%rbx
 971:	48 39 dd             	cmp    %rbx,%rbp
 974:	75 ea                	jne    960 <__libc_csu_init+0x40>
 976:	48 83 c4 08          	add    $0x8,%rsp
 97a:	5b                   	pop    %rbx
 97b:	5d                   	pop    %rbp
 97c:	41 5c                	pop    %r12
 97e:	41 5d                	pop    %r13
 980:	41 5e                	pop    %r14
 982:	41 5f                	pop    %r15
 984:	c3                   	retq   
 985:	90                   	nop
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <__libc_csu_fini>:
 990:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000994 <_fini>:
 994:	48 83 ec 08          	sub    $0x8,%rsp
 998:	48 83 c4 08          	add    $0x8,%rsp
 99c:	c3                   	retq   
