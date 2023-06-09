
obj/p-forkexit.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <sys_exit()>:
    return make_syscall(SYSCALL_FORK);
}

// sys_exit()
//    Exit this process. Does not return.
[[noreturn]] inline void sys_exit() {
  100000:	f3 0f 1e fa          	endbr64 
    register uintptr_t rax asm("rax") = syscallno;
  100004:	b8 06 00 00 00       	mov    $0x6,%eax
              "r10", "r11");
  100009:	0f 05                	syscall 
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100010:	bf d0 0d 10 00       	mov    $0x100dd0,%edi
  100015:	0f 05                	syscall 
    make_syscall(SYSCALL_EXIT);
    make_syscall(SYSCALL_PANIC, (uintptr_t) "sys_exit should not return!");

    // should never get here
    while (true) {
  100017:	eb fe                	jmp    100017 <sys_exit()+0x17>

0000000000100019 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100019:	f3 0f 1e fa          	endbr64 
  10001d:	55                   	push   %rbp
  10001e:	48 89 e5             	mov    %rsp,%rbp
  100021:	41 56                	push   %r14
  100023:	41 55                	push   %r13
  100025:	41 54                	push   %r12
  100027:	53                   	push   %rbx
  100028:	eb 13                	jmp    10003d <process_main()+0x24>
        if (x == 0) {
            // fork, then either exit or start allocating
            pid_t p = sys_fork();
            int choice = rand(0, 2);
            if (choice == 0 && p > 0) {
                sys_exit();
  10002a:	e8 d1 ff ff ff       	callq  100000 <sys_exit()>
            } else if (choice != 2 ? p > 0 : p == 0) {
  10002f:	85 db                	test   %ebx,%ebx
  100031:	0f 94 c2             	sete   %dl
  100034:	eb 45                	jmp    10007b <process_main()+0x62>
    register uintptr_t rax asm("rax") = syscallno;
  100036:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  10003b:	0f 05                	syscall 
        int x = rand(0, ALLOC_SLOWDOWN);
  10003d:	be 12 00 00 00       	mov    $0x12,%esi
  100042:	bf 00 00 00 00       	mov    $0x0,%edi
  100047:	e8 d6 02 00 00       	callq  100322 <rand(int, int)>
        if (x == 0) {
  10004c:	85 c0                	test   %eax,%eax
  10004e:	75 e6                	jne    100036 <process_main()+0x1d>
    register uintptr_t rax asm("rax") = syscallno;
  100050:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  100055:	0f 05                	syscall 
    return rax;
  100057:	48 89 c3             	mov    %rax,%rbx
            int choice = rand(0, 2);
  10005a:	be 02 00 00 00       	mov    $0x2,%esi
  10005f:	bf 00 00 00 00       	mov    $0x0,%edi
  100064:	e8 b9 02 00 00       	callq  100322 <rand(int, int)>
            if (choice == 0 && p > 0) {
  100069:	85 db                	test   %ebx,%ebx
  10006b:	0f 9f c2             	setg   %dl
  10006e:	85 c0                	test   %eax,%eax
  100070:	75 04                	jne    100076 <process_main()+0x5d>
  100072:	84 d2                	test   %dl,%dl
  100074:	75 b4                	jne    10002a <process_main()+0x11>
            } else if (choice != 2 ? p > 0 : p == 0) {
  100076:	83 f8 02             	cmp    $0x2,%eax
  100079:	74 b4                	je     10002f <process_main()+0x16>
  10007b:	84 d2                	test   %dl,%dl
  10007d:	74 be                	je     10003d <process_main()+0x24>
        } else {
            sys_yield();
        }
    }

    int speed = rand(1, 16);
  10007f:	be 10 00 00 00       	mov    $0x10,%esi
  100084:	bf 01 00 00 00       	mov    $0x1,%edi
  100089:	e8 94 02 00 00       	callq  100322 <rand(int, int)>
  10008e:	41 89 c4             	mov    %eax,%r12d
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  100091:	41 be 1b 30 10 00    	mov    $0x10301b,%r14d

    uint8_t* data_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100097:	49 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%r14
    heap_top = data_top;
  10009e:	4c 89 35 63 1f 00 00 	mov    %r14,0x1f63(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000a5:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000a8:	48 83 e8 01          	sub    $0x1,%rax
  1000ac:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000b2:	48 89 05 47 1f 00 00 	mov    %rax,0x1f47(%rip)        # 102000 <stack_bottom>
    unsigned nalloc = 0;

    // Allocate heap pages until out of address space,
    // forking along the way.
    while (heap_top != stack_bottom) {
  1000b9:	4c 39 f0             	cmp    %r14,%rax
  1000bc:	0f 84 14 01 00 00    	je     1001d6 <process_main()+0x1bd>
    unsigned nalloc = 0;
  1000c2:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (rand(0, 6 * ALLOC_SLOWDOWN) >= 8 * speed) {
            sys_yield();
            continue;
        }

        int x = rand(0, 7 + min(nalloc / 4, 10U));
  1000c7:	41 bd 0a 00 00 00    	mov    $0xa,%r13d
  1000cd:	e9 86 00 00 00       	jmpq   100158 <process_main()+0x13f>
  1000d2:	89 de                	mov    %ebx,%esi
  1000d4:	c1 ee 02             	shr    $0x2,%esi
  1000d7:	83 fb 2b             	cmp    $0x2b,%ebx
  1000da:	41 0f 47 f5          	cmova  %r13d,%esi
  1000de:	83 c6 07             	add    $0x7,%esi
  1000e1:	bf 00 00 00 00       	mov    $0x0,%edi
  1000e6:	e8 37 02 00 00       	callq  100322 <rand(int, int)>
        if (x < 2) {
  1000eb:	83 f8 01             	cmp    $0x1,%eax
  1000ee:	0f 8e 8e 00 00 00    	jle    100182 <process_main()+0x169>
            if (sys_fork() == 0) {
                speed = rand(1, 16);
            }
        } else if (x < 3) {
  1000f4:	83 f8 02             	cmp    $0x2,%eax
  1000f7:	0f 8e a4 00 00 00    	jle    1001a1 <process_main()+0x188>
    register uintptr_t rax asm("rax") = syscallno;
  1000fd:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100102:	48 8b 3d ff 1e 00 00 	mov    0x1eff(%rip),%rdi        # 102008 <heap_top>
  100109:	0f 05                	syscall 
            sys_exit();
        } else if (sys_page_alloc(heap_top) >= 0) {
  10010b:	85 c0                	test   %eax,%eax
  10010d:	0f 88 b1 00 00 00    	js     1001c4 <process_main()+0x1ab>
            *heap_top = speed;
  100113:	48 8b 05 ee 1e 00 00 	mov    0x1eee(%rip),%rax        # 102008 <heap_top>
  10011a:	44 88 20             	mov    %r12b,(%rax)
            console[CPOS(24, 79)] = speed;
  10011d:	66 44 89 25 79 8e fb 	mov    %r12w,-0x47187(%rip)        # b8f9e <console+0xf9e>
  100124:	ff 
            heap_top += PAGESIZE;
  100125:	48 81 05 d8 1e 00 00 	addq   $0x1000,0x1ed8(%rip)        # 102008 <heap_top>
  10012c:	00 10 00 00 
            if (console[CPOS(24, 0)]) {
  100130:	66 83 3d c8 8d fb ff 	cmpw   $0x0,-0x47238(%rip)        # b8f00 <console+0xf00>
  100137:	00 
  100138:	75 6c                	jne    1001a6 <process_main()+0x18d>
                // clear "Out of physical memory" msg
                console_printf(CPOS(24, 0), 0, "\n");
            }
            nalloc = (heap_top - data_top) / PAGESIZE;
  10013a:	48 8b 1d c7 1e 00 00 	mov    0x1ec7(%rip),%rbx        # 102008 <heap_top>
  100141:	4c 29 f3             	sub    %r14,%rbx
  100144:	48 c1 eb 0c          	shr    $0xc,%rbx
    while (heap_top != stack_bottom) {
  100148:	48 8b 05 b1 1e 00 00 	mov    0x1eb1(%rip),%rax        # 102000 <stack_bottom>
  10014f:	48 39 05 b2 1e 00 00 	cmp    %rax,0x1eb2(%rip)        # 102008 <heap_top>
  100156:	74 7e                	je     1001d6 <process_main()+0x1bd>
        if (rand(0, 6 * ALLOC_SLOWDOWN) >= 8 * speed) {
  100158:	be 6c 00 00 00       	mov    $0x6c,%esi
  10015d:	bf 00 00 00 00       	mov    $0x0,%edi
  100162:	e8 bb 01 00 00       	callq  100322 <rand(int, int)>
  100167:	89 c2                	mov    %eax,%edx
  100169:	42 8d 04 e5 00 00 00 	lea    0x0(,%r12,8),%eax
  100170:	00 
  100171:	39 c2                	cmp    %eax,%edx
  100173:	0f 8c 59 ff ff ff    	jl     1000d2 <process_main()+0xb9>
    register uintptr_t rax asm("rax") = syscallno;
  100179:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  10017e:	0f 05                	syscall 
            continue;
  100180:	eb c6                	jmp    100148 <process_main()+0x12f>
    register uintptr_t rax asm("rax") = syscallno;
  100182:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  100187:	0f 05                	syscall 
            if (sys_fork() == 0) {
  100189:	85 c0                	test   %eax,%eax
  10018b:	75 bb                	jne    100148 <process_main()+0x12f>
                speed = rand(1, 16);
  10018d:	be 10 00 00 00       	mov    $0x10,%esi
  100192:	bf 01 00 00 00       	mov    $0x1,%edi
  100197:	e8 86 01 00 00       	callq  100322 <rand(int, int)>
  10019c:	41 89 c4             	mov    %eax,%r12d
  10019f:	eb a7                	jmp    100148 <process_main()+0x12f>
            sys_exit();
  1001a1:	e8 5a fe ff ff       	callq  100000 <sys_exit()>
                console_printf(CPOS(24, 0), 0, "\n");
  1001a6:	ba ec 0d 10 00       	mov    $0x100dec,%edx
  1001ab:	be 00 00 00 00       	mov    $0x0,%esi
  1001b0:	bf 80 07 00 00       	mov    $0x780,%edi
  1001b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1001ba:	e8 9e 0b 00 00       	callq  100d5d <console_printf(int, int, char const*, ...)>
  1001bf:	e9 76 ff ff ff       	jmpq   10013a <process_main()+0x121>
        } else if (nalloc < 4) {
  1001c4:	83 fb 03             	cmp    $0x3,%ebx
  1001c7:	76 08                	jbe    1001d1 <process_main()+0x1b8>
            sys_exit();
        } else {
            nalloc -= 4;
  1001c9:	83 eb 04             	sub    $0x4,%ebx
  1001cc:	e9 77 ff ff ff       	jmpq   100148 <process_main()+0x12f>
            sys_exit();
  1001d1:	e8 2a fe ff ff       	callq  100000 <sys_exit()>
        }
    }

    // After running out of memory
    while (true) {
        if (rand(0, 2 * ALLOC_SLOWDOWN - 1) == 0) {
  1001d6:	be 23 00 00 00       	mov    $0x23,%esi
  1001db:	bf 00 00 00 00       	mov    $0x0,%edi
  1001e0:	e8 3d 01 00 00       	callq  100322 <rand(int, int)>
  1001e5:	85 c0                	test   %eax,%eax
  1001e7:	74 09                	je     1001f2 <process_main()+0x1d9>
    register uintptr_t rax asm("rax") = syscallno;
  1001e9:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1001ee:	0f 05                	syscall 
}
  1001f0:	eb e4                	jmp    1001d6 <process_main()+0x1bd>
            sys_exit();
  1001f2:	e8 09 fe ff ff       	callq  100000 <sys_exit()>

00000000001001f7 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1001f7:	f3 0f 1e fa          	endbr64 
  1001fb:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1001fe:	48 39 fe             	cmp    %rdi,%rsi
  100201:	73 09                	jae    10020c <memmove+0x15>
  100203:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100207:	48 39 cf             	cmp    %rcx,%rdi
  10020a:	72 1d                	jb     100229 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  10020c:	b9 00 00 00 00       	mov    $0x0,%ecx
  100211:	48 85 d2             	test   %rdx,%rdx
  100214:	74 12                	je     100228 <memmove+0x31>
            *d++ = *s++;
  100216:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10021a:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  10021e:	48 83 c1 01          	add    $0x1,%rcx
  100222:	48 39 d1             	cmp    %rdx,%rcx
  100225:	75 ef                	jne    100216 <memmove+0x1f>
        }
    }
    return dst;
}
  100227:	c3                   	retq   
  100228:	c3                   	retq   
        while (n-- > 0) {
  100229:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10022d:	48 85 d2             	test   %rdx,%rdx
  100230:	74 f5                	je     100227 <memmove+0x30>
            *--d = *--s;
  100232:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100236:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  100239:	48 83 e9 01          	sub    $0x1,%rcx
  10023d:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  100241:	75 ef                	jne    100232 <memmove+0x3b>
  100243:	c3                   	retq   

0000000000100244 <memset>:

void* memset(void* v, int c, size_t n) {
  100244:	f3 0f 1e fa          	endbr64 
  100248:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10024b:	48 85 d2             	test   %rdx,%rdx
  10024e:	74 13                	je     100263 <memset+0x1f>
  100250:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  100254:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  100257:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10025a:	48 83 c2 01          	add    $0x1,%rdx
  10025e:	48 39 d1             	cmp    %rdx,%rcx
  100261:	75 f4                	jne    100257 <memset+0x13>
    }
    return v;
}
  100263:	c3                   	retq   

0000000000100264 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  100264:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100268:	80 3f 00             	cmpb   $0x0,(%rdi)
  10026b:	74 10                	je     10027d <strlen+0x19>
  10026d:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  100272:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100276:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  10027a:	75 f6                	jne    100272 <strlen+0xe>
  10027c:	c3                   	retq   
  10027d:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  100282:	c3                   	retq   

0000000000100283 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  100283:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100287:	48 85 f6             	test   %rsi,%rsi
  10028a:	74 15                	je     1002a1 <strnlen+0x1e>
  10028c:	b8 00 00 00 00       	mov    $0x0,%eax
  100291:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100295:	74 0d                	je     1002a4 <strnlen+0x21>
        ++n;
  100297:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  10029b:	48 39 c6             	cmp    %rax,%rsi
  10029e:	75 f1                	jne    100291 <strnlen+0xe>
  1002a0:	c3                   	retq   
  1002a1:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  1002a4:	c3                   	retq   

00000000001002a5 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1002a5:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  1002a9:	0f b6 07             	movzbl (%rdi),%eax
  1002ac:	84 c0                	test   %al,%al
  1002ae:	74 10                	je     1002c0 <strchr+0x1b>
  1002b0:	40 38 f0             	cmp    %sil,%al
  1002b3:	74 18                	je     1002cd <strchr+0x28>
        ++s;
  1002b5:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1002b9:	0f b6 07             	movzbl (%rdi),%eax
  1002bc:	84 c0                	test   %al,%al
  1002be:	75 f0                	jne    1002b0 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  1002c0:	40 84 f6             	test   %sil,%sil
  1002c3:	b8 00 00 00 00       	mov    $0x0,%eax
  1002c8:	48 0f 44 c7          	cmove  %rdi,%rax
  1002cc:	c3                   	retq   
  1002cd:	48 89 f8             	mov    %rdi,%rax
    }
}
  1002d0:	c3                   	retq   

00000000001002d1 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  1002d1:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  1002d5:	83 3d 3c 1d 00 00 00 	cmpl   $0x0,0x1d3c(%rip)        # 102018 <rand_seed_set>
  1002dc:	74 27                	je     100305 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  1002de:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  1002e5:	f4 51 58 
  1002e8:	48 0f af 05 20 1d 00 	imul   0x1d20(%rip),%rax        # 102010 <rand_seed>
  1002ef:	00 
  1002f0:	48 83 c0 01          	add    $0x1,%rax
  1002f4:	48 89 05 15 1d 00 00 	mov    %rax,0x1d15(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1002fb:	48 c1 e8 20          	shr    $0x20,%rax
  1002ff:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100304:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100305:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10030c:	87 d4 30 
  10030f:	48 89 05 fa 1c 00 00 	mov    %rax,0x1cfa(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100316:	c7 05 f8 1c 00 00 01 	movl   $0x1,0x1cf8(%rip)        # 102018 <rand_seed_set>
  10031d:	00 00 00 
}
  100320:	eb bc                	jmp    1002de <rand()+0xd>

0000000000100322 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100322:	f3 0f 1e fa          	endbr64 
  100326:	55                   	push   %rbp
  100327:	48 89 e5             	mov    %rsp,%rbp
  10032a:	41 54                	push   %r12
  10032c:	53                   	push   %rbx
    assert(min <= max);
  10032d:	39 f7                	cmp    %esi,%edi
  10032f:	7f 27                	jg     100358 <rand(int, int)+0x36>
  100331:	41 89 fc             	mov    %edi,%r12d
  100334:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100336:	e8 96 ff ff ff       	callq  1002d1 <rand()>
  10033b:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10033d:	44 29 e3             	sub    %r12d,%ebx
  100340:	8d 43 01             	lea    0x1(%rbx),%eax
  100343:	48 98                	cltq   
    unsigned long r = rand();
  100345:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100348:	48 0f af c3          	imul   %rbx,%rax
  10034c:	48 c1 e8 1f          	shr    $0x1f,%rax
  100350:	44 01 e0             	add    %r12d,%eax
}
  100353:	5b                   	pop    %rbx
  100354:	41 5c                	pop    %r12
  100356:	5d                   	pop    %rbp
  100357:	c3                   	retq   
    assert(min <= max);
  100358:	ba ee 0d 10 00       	mov    $0x100dee,%edx
  10035d:	be f2 00 00 00       	mov    $0xf2,%esi
  100362:	bf f9 0d 10 00       	mov    $0x100df9,%edi
  100367:	e8 2b 0a 00 00       	callq  100d97 <assert_fail(char const*, int, char const*)>

000000000010036c <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  10036c:	f3 0f 1e fa          	endbr64 
  100370:	55                   	push   %rbp
  100371:	48 89 e5             	mov    %rsp,%rbp
  100374:	41 57                	push   %r15
  100376:	41 56                	push   %r14
  100378:	41 55                	push   %r13
  10037a:	41 54                	push   %r12
  10037c:	53                   	push   %rbx
  10037d:	48 83 ec 58          	sub    $0x58,%rsp
  100381:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  100385:	0f b6 02             	movzbl (%rdx),%eax
  100388:	84 c0                	test   %al,%al
  10038a:	0f 84 c6 07 00 00    	je     100b56 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  100390:	49 89 fe             	mov    %rdi,%r14
  100393:	41 89 f7             	mov    %esi,%r15d
  100396:	48 89 d3             	mov    %rdx,%rbx
  100399:	e9 b9 03 00 00       	jmpq   100757 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  10039e:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  1003a2:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  1003a6:	84 db                	test   %bl,%bl
  1003a8:	0f 84 8a 07 00 00    	je     100b38 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  1003ae:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  1003b4:	0f be f3             	movsbl %bl,%esi
  1003b7:	bf d0 14 10 00       	mov    $0x1014d0,%edi
  1003bc:	e8 e4 fe ff ff       	callq  1002a5 <strchr>
  1003c1:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  1003c4:	48 85 c0             	test   %rax,%rax
  1003c7:	74 74                	je     10043d <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  1003c9:	48 81 e9 d0 14 10 00 	sub    $0x1014d0,%rcx
  1003d0:	b8 01 00 00 00       	mov    $0x1,%eax
  1003d5:	d3 e0                	shl    %cl,%eax
  1003d7:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1003da:	49 83 c4 01          	add    $0x1,%r12
  1003de:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1003e3:	84 db                	test   %bl,%bl
  1003e5:	75 cd                	jne    1003b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1003e7:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1003ee:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  1003f5:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1003fa:	0f 84 cc 00 00 00    	je     1004cc <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  100400:	41 0f b6 04 24       	movzbl (%r12),%eax
  100405:	3c 6c                	cmp    $0x6c,%al
  100407:	0f 84 54 01 00 00    	je     100561 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  10040d:	0f 8f 42 01 00 00    	jg     100555 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  100413:	3c 68                	cmp    $0x68,%al
  100415:	0f 85 68 01 00 00    	jne    100583 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  10041b:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100420:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100426:	8d 50 bd             	lea    -0x43(%rax),%edx
  100429:	80 fa 35             	cmp    $0x35,%dl
  10042c:	0f 87 aa 05 00 00    	ja     1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100432:	0f b6 d2             	movzbl %dl,%edx
  100435:	3e ff 24 d5 10 0e 10 	notrack jmpq *0x100e10(,%rdx,8)
  10043c:	00 
        if (*format >= '1' && *format <= '9') {
  10043d:	8d 43 cf             	lea    -0x31(%rbx),%eax
  100440:	3c 08                	cmp    $0x8,%al
  100442:	77 35                	ja     100479 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100444:	41 0f b6 04 24       	movzbl (%r12),%eax
  100449:	8d 50 d0             	lea    -0x30(%rax),%edx
  10044c:	80 fa 09             	cmp    $0x9,%dl
  10044f:	77 63                	ja     1004b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  100451:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  100456:	49 83 c4 01          	add    $0x1,%r12
  10045a:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  10045d:	0f be c0             	movsbl %al,%eax
  100460:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100464:	41 0f b6 04 24       	movzbl (%r12),%eax
  100469:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10046c:	80 f9 09             	cmp    $0x9,%cl
  10046f:	76 e5                	jbe    100456 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  100471:	89 55 98             	mov    %edx,-0x68(%rbp)
  100474:	e9 75 ff ff ff       	jmpq   1003ee <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  100479:	80 fb 2a             	cmp    $0x2a,%bl
  10047c:	75 42                	jne    1004c0 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  10047e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100482:	8b 07                	mov    (%rdi),%eax
  100484:	83 f8 2f             	cmp    $0x2f,%eax
  100487:	77 19                	ja     1004a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  100489:	89 c2                	mov    %eax,%edx
  10048b:	48 03 57 10          	add    0x10(%rdi),%rdx
  10048f:	83 c0 08             	add    $0x8,%eax
  100492:	89 07                	mov    %eax,(%rdi)
  100494:	8b 02                	mov    (%rdx),%eax
  100496:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  100499:	49 83 c4 01          	add    $0x1,%r12
  10049d:	e9 4c ff ff ff       	jmpq   1003ee <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  1004a2:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004a6:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1004aa:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004ae:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1004b2:	eb e0                	jmp    100494 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1004b4:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  1004bb:	e9 2e ff ff ff       	jmpq   1003ee <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  1004c0:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  1004c7:	e9 22 ff ff ff       	jmpq   1003ee <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  1004cc:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  1004d1:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1004d7:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1004da:	80 f9 09             	cmp    $0x9,%cl
  1004dd:	76 13                	jbe    1004f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1004df:	3c 2a                	cmp    $0x2a,%al
  1004e1:	74 32                	je     100515 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1004e3:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1004e6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1004ed:	e9 0e ff ff ff       	jmpq   100400 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1004f2:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  1004f7:	48 83 c2 01          	add    $0x1,%rdx
  1004fb:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1004fe:	0f be c0             	movsbl %al,%eax
  100501:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100505:	0f b6 02             	movzbl (%rdx),%eax
  100508:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10050b:	80 f9 09             	cmp    $0x9,%cl
  10050e:	76 e7                	jbe    1004f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  100510:	49 89 d4             	mov    %rdx,%r12
  100513:	eb 1c                	jmp    100531 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  100515:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100519:	8b 01                	mov    (%rcx),%eax
  10051b:	83 f8 2f             	cmp    $0x2f,%eax
  10051e:	77 23                	ja     100543 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  100520:	89 c2                	mov    %eax,%edx
  100522:	48 03 51 10          	add    0x10(%rcx),%rdx
  100526:	83 c0 08             	add    $0x8,%eax
  100529:	89 01                	mov    %eax,(%rcx)
  10052b:	8b 32                	mov    (%rdx),%esi
                ++format;
  10052d:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  100531:	85 f6                	test   %esi,%esi
  100533:	b8 00 00 00 00       	mov    $0x0,%eax
  100538:	0f 49 c6             	cmovns %esi,%eax
  10053b:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  10053e:	e9 bd fe ff ff       	jmpq   100400 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  100543:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100547:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10054b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10054f:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100553:	eb d6                	jmp    10052b <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  100555:	3c 74                	cmp    $0x74,%al
  100557:	74 08                	je     100561 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  100559:	3c 7a                	cmp    $0x7a,%al
  10055b:	0f 85 e2 05 00 00    	jne    100b43 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  100561:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  100566:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10056c:	8d 50 bd             	lea    -0x43(%rax),%edx
  10056f:	80 fa 35             	cmp    $0x35,%dl
  100572:	0f 87 64 04 00 00    	ja     1009dc <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100578:	0f b6 d2             	movzbl %dl,%edx
  10057b:	3e ff 24 d5 c0 0f 10 	notrack jmpq *0x100fc0(,%rdx,8)
  100582:	00 
  100583:	8d 50 bd             	lea    -0x43(%rax),%edx
  100586:	80 fa 35             	cmp    $0x35,%dl
  100589:	0f 87 4a 04 00 00    	ja     1009d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  10058f:	0f b6 d2             	movzbl %dl,%edx
  100592:	3e ff 24 d5 70 11 10 	notrack jmpq *0x101170(,%rdx,8)
  100599:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10059a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10059e:	8b 07                	mov    (%rdi),%eax
  1005a0:	83 f8 2f             	cmp    $0x2f,%eax
  1005a3:	0f 87 c9 01 00 00    	ja     100772 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  1005a9:	89 c2                	mov    %eax,%edx
  1005ab:	48 03 57 10          	add    0x10(%rdi),%rdx
  1005af:	83 c0 08             	add    $0x8,%eax
  1005b2:	89 07                	mov    %eax,(%rdi)
  1005b4:	48 8b 12             	mov    (%rdx),%rdx
  1005b7:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  1005ba:	48 89 d0             	mov    %rdx,%rax
  1005bd:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  1005c1:	49 89 d0             	mov    %rdx,%r8
  1005c4:	49 f7 d8             	neg    %r8
  1005c7:	25 80 00 00 00       	and    $0x80,%eax
  1005cc:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  1005d0:	41 09 c5             	or     %eax,%r13d
  1005d3:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1005d7:	bb ed 0d 10 00       	mov    $0x100ded,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1005dc:	44 89 e8             	mov    %r13d,%eax
  1005df:	83 e0 20             	and    $0x20,%eax
  1005e2:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1005e5:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1005eb:	0f 85 0e 04 00 00    	jne    1009ff <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1005f1:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  1005f5:	44 89 e8             	mov    %r13d,%eax
  1005f8:	83 e0 60             	and    $0x60,%eax
  1005fb:	83 f8 60             	cmp    $0x60,%eax
  1005fe:	0f 84 3e 04 00 00    	je     100a42 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100604:	44 89 e8             	mov    %r13d,%eax
  100607:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  10060a:	48 c7 45 a8 ed 0d 10 	movq   $0x100ded,-0x58(%rbp)
  100611:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100612:	83 f8 21             	cmp    $0x21,%eax
  100615:	0f 84 66 04 00 00    	je     100a81 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  10061b:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  10061e:	89 c8                	mov    %ecx,%eax
  100620:	f7 d0                	not    %eax
  100622:	c1 e8 1f             	shr    $0x1f,%eax
  100625:	89 45 88             	mov    %eax,-0x78(%rbp)
  100628:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10062c:	0f 85 8b 04 00 00    	jne    100abd <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  100632:	84 c0                	test   %al,%al
  100634:	0f 84 83 04 00 00    	je     100abd <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  10063a:	48 63 f1             	movslq %ecx,%rsi
  10063d:	48 89 df             	mov    %rbx,%rdi
  100640:	e8 3e fc ff ff       	callq  100283 <strnlen>
  100645:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  100648:	8b 45 8c             	mov    -0x74(%rbp),%eax
  10064b:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  10064e:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  100655:	83 f8 22             	cmp    $0x22,%eax
  100658:	0f 84 97 04 00 00    	je     100af5 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  10065e:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100662:	e8 fd fb ff ff       	callq  100264 <strlen>
  100667:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  10066a:	03 55 a0             	add    -0x60(%rbp),%edx
  10066d:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100670:	29 d7                	sub    %edx,%edi
  100672:	89 fa                	mov    %edi,%edx
  100674:	29 c2                	sub    %eax,%edx
  100676:	89 55 98             	mov    %edx,-0x68(%rbp)
  100679:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  10067c:	41 f6 c5 04          	test   $0x4,%r13b
  100680:	75 32                	jne    1006b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  100682:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100685:	85 d2                	test   %edx,%edx
  100687:	7e 2b                	jle    1006b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  100689:	49 8b 06             	mov    (%r14),%rax
  10068c:	44 89 fa             	mov    %r15d,%edx
  10068f:	be 20 00 00 00       	mov    $0x20,%esi
  100694:	4c 89 f7             	mov    %r14,%rdi
  100697:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100699:	41 83 ed 01          	sub    $0x1,%r13d
  10069d:	45 85 ed             	test   %r13d,%r13d
  1006a0:	7f e7                	jg     100689 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  1006a2:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1006a5:	85 ff                	test   %edi,%edi
  1006a7:	b8 01 00 00 00       	mov    $0x1,%eax
  1006ac:	0f 4f c7             	cmovg  %edi,%eax
  1006af:	29 c7                	sub    %eax,%edi
  1006b1:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  1006b4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  1006b8:	0f b6 00             	movzbl (%rax),%eax
  1006bb:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  1006bf:	84 c0                	test   %al,%al
  1006c1:	74 1b                	je     1006de <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  1006c3:	0f b6 f0             	movzbl %al,%esi
  1006c6:	49 8b 06             	mov    (%r14),%rax
  1006c9:	44 89 fa             	mov    %r15d,%edx
  1006cc:	4c 89 f7             	mov    %r14,%rdi
  1006cf:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  1006d1:	49 83 c5 01          	add    $0x1,%r13
  1006d5:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1006da:	84 c0                	test   %al,%al
  1006dc:	75 e5                	jne    1006c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1006de:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1006e2:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1006e6:	7e 16                	jle    1006fe <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1006e8:	49 8b 06             	mov    (%r14),%rax
  1006eb:	44 89 fa             	mov    %r15d,%edx
  1006ee:	be 30 00 00 00       	mov    $0x30,%esi
  1006f3:	4c 89 f7             	mov    %r14,%rdi
  1006f6:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  1006f8:	41 83 ed 01          	sub    $0x1,%r13d
  1006fc:	75 ea                	jne    1006e8 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1006fe:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  100702:	7e 22                	jle    100726 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  100704:	8b 45 a0             	mov    -0x60(%rbp),%eax
  100707:	8d 40 ff             	lea    -0x1(%rax),%eax
  10070a:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  10070f:	0f b6 33             	movzbl (%rbx),%esi
  100712:	49 8b 06             	mov    (%r14),%rax
  100715:	44 89 fa             	mov    %r15d,%edx
  100718:	4c 89 f7             	mov    %r14,%rdi
  10071b:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  10071d:	48 83 c3 01          	add    $0x1,%rbx
  100721:	4c 39 eb             	cmp    %r13,%rbx
  100724:	75 e9                	jne    10070f <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  100726:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  100729:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10072d:	7e 15                	jle    100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  10072f:	49 8b 06             	mov    (%r14),%rax
  100732:	44 89 fa             	mov    %r15d,%edx
  100735:	be 20 00 00 00       	mov    $0x20,%esi
  10073a:	4c 89 f7             	mov    %r14,%rdi
  10073d:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  10073f:	83 eb 01             	sub    $0x1,%ebx
  100742:	75 eb                	jne    10072f <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  100744:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  100749:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10074f:	84 c0                	test   %al,%al
  100751:	0f 84 ff 03 00 00    	je     100b56 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  100757:	3c 25                	cmp    $0x25,%al
  100759:	0f 84 3f fc ff ff    	je     10039e <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  10075f:	0f b6 f0             	movzbl %al,%esi
  100762:	49 8b 06             	mov    (%r14),%rax
  100765:	44 89 fa             	mov    %r15d,%edx
  100768:	4c 89 f7             	mov    %r14,%rdi
  10076b:	ff 10                	callq  *(%rax)
            continue;
  10076d:	49 89 dc             	mov    %rbx,%r12
  100770:	eb d2                	jmp    100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100772:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100776:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10077a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10077e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100782:	e9 2d fe ff ff       	jmpq   1005b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  100787:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10078a:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10078e:	8b 01                	mov    (%rcx),%eax
  100790:	83 f8 2f             	cmp    $0x2f,%eax
  100793:	77 13                	ja     1007a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  100795:	89 c2                	mov    %eax,%edx
  100797:	48 03 51 10          	add    0x10(%rcx),%rdx
  10079b:	83 c0 08             	add    $0x8,%eax
  10079e:	89 01                	mov    %eax,(%rcx)
  1007a0:	48 63 12             	movslq (%rdx),%rdx
  1007a3:	e9 12 fe ff ff       	jmpq   1005ba <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  1007a8:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1007ac:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1007b0:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1007b4:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1007b8:	eb e6                	jmp    1007a0 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  1007ba:	49 89 cc             	mov    %rcx,%r12
  1007bd:	b8 01 00 00 00       	mov    $0x1,%eax
  1007c2:	be 0a 00 00 00       	mov    $0xa,%esi
  1007c7:	e9 a8 00 00 00       	jmpq   100874 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1007cc:	49 89 cc             	mov    %rcx,%r12
  1007cf:	b8 00 00 00 00       	mov    $0x0,%eax
  1007d4:	be 0a 00 00 00       	mov    $0xa,%esi
  1007d9:	e9 96 00 00 00       	jmpq   100874 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1007de:	b8 00 00 00 00       	mov    $0x0,%eax
  1007e3:	be 0a 00 00 00       	mov    $0xa,%esi
  1007e8:	e9 87 00 00 00       	jmpq   100874 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1007ed:	b8 00 00 00 00       	mov    $0x0,%eax
  1007f2:	be 0a 00 00 00       	mov    $0xa,%esi
  1007f7:	eb 7b                	jmp    100874 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1007f9:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1007fd:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100801:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100805:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100809:	e9 84 00 00 00       	jmpq   100892 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  10080e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100812:	8b 01                	mov    (%rcx),%eax
  100814:	83 f8 2f             	cmp    $0x2f,%eax
  100817:	77 10                	ja     100829 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  100819:	89 c2                	mov    %eax,%edx
  10081b:	48 03 51 10          	add    0x10(%rcx),%rdx
  10081f:	83 c0 08             	add    $0x8,%eax
  100822:	89 01                	mov    %eax,(%rcx)
  100824:	44 8b 02             	mov    (%rdx),%r8d
  100827:	eb 6c                	jmp    100895 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  100829:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10082d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100831:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100835:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100839:	eb e9                	jmp    100824 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  10083b:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  10083e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  100845:	bf 00 15 10 00       	mov    $0x101500,%edi
  10084a:	e9 c0 01 00 00       	jmpq   100a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  10084f:	49 89 cc             	mov    %rcx,%r12
  100852:	b8 01 00 00 00       	mov    $0x1,%eax
  100857:	eb 16                	jmp    10086f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  100859:	49 89 cc             	mov    %rcx,%r12
  10085c:	b8 00 00 00 00       	mov    $0x0,%eax
  100861:	eb 0c                	jmp    10086f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  100863:	b8 00 00 00 00       	mov    $0x0,%eax
  100868:	eb 05                	jmp    10086f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  10086a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  10086f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100874:	85 c0                	test   %eax,%eax
  100876:	74 96                	je     10080e <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  100878:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10087c:	8b 01                	mov    (%rcx),%eax
  10087e:	83 f8 2f             	cmp    $0x2f,%eax
  100881:	0f 87 72 ff ff ff    	ja     1007f9 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  100887:	89 c2                	mov    %eax,%edx
  100889:	48 03 51 10          	add    0x10(%rcx),%rdx
  10088d:	83 c0 08             	add    $0x8,%eax
  100890:	89 01                	mov    %eax,(%rcx)
  100892:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  100895:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  100899:	85 f6                	test   %esi,%esi
  10089b:	79 9e                	jns    10083b <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  10089d:	41 89 f1             	mov    %esi,%r9d
  1008a0:	f7 de                	neg    %esi
  1008a2:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  1008a9:	bf e0 14 10 00       	mov    $0x1014e0,%edi
  1008ae:	e9 5c 01 00 00       	jmpq   100a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1008b3:	49 89 cc             	mov    %rcx,%r12
  1008b6:	b8 01 00 00 00       	mov    $0x1,%eax
  1008bb:	eb 16                	jmp    1008d3 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1008bd:	49 89 cc             	mov    %rcx,%r12
  1008c0:	b8 00 00 00 00       	mov    $0x0,%eax
  1008c5:	eb 0c                	jmp    1008d3 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  1008c7:	b8 00 00 00 00       	mov    $0x0,%eax
  1008cc:	eb 05                	jmp    1008d3 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1008ce:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  1008d3:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1008d8:	eb 9a                	jmp    100874 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1008da:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1008dd:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008e1:	8b 01                	mov    (%rcx),%eax
  1008e3:	83 f8 2f             	cmp    $0x2f,%eax
  1008e6:	77 21                	ja     100909 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1008e8:	89 c2                	mov    %eax,%edx
  1008ea:	48 03 51 10          	add    0x10(%rcx),%rdx
  1008ee:	83 c0 08             	add    $0x8,%eax
  1008f1:	89 01                	mov    %eax,(%rcx)
  1008f3:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1008f6:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1008fd:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100902:	eb 99                	jmp    10089d <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  100904:	49 89 cc             	mov    %rcx,%r12
  100907:	eb d4                	jmp    1008dd <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  100909:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10090d:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100911:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100915:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100919:	eb d8                	jmp    1008f3 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  10091b:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  10091e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100922:	8b 07                	mov    (%rdi),%eax
  100924:	83 f8 2f             	cmp    $0x2f,%eax
  100927:	77 1e                	ja     100947 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  100929:	89 c2                	mov    %eax,%edx
  10092b:	48 03 57 10          	add    0x10(%rdi),%rdx
  10092f:	83 c0 08             	add    $0x8,%eax
  100932:	89 07                	mov    %eax,(%rdi)
  100934:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  100937:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  10093d:	e9 9a fc ff ff       	jmpq   1005dc <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100942:	49 89 cc             	mov    %rcx,%r12
  100945:	eb d7                	jmp    10091e <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  100947:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10094b:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10094f:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100953:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100957:	eb db                	jmp    100934 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  100959:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  10095c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100960:	8b 01                	mov    (%rcx),%eax
  100962:	83 f8 2f             	cmp    $0x2f,%eax
  100965:	77 18                	ja     10097f <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  100967:	89 c2                	mov    %eax,%edx
  100969:	48 03 51 10          	add    0x10(%rcx),%rdx
  10096d:	83 c0 08             	add    $0x8,%eax
  100970:	89 01                	mov    %eax,(%rcx)
  100972:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100975:	e9 ca fd ff ff       	jmpq   100744 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  10097a:	49 89 cc             	mov    %rcx,%r12
  10097d:	eb dd                	jmp    10095c <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  10097f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100983:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100987:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10098b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10098f:	eb e1                	jmp    100972 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  100991:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  100994:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100998:	8b 07                	mov    (%rdi),%eax
  10099a:	83 f8 2f             	cmp    $0x2f,%eax
  10099d:	77 28                	ja     1009c7 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  10099f:	89 c2                	mov    %eax,%edx
  1009a1:	48 03 57 10          	add    0x10(%rdi),%rdx
  1009a5:	83 c0 08             	add    $0x8,%eax
  1009a8:	89 07                	mov    %eax,(%rdi)
  1009aa:	8b 02                	mov    (%rdx),%eax
  1009ac:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1009af:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1009b3:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1009b7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1009bd:	e9 1a fc ff ff       	jmpq   1005dc <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1009c2:	49 89 cc             	mov    %rcx,%r12
  1009c5:	eb cd                	jmp    100994 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  1009c7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1009cb:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1009cf:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1009d3:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1009d7:	eb d1                	jmp    1009aa <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1009d9:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1009dc:	84 c0                	test   %al,%al
  1009de:	0f 85 3b 01 00 00    	jne    100b1f <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1009e4:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1009e8:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1009ec:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  1009f0:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1009f4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1009fa:	e9 dd fb ff ff       	jmpq   1005dc <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  1009ff:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100a05:	bf 00 15 10 00       	mov    $0x101500,%edi
        if (flags & FLAG_NUMERIC) {
  100a0a:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  100a0f:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100a13:	4c 89 c1             	mov    %r8,%rcx
  100a16:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  100a1a:	48 63 f6             	movslq %esi,%rsi
  100a1d:	48 83 eb 01          	sub    $0x1,%rbx
  100a21:	48 89 c8             	mov    %rcx,%rax
  100a24:	ba 00 00 00 00       	mov    $0x0,%edx
  100a29:	48 f7 f6             	div    %rsi
  100a2c:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100a30:	88 13                	mov    %dl,(%rbx)
        val /= base;
  100a32:	48 89 ca             	mov    %rcx,%rdx
  100a35:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100a38:	48 39 d6             	cmp    %rdx,%rsi
  100a3b:	76 e0                	jbe    100a1d <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  100a3d:	e9 af fb ff ff       	jmpq   1005f1 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  100a42:	48 c7 45 a8 07 0e 10 	movq   $0x100e07,-0x58(%rbp)
  100a49:	00 
            if (flags & FLAG_NEGATIVE) {
  100a4a:	41 f6 c5 80          	test   $0x80,%r13b
  100a4e:	0f 85 c7 fb ff ff    	jne    10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  100a54:	48 c7 45 a8 05 0e 10 	movq   $0x100e05,-0x58(%rbp)
  100a5b:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100a5c:	41 f6 c5 10          	test   $0x10,%r13b
  100a60:	0f 85 b5 fb ff ff    	jne    10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  100a66:	41 f6 c5 08          	test   $0x8,%r13b
  100a6a:	ba ed 0d 10 00       	mov    $0x100ded,%edx
  100a6f:	b8 03 0e 10 00       	mov    $0x100e03,%eax
  100a74:	48 0f 44 c2          	cmove  %rdx,%rax
  100a78:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100a7c:	e9 9a fb ff ff       	jmpq   10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  100a81:	41 8d 41 10          	lea    0x10(%r9),%eax
  100a85:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100a8a:	0f 85 8b fb ff ff    	jne    10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  100a90:	4d 85 c0             	test   %r8,%r8
  100a93:	75 0d                	jne    100aa2 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  100a95:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  100a9c:	0f 84 79 fb ff ff    	je     10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  100aa2:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100aa6:	ba 00 0e 10 00       	mov    $0x100e00,%edx
  100aab:	b8 09 0e 10 00       	mov    $0x100e09,%eax
  100ab0:	48 0f 44 c2          	cmove  %rdx,%rax
  100ab4:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100ab8:	e9 5e fb ff ff       	jmpq   10061b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  100abd:	48 89 df             	mov    %rbx,%rdi
  100ac0:	e8 9f f7 ff ff       	callq  100264 <strlen>
  100ac5:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  100ac8:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100acc:	0f 84 76 fb ff ff    	je     100648 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  100ad2:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  100ad6:	0f 84 6c fb ff ff    	je     100648 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  100adc:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100adf:	89 ca                	mov    %ecx,%edx
  100ae1:	29 c2                	sub    %eax,%edx
  100ae3:	39 c1                	cmp    %eax,%ecx
  100ae5:	b8 00 00 00 00       	mov    $0x0,%eax
  100aea:	0f 4f c2             	cmovg  %edx,%eax
  100aed:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100af0:	e9 69 fb ff ff       	jmpq   10065e <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  100af5:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100af9:	e8 66 f7 ff ff       	callq  100264 <strlen>
  100afe:	8b 75 a0             	mov    -0x60(%rbp),%esi
  100b01:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100b04:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100b07:	89 f9                	mov    %edi,%ecx
  100b09:	29 f1                	sub    %esi,%ecx
  100b0b:	29 c1                	sub    %eax,%ecx
  100b0d:	39 fa                	cmp    %edi,%edx
  100b0f:	b8 00 00 00 00       	mov    $0x0,%eax
  100b14:	0f 4c c1             	cmovl  %ecx,%eax
  100b17:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100b1a:	e9 3f fb ff ff       	jmpq   10065e <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  100b1f:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  100b22:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100b25:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100b29:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100b2d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100b33:	e9 a4 fa ff ff       	jmpq   1005dc <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100b38:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100b3e:	e9 a4 f8 ff ff       	jmpq   1003e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100b43:	8d 50 bd             	lea    -0x43(%rax),%edx
  100b46:	80 fa 35             	cmp    $0x35,%dl
  100b49:	77 d7                	ja     100b22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100b4b:	0f b6 d2             	movzbl %dl,%edx
  100b4e:	3e ff 24 d5 20 13 10 	notrack jmpq *0x101320(,%rdx,8)
  100b55:	00 
        }
    }
}
  100b56:	48 83 c4 58          	add    $0x58,%rsp
  100b5a:	5b                   	pop    %rbx
  100b5b:	41 5c                	pop    %r12
  100b5d:	41 5d                	pop    %r13
  100b5f:	41 5e                	pop    %r14
  100b61:	41 5f                	pop    %r15
  100b63:	5d                   	pop    %rbp
  100b64:	c3                   	retq   
  100b65:	90                   	nop

0000000000100b66 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100b66:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100b6a:	48 c7 07 88 15 10 00 	movq   $0x101588,(%rdi)
  100b71:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100b78:	00 
  100b79:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100b7c:	85 f6                	test   %esi,%esi
  100b7e:	78 18                	js     100b98 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b80:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100b86:	7f 0f                	jg     100b97 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100b88:	48 63 f6             	movslq %esi,%rsi
  100b8b:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100b92:	00 
  100b93:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100b97:	c3                   	retq   
        cell_ += cursorpos;
  100b98:	8b 05 5e 84 fb ff    	mov    -0x47ba2(%rip),%eax        # b8ffc <cursorpos>
  100b9e:	48 98                	cltq   
  100ba0:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100ba7:	00 
  100ba8:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100bac:	c3                   	retq   
  100bad:	90                   	nop

0000000000100bae <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100bae:	f3 0f 1e fa          	endbr64 
  100bb2:	55                   	push   %rbp
  100bb3:	48 89 e5             	mov    %rsp,%rbp
  100bb6:	53                   	push   %rbx
  100bb7:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100bbb:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100bc2:	00 
  100bc3:	72 18                	jb     100bdd <console_printer::scroll()+0x2f>
  100bc5:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100bc8:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100bcc:	75 23                	jne    100bf1 <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100bce:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100bd5:	00 
    }
}
  100bd6:	48 83 c4 08          	add    $0x8,%rsp
  100bda:	5b                   	pop    %rbx
  100bdb:	5d                   	pop    %rbp
  100bdc:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100bdd:	ba 18 15 10 00       	mov    $0x101518,%edx
  100be2:	be 1f 02 00 00       	mov    $0x21f,%esi
  100be7:	bf f9 0d 10 00       	mov    $0x100df9,%edi
  100bec:	e8 a6 01 00 00       	callq  100d97 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100bf1:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100bf6:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100bfb:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100c00:	e8 f2 f5 ff ff       	callq  1001f7 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100c05:	ba a0 00 00 00       	mov    $0xa0,%edx
  100c0a:	be 00 00 00 00       	mov    $0x0,%esi
  100c0f:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100c14:	e8 2b f6 ff ff       	callq  100244 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100c19:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100c20:	00 
  100c21:	eb b3                	jmp    100bd6 <console_printer::scroll()+0x28>
  100c23:	90                   	nop

0000000000100c24 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100c24:	f3 0f 1e fa          	endbr64 
  100c28:	55                   	push   %rbp
  100c29:	48 89 e5             	mov    %rsp,%rbp
  100c2c:	41 55                	push   %r13
  100c2e:	41 54                	push   %r12
  100c30:	53                   	push   %rbx
  100c31:	48 83 ec 08          	sub    $0x8,%rsp
  100c35:	48 89 fb             	mov    %rdi,%rbx
  100c38:	41 89 f5             	mov    %esi,%r13d
  100c3b:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c3e:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c42:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c48:	72 14                	jb     100c5e <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100c4a:	48 89 df             	mov    %rbx,%rdi
  100c4d:	e8 5c ff ff ff       	callq  100bae <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100c52:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100c56:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100c5c:	73 ec                	jae    100c4a <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100c5e:	41 80 fd 0a          	cmp    $0xa,%r13b
  100c62:	74 1e                	je     100c82 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100c64:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100c68:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100c6c:	45 0f b6 ed          	movzbl %r13b,%r13d
  100c70:	45 09 ec             	or     %r13d,%r12d
  100c73:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100c77:	48 83 c4 08          	add    $0x8,%rsp
  100c7b:	5b                   	pop    %rbx
  100c7c:	41 5c                	pop    %r12
  100c7e:	41 5d                	pop    %r13
  100c80:	5d                   	pop    %rbp
  100c81:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100c82:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c88:	48 89 c1             	mov    %rax,%rcx
  100c8b:	48 89 c6             	mov    %rax,%rsi
  100c8e:	48 d1 fe             	sar    %rsi
  100c91:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100c98:	66 66 66 
  100c9b:	48 89 f0             	mov    %rsi,%rax
  100c9e:	48 f7 ea             	imul   %rdx
  100ca1:	48 c1 fa 05          	sar    $0x5,%rdx
  100ca5:	48 89 c8             	mov    %rcx,%rax
  100ca8:	48 c1 f8 3f          	sar    $0x3f,%rax
  100cac:	48 29 c2             	sub    %rax,%rdx
  100caf:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100cb3:	48 c1 e0 04          	shl    $0x4,%rax
  100cb7:	89 f2                	mov    %esi,%edx
  100cb9:	29 c2                	sub    %eax,%edx
  100cbb:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100cbd:	41 83 cc 20          	or     $0x20,%r12d
  100cc1:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100cc5:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100cc9:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100ccd:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100cd1:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100cd4:	83 f8 50             	cmp    $0x50,%eax
  100cd7:	75 e8                	jne    100cc1 <console_printer::putc(unsigned char, int)+0x9d>
  100cd9:	eb 9c                	jmp    100c77 <console_printer::putc(unsigned char, int)+0x53>
  100cdb:	90                   	nop

0000000000100cdc <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100cdc:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100ce0:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100ce4:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100cea:	48 d1 f8             	sar    %rax
  100ced:	89 05 09 83 fb ff    	mov    %eax,-0x47cf7(%rip)        # b8ffc <cursorpos>
}
  100cf3:	c3                   	retq   

0000000000100cf4 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100cf4:	f3 0f 1e fa          	endbr64 
  100cf8:	55                   	push   %rbp
  100cf9:	48 89 e5             	mov    %rsp,%rbp
  100cfc:	41 56                	push   %r14
  100cfe:	41 55                	push   %r13
  100d00:	41 54                	push   %r12
  100d02:	53                   	push   %rbx
  100d03:	48 83 ec 20          	sub    $0x20,%rsp
  100d07:	89 fb                	mov    %edi,%ebx
  100d09:	41 89 f4             	mov    %esi,%r12d
  100d0c:	49 89 d5             	mov    %rdx,%r13
  100d0f:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100d12:	89 fa                	mov    %edi,%edx
  100d14:	c1 ea 1f             	shr    $0x1f,%edx
  100d17:	89 fe                	mov    %edi,%esi
  100d19:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d1d:	e8 44 fe ff ff       	callq  100b66 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100d22:	4c 89 f1             	mov    %r14,%rcx
  100d25:	4c 89 ea             	mov    %r13,%rdx
  100d28:	44 89 e6             	mov    %r12d,%esi
  100d2b:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d2f:	e8 38 f6 ff ff       	callq  10036c <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100d34:	85 db                	test   %ebx,%ebx
  100d36:	78 1a                	js     100d52 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100d38:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100d3c:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100d42:	48 d1 f8             	sar    %rax
}
  100d45:	48 83 c4 20          	add    $0x20,%rsp
  100d49:	5b                   	pop    %rbx
  100d4a:	41 5c                	pop    %r12
  100d4c:	41 5d                	pop    %r13
  100d4e:	41 5e                	pop    %r14
  100d50:	5d                   	pop    %rbp
  100d51:	c3                   	retq   
        cp.move_cursor();
  100d52:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100d56:	e8 81 ff ff ff       	callq  100cdc <console_printer::move_cursor()>
  100d5b:	eb db                	jmp    100d38 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100d5d <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100d5d:	f3 0f 1e fa          	endbr64 
  100d61:	55                   	push   %rbp
  100d62:	48 89 e5             	mov    %rsp,%rbp
  100d65:	48 83 ec 50          	sub    $0x50,%rsp
  100d69:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100d6d:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100d71:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100d75:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100d7c:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100d80:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100d84:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100d88:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100d8c:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100d90:	e8 5f ff ff ff       	callq  100cf4 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100d95:	c9                   	leaveq 
  100d96:	c3                   	retq   

0000000000100d97 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100d97:	f3 0f 1e fa          	endbr64 
  100d9b:	55                   	push   %rbp
  100d9c:	48 89 e5             	mov    %rsp,%rbp
  100d9f:	48 89 f9             	mov    %rdi,%rcx
  100da2:	41 89 f0             	mov    %esi,%r8d
  100da5:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100da8:	ba 90 15 10 00       	mov    $0x101590,%edx
  100dad:	be 00 c0 00 00       	mov    $0xc000,%esi
  100db2:	bf 30 07 00 00       	mov    $0x730,%edi
  100db7:	b0 00                	mov    $0x0,%al
  100db9:	e8 9f ff ff ff       	callq  100d5d <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100dbe:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100dc3:	bf 00 00 00 00       	mov    $0x0,%edi
  100dc8:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100dca:	eb fe                	jmp    100dca <assert_fail(char const*, int, char const*)+0x33>
