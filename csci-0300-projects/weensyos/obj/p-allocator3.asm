
obj/p-allocator3.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000180000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  180000:	f3 0f 1e fa          	endbr64 
  180004:	55                   	push   %rbp
  180005:	48 89 e5             	mov    %rsp,%rbp
  180008:	41 54                	push   %r12
  18000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  18000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  180010:	0f 05                	syscall 
    return rax;
  180012:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  180015:	41 89 c4             	mov    %eax,%r12d
    pid_t p = sys_getpid();
    srand(p);
  180018:	89 c7                	mov    %eax,%edi
  18001a:	e8 af 01 00 00       	callq  1801ce <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  18001f:	b8 1b 30 18 00       	mov    $0x18301b,%eax

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  180024:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  18002a:	48 89 05 d7 1f 00 00 	mov    %rax,0x1fd7(%rip)        # 182008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  180031:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  180034:	48 83 e8 01          	sub    $0x1,%rax
  180038:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  18003e:	48 89 05 bb 1f 00 00 	mov    %rax,0x1fbb(%rip)        # 182000 <stack_bottom>
  180045:	eb 07                	jmp    18004e <process_main()+0x4e>
    register uintptr_t rax asm("rax") = syscallno;
  180047:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  18004c:	0f 05                	syscall 

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  18004e:	be 63 00 00 00       	mov    $0x63,%esi
  180053:	bf 00 00 00 00       	mov    $0x0,%edi
  180058:	e8 90 01 00 00       	callq  1801ed <rand(int, int)>
  18005d:	44 39 e0             	cmp    %r12d,%eax
  180060:	7d e5                	jge    180047 <process_main()+0x47>
            if (heap_top == stack_bottom
  180062:	48 8b 3d 9f 1f 00 00 	mov    0x1f9f(%rip),%rdi        # 182008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  180069:	48 3b 3d 90 1f 00 00 	cmp    0x1f90(%rip),%rdi        # 182000 <stack_bottom>
  180070:	74 28                	je     18009a <process_main()+0x9a>
    register uintptr_t rax asm("rax") = syscallno;
  180072:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  180077:	0f 05                	syscall 
  180079:	85 c0                	test   %eax,%eax
  18007b:	78 1d                	js     18009a <process_main()+0x9a>
                break;
            }
            *heap_top = p;               // check we can write to new page
  18007d:	48 8b 05 84 1f 00 00 	mov    0x1f84(%rip),%rax        # 182008 <heap_top>
  180084:	88 18                	mov    %bl,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  180086:	66 89 1d 11 8f f3 ff 	mov    %bx,-0xc70ef(%rip)        # b8f9e <console+0xf9e>
            heap_top += PAGESIZE;
  18008d:	48 81 05 70 1f 00 00 	addq   $0x1000,0x1f70(%rip)        # 182008 <heap_top>
  180094:	00 10 00 00 
  180098:	eb ad                	jmp    180047 <process_main()+0x47>
    register uintptr_t rax asm("rax") = syscallno;
  18009a:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  18009f:	0f 05                	syscall 
    return rax;
  1800a1:	eb f7                	jmp    18009a <process_main()+0x9a>

00000000001800a3 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1800a3:	f3 0f 1e fa          	endbr64 
  1800a7:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1800aa:	48 39 fe             	cmp    %rdi,%rsi
  1800ad:	73 09                	jae    1800b8 <memmove+0x15>
  1800af:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1800b3:	48 39 cf             	cmp    %rcx,%rdi
  1800b6:	72 1d                	jb     1800d5 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1800b8:	b9 00 00 00 00       	mov    $0x0,%ecx
  1800bd:	48 85 d2             	test   %rdx,%rdx
  1800c0:	74 12                	je     1800d4 <memmove+0x31>
            *d++ = *s++;
  1800c2:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  1800c6:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1800ca:	48 83 c1 01          	add    $0x1,%rcx
  1800ce:	48 39 d1             	cmp    %rdx,%rcx
  1800d1:	75 ef                	jne    1800c2 <memmove+0x1f>
        }
    }
    return dst;
}
  1800d3:	c3                   	retq   
  1800d4:	c3                   	retq   
        while (n-- > 0) {
  1800d5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1800d9:	48 85 d2             	test   %rdx,%rdx
  1800dc:	74 f5                	je     1800d3 <memmove+0x30>
            *--d = *--s;
  1800de:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1800e2:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1800e5:	48 83 e9 01          	sub    $0x1,%rcx
  1800e9:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1800ed:	75 ef                	jne    1800de <memmove+0x3b>
  1800ef:	c3                   	retq   

00000000001800f0 <memset>:

void* memset(void* v, int c, size_t n) {
  1800f0:	f3 0f 1e fa          	endbr64 
  1800f4:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1800f7:	48 85 d2             	test   %rdx,%rdx
  1800fa:	74 13                	je     18010f <memset+0x1f>
  1800fc:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  180100:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  180103:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  180106:	48 83 c2 01          	add    $0x1,%rdx
  18010a:	48 39 d1             	cmp    %rdx,%rcx
  18010d:	75 f4                	jne    180103 <memset+0x13>
    }
    return v;
}
  18010f:	c3                   	retq   

0000000000180110 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  180110:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  180114:	80 3f 00             	cmpb   $0x0,(%rdi)
  180117:	74 10                	je     180129 <strlen+0x19>
  180119:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  18011e:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  180122:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  180126:	75 f6                	jne    18011e <strlen+0xe>
  180128:	c3                   	retq   
  180129:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  18012e:	c3                   	retq   

000000000018012f <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  18012f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  180133:	48 85 f6             	test   %rsi,%rsi
  180136:	74 15                	je     18014d <strnlen+0x1e>
  180138:	b8 00 00 00 00       	mov    $0x0,%eax
  18013d:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  180141:	74 0d                	je     180150 <strnlen+0x21>
        ++n;
  180143:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  180147:	48 39 c6             	cmp    %rax,%rsi
  18014a:	75 f1                	jne    18013d <strnlen+0xe>
  18014c:	c3                   	retq   
  18014d:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  180150:	c3                   	retq   

0000000000180151 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  180151:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  180155:	0f b6 07             	movzbl (%rdi),%eax
  180158:	84 c0                	test   %al,%al
  18015a:	74 10                	je     18016c <strchr+0x1b>
  18015c:	40 38 f0             	cmp    %sil,%al
  18015f:	74 18                	je     180179 <strchr+0x28>
        ++s;
  180161:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  180165:	0f b6 07             	movzbl (%rdi),%eax
  180168:	84 c0                	test   %al,%al
  18016a:	75 f0                	jne    18015c <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  18016c:	40 84 f6             	test   %sil,%sil
  18016f:	b8 00 00 00 00       	mov    $0x0,%eax
  180174:	48 0f 44 c7          	cmove  %rdi,%rax
  180178:	c3                   	retq   
  180179:	48 89 f8             	mov    %rdi,%rax
    }
}
  18017c:	c3                   	retq   

000000000018017d <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  18017d:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  180181:	83 3d 90 1e 00 00 00 	cmpl   $0x0,0x1e90(%rip)        # 182018 <rand_seed_set>
  180188:	74 27                	je     1801b1 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  18018a:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  180191:	f4 51 58 
  180194:	48 0f af 05 74 1e 00 	imul   0x1e74(%rip),%rax        # 182010 <rand_seed>
  18019b:	00 
  18019c:	48 83 c0 01          	add    $0x1,%rax
  1801a0:	48 89 05 69 1e 00 00 	mov    %rax,0x1e69(%rip)        # 182010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1801a7:	48 c1 e8 20          	shr    $0x20,%rax
  1801ab:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1801b0:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1801b1:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1801b8:	87 d4 30 
  1801bb:	48 89 05 4e 1e 00 00 	mov    %rax,0x1e4e(%rip)        # 182010 <rand_seed>
    rand_seed_set = 1;
  1801c2:	c7 05 4c 1e 00 00 01 	movl   $0x1,0x1e4c(%rip)        # 182018 <rand_seed_set>
  1801c9:	00 00 00 
}
  1801cc:	eb bc                	jmp    18018a <rand()+0xd>

00000000001801ce <srand(unsigned int)>:
void srand(unsigned seed) {
  1801ce:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1801d2:	89 f8                	mov    %edi,%eax
  1801d4:	48 c1 e7 20          	shl    $0x20,%rdi
  1801d8:	48 09 c7             	or     %rax,%rdi
  1801db:	48 89 3d 2e 1e 00 00 	mov    %rdi,0x1e2e(%rip)        # 182010 <rand_seed>
    rand_seed_set = 1;
  1801e2:	c7 05 2c 1e 00 00 01 	movl   $0x1,0x1e2c(%rip)        # 182018 <rand_seed_set>
  1801e9:	00 00 00 
}
  1801ec:	c3                   	retq   

00000000001801ed <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1801ed:	f3 0f 1e fa          	endbr64 
  1801f1:	55                   	push   %rbp
  1801f2:	48 89 e5             	mov    %rsp,%rbp
  1801f5:	41 54                	push   %r12
  1801f7:	53                   	push   %rbx
    assert(min <= max);
  1801f8:	39 f7                	cmp    %esi,%edi
  1801fa:	7f 27                	jg     180223 <rand(int, int)+0x36>
  1801fc:	41 89 fc             	mov    %edi,%r12d
  1801ff:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  180201:	e8 77 ff ff ff       	callq  18017d <rand()>
  180206:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  180208:	44 29 e3             	sub    %r12d,%ebx
  18020b:	8d 43 01             	lea    0x1(%rbx),%eax
  18020e:	48 98                	cltq   
    unsigned long r = rand();
  180210:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  180213:	48 0f af c3          	imul   %rbx,%rax
  180217:	48 c1 e8 1f          	shr    $0x1f,%rax
  18021b:	44 01 e0             	add    %r12d,%eax
}
  18021e:	5b                   	pop    %rbx
  18021f:	41 5c                	pop    %r12
  180221:	5d                   	pop    %rbp
  180222:	c3                   	retq   
    assert(min <= max);
  180223:	ba a0 0c 18 00       	mov    $0x180ca0,%edx
  180228:	be f2 00 00 00       	mov    $0xf2,%esi
  18022d:	bf ab 0c 18 00       	mov    $0x180cab,%edi
  180232:	e8 2c 0a 00 00       	callq  180c63 <assert_fail(char const*, int, char const*)>
  180237:	90                   	nop

0000000000180238 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  180238:	f3 0f 1e fa          	endbr64 
  18023c:	55                   	push   %rbp
  18023d:	48 89 e5             	mov    %rsp,%rbp
  180240:	41 57                	push   %r15
  180242:	41 56                	push   %r14
  180244:	41 55                	push   %r13
  180246:	41 54                	push   %r12
  180248:	53                   	push   %rbx
  180249:	48 83 ec 58          	sub    $0x58,%rsp
  18024d:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  180251:	0f b6 02             	movzbl (%rdx),%eax
  180254:	84 c0                	test   %al,%al
  180256:	0f 84 c6 07 00 00    	je     180a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  18025c:	49 89 fe             	mov    %rdi,%r14
  18025f:	41 89 f7             	mov    %esi,%r15d
  180262:	48 89 d3             	mov    %rdx,%rbx
  180265:	e9 b9 03 00 00       	jmpq   180623 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  18026a:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  18026e:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  180272:	84 db                	test   %bl,%bl
  180274:	0f 84 8a 07 00 00    	je     180a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  18027a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  180280:	0f be f3             	movsbl %bl,%esi
  180283:	bf 90 13 18 00       	mov    $0x181390,%edi
  180288:	e8 c4 fe ff ff       	callq  180151 <strchr>
  18028d:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  180290:	48 85 c0             	test   %rax,%rax
  180293:	74 74                	je     180309 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  180295:	48 81 e9 90 13 18 00 	sub    $0x181390,%rcx
  18029c:	b8 01 00 00 00       	mov    $0x1,%eax
  1802a1:	d3 e0                	shl    %cl,%eax
  1802a3:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1802a6:	49 83 c4 01          	add    $0x1,%r12
  1802aa:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1802af:	84 db                	test   %bl,%bl
  1802b1:	75 cd                	jne    180280 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1802b3:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1802ba:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  1802c1:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1802c6:	0f 84 cc 00 00 00    	je     180398 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1802cc:	41 0f b6 04 24       	movzbl (%r12),%eax
  1802d1:	3c 6c                	cmp    $0x6c,%al
  1802d3:	0f 84 54 01 00 00    	je     18042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1802d9:	0f 8f 42 01 00 00    	jg     180421 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  1802df:	3c 68                	cmp    $0x68,%al
  1802e1:	0f 85 68 01 00 00    	jne    18044f <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1802e7:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1802ec:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1802f2:	8d 50 bd             	lea    -0x43(%rax),%edx
  1802f5:	80 fa 35             	cmp    $0x35,%dl
  1802f8:	0f 87 aa 05 00 00    	ja     1808a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1802fe:	0f b6 d2             	movzbl %dl,%edx
  180301:	3e ff 24 d5 d0 0c 18 	notrack jmpq *0x180cd0(,%rdx,8)
  180308:	00 
        if (*format >= '1' && *format <= '9') {
  180309:	8d 43 cf             	lea    -0x31(%rbx),%eax
  18030c:	3c 08                	cmp    $0x8,%al
  18030e:	77 35                	ja     180345 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  180310:	41 0f b6 04 24       	movzbl (%r12),%eax
  180315:	8d 50 d0             	lea    -0x30(%rax),%edx
  180318:	80 fa 09             	cmp    $0x9,%dl
  18031b:	77 63                	ja     180380 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  18031d:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  180322:	49 83 c4 01          	add    $0x1,%r12
  180326:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  180329:	0f be c0             	movsbl %al,%eax
  18032c:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  180330:	41 0f b6 04 24       	movzbl (%r12),%eax
  180335:	8d 48 d0             	lea    -0x30(%rax),%ecx
  180338:	80 f9 09             	cmp    $0x9,%cl
  18033b:	76 e5                	jbe    180322 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  18033d:	89 55 98             	mov    %edx,-0x68(%rbp)
  180340:	e9 75 ff ff ff       	jmpq   1802ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  180345:	80 fb 2a             	cmp    $0x2a,%bl
  180348:	75 42                	jne    18038c <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  18034a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  18034e:	8b 07                	mov    (%rdi),%eax
  180350:	83 f8 2f             	cmp    $0x2f,%eax
  180353:	77 19                	ja     18036e <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  180355:	89 c2                	mov    %eax,%edx
  180357:	48 03 57 10          	add    0x10(%rdi),%rdx
  18035b:	83 c0 08             	add    $0x8,%eax
  18035e:	89 07                	mov    %eax,(%rdi)
  180360:	8b 02                	mov    (%rdx),%eax
  180362:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  180365:	49 83 c4 01          	add    $0x1,%r12
  180369:	e9 4c ff ff ff       	jmpq   1802ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  18036e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  180372:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  180376:	48 8d 42 08          	lea    0x8(%rdx),%rax
  18037a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  18037e:	eb e0                	jmp    180360 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  180380:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  180387:	e9 2e ff ff ff       	jmpq   1802ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  18038c:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  180393:	e9 22 ff ff ff       	jmpq   1802ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  180398:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  18039d:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1803a3:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1803a6:	80 f9 09             	cmp    $0x9,%cl
  1803a9:	76 13                	jbe    1803be <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1803ab:	3c 2a                	cmp    $0x2a,%al
  1803ad:	74 32                	je     1803e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1803af:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1803b2:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1803b9:	e9 0e ff ff ff       	jmpq   1802cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1803be:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  1803c3:	48 83 c2 01          	add    $0x1,%rdx
  1803c7:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1803ca:	0f be c0             	movsbl %al,%eax
  1803cd:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1803d1:	0f b6 02             	movzbl (%rdx),%eax
  1803d4:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1803d7:	80 f9 09             	cmp    $0x9,%cl
  1803da:	76 e7                	jbe    1803c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  1803dc:	49 89 d4             	mov    %rdx,%r12
  1803df:	eb 1c                	jmp    1803fd <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  1803e1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1803e5:	8b 01                	mov    (%rcx),%eax
  1803e7:	83 f8 2f             	cmp    $0x2f,%eax
  1803ea:	77 23                	ja     18040f <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  1803ec:	89 c2                	mov    %eax,%edx
  1803ee:	48 03 51 10          	add    0x10(%rcx),%rdx
  1803f2:	83 c0 08             	add    $0x8,%eax
  1803f5:	89 01                	mov    %eax,(%rcx)
  1803f7:	8b 32                	mov    (%rdx),%esi
                ++format;
  1803f9:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  1803fd:	85 f6                	test   %esi,%esi
  1803ff:	b8 00 00 00 00       	mov    $0x0,%eax
  180404:	0f 49 c6             	cmovns %esi,%eax
  180407:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  18040a:	e9 bd fe ff ff       	jmpq   1802cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  18040f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  180413:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  180417:	48 8d 42 08          	lea    0x8(%rdx),%rax
  18041b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  18041f:	eb d6                	jmp    1803f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  180421:	3c 74                	cmp    $0x74,%al
  180423:	74 08                	je     18042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  180425:	3c 7a                	cmp    $0x7a,%al
  180427:	0f 85 e2 05 00 00    	jne    180a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  18042d:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  180432:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  180438:	8d 50 bd             	lea    -0x43(%rax),%edx
  18043b:	80 fa 35             	cmp    $0x35,%dl
  18043e:	0f 87 64 04 00 00    	ja     1808a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  180444:	0f b6 d2             	movzbl %dl,%edx
  180447:	3e ff 24 d5 80 0e 18 	notrack jmpq *0x180e80(,%rdx,8)
  18044e:	00 
  18044f:	8d 50 bd             	lea    -0x43(%rax),%edx
  180452:	80 fa 35             	cmp    $0x35,%dl
  180455:	0f 87 4a 04 00 00    	ja     1808a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  18045b:	0f b6 d2             	movzbl %dl,%edx
  18045e:	3e ff 24 d5 30 10 18 	notrack jmpq *0x181030(,%rdx,8)
  180465:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  180466:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  18046a:	8b 07                	mov    (%rdi),%eax
  18046c:	83 f8 2f             	cmp    $0x2f,%eax
  18046f:	0f 87 c9 01 00 00    	ja     18063e <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  180475:	89 c2                	mov    %eax,%edx
  180477:	48 03 57 10          	add    0x10(%rdi),%rdx
  18047b:	83 c0 08             	add    $0x8,%eax
  18047e:	89 07                	mov    %eax,(%rdi)
  180480:	48 8b 12             	mov    (%rdx),%rdx
  180483:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  180486:	48 89 d0             	mov    %rdx,%rax
  180489:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  18048d:	49 89 d0             	mov    %rdx,%r8
  180490:	49 f7 d8             	neg    %r8
  180493:	25 80 00 00 00       	and    $0x80,%eax
  180498:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  18049c:	41 09 c5             	or     %eax,%r13d
  18049f:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1804a3:	bb b6 0c 18 00       	mov    $0x180cb6,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1804a8:	44 89 e8             	mov    %r13d,%eax
  1804ab:	83 e0 20             	and    $0x20,%eax
  1804ae:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1804b1:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1804b7:	0f 85 0e 04 00 00    	jne    1808cb <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1804bd:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  1804c1:	44 89 e8             	mov    %r13d,%eax
  1804c4:	83 e0 60             	and    $0x60,%eax
  1804c7:	83 f8 60             	cmp    $0x60,%eax
  1804ca:	0f 84 3e 04 00 00    	je     18090e <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1804d0:	44 89 e8             	mov    %r13d,%eax
  1804d3:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1804d6:	48 c7 45 a8 b6 0c 18 	movq   $0x180cb6,-0x58(%rbp)
  1804dd:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1804de:	83 f8 21             	cmp    $0x21,%eax
  1804e1:	0f 84 66 04 00 00    	je     18094d <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1804e7:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1804ea:	89 c8                	mov    %ecx,%eax
  1804ec:	f7 d0                	not    %eax
  1804ee:	c1 e8 1f             	shr    $0x1f,%eax
  1804f1:	89 45 88             	mov    %eax,-0x78(%rbp)
  1804f4:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1804f8:	0f 85 8b 04 00 00    	jne    180989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  1804fe:	84 c0                	test   %al,%al
  180500:	0f 84 83 04 00 00    	je     180989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  180506:	48 63 f1             	movslq %ecx,%rsi
  180509:	48 89 df             	mov    %rbx,%rdi
  18050c:	e8 1e fc ff ff       	callq  18012f <strnlen>
  180511:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  180514:	8b 45 8c             	mov    -0x74(%rbp),%eax
  180517:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  18051a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  180521:	83 f8 22             	cmp    $0x22,%eax
  180524:	0f 84 97 04 00 00    	je     1809c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  18052a:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  18052e:	e8 dd fb ff ff       	callq  180110 <strlen>
  180533:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  180536:	03 55 a0             	add    -0x60(%rbp),%edx
  180539:	8b 7d 98             	mov    -0x68(%rbp),%edi
  18053c:	29 d7                	sub    %edx,%edi
  18053e:	89 fa                	mov    %edi,%edx
  180540:	29 c2                	sub    %eax,%edx
  180542:	89 55 98             	mov    %edx,-0x68(%rbp)
  180545:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  180548:	41 f6 c5 04          	test   $0x4,%r13b
  18054c:	75 32                	jne    180580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  18054e:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  180551:	85 d2                	test   %edx,%edx
  180553:	7e 2b                	jle    180580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  180555:	49 8b 06             	mov    (%r14),%rax
  180558:	44 89 fa             	mov    %r15d,%edx
  18055b:	be 20 00 00 00       	mov    $0x20,%esi
  180560:	4c 89 f7             	mov    %r14,%rdi
  180563:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  180565:	41 83 ed 01          	sub    $0x1,%r13d
  180569:	45 85 ed             	test   %r13d,%r13d
  18056c:	7f e7                	jg     180555 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  18056e:	8b 7d 98             	mov    -0x68(%rbp),%edi
  180571:	85 ff                	test   %edi,%edi
  180573:	b8 01 00 00 00       	mov    $0x1,%eax
  180578:	0f 4f c7             	cmovg  %edi,%eax
  18057b:	29 c7                	sub    %eax,%edi
  18057d:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  180580:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  180584:	0f b6 00             	movzbl (%rax),%eax
  180587:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  18058b:	84 c0                	test   %al,%al
  18058d:	74 1b                	je     1805aa <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  18058f:	0f b6 f0             	movzbl %al,%esi
  180592:	49 8b 06             	mov    (%r14),%rax
  180595:	44 89 fa             	mov    %r15d,%edx
  180598:	4c 89 f7             	mov    %r14,%rdi
  18059b:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  18059d:	49 83 c5 01          	add    $0x1,%r13
  1805a1:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1805a6:	84 c0                	test   %al,%al
  1805a8:	75 e5                	jne    18058f <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1805aa:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1805ae:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1805b2:	7e 16                	jle    1805ca <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1805b4:	49 8b 06             	mov    (%r14),%rax
  1805b7:	44 89 fa             	mov    %r15d,%edx
  1805ba:	be 30 00 00 00       	mov    $0x30,%esi
  1805bf:	4c 89 f7             	mov    %r14,%rdi
  1805c2:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  1805c4:	41 83 ed 01          	sub    $0x1,%r13d
  1805c8:	75 ea                	jne    1805b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1805ca:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  1805ce:	7e 22                	jle    1805f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  1805d0:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1805d3:	8d 40 ff             	lea    -0x1(%rax),%eax
  1805d6:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  1805db:	0f b6 33             	movzbl (%rbx),%esi
  1805de:	49 8b 06             	mov    (%r14),%rax
  1805e1:	44 89 fa             	mov    %r15d,%edx
  1805e4:	4c 89 f7             	mov    %r14,%rdi
  1805e7:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1805e9:	48 83 c3 01          	add    $0x1,%rbx
  1805ed:	4c 39 eb             	cmp    %r13,%rbx
  1805f0:	75 e9                	jne    1805db <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  1805f2:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  1805f5:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1805f9:	7e 15                	jle    180610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  1805fb:	49 8b 06             	mov    (%r14),%rax
  1805fe:	44 89 fa             	mov    %r15d,%edx
  180601:	be 20 00 00 00       	mov    $0x20,%esi
  180606:	4c 89 f7             	mov    %r14,%rdi
  180609:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  18060b:	83 eb 01             	sub    $0x1,%ebx
  18060e:	75 eb                	jne    1805fb <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  180610:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  180615:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  18061b:	84 c0                	test   %al,%al
  18061d:	0f 84 ff 03 00 00    	je     180a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  180623:	3c 25                	cmp    $0x25,%al
  180625:	0f 84 3f fc ff ff    	je     18026a <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  18062b:	0f b6 f0             	movzbl %al,%esi
  18062e:	49 8b 06             	mov    (%r14),%rax
  180631:	44 89 fa             	mov    %r15d,%edx
  180634:	4c 89 f7             	mov    %r14,%rdi
  180637:	ff 10                	callq  *(%rax)
            continue;
  180639:	49 89 dc             	mov    %rbx,%r12
  18063c:	eb d2                	jmp    180610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  18063e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  180642:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  180646:	48 8d 42 08          	lea    0x8(%rdx),%rax
  18064a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  18064e:	e9 2d fe ff ff       	jmpq   180480 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  180653:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  180656:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  18065a:	8b 01                	mov    (%rcx),%eax
  18065c:	83 f8 2f             	cmp    $0x2f,%eax
  18065f:	77 13                	ja     180674 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  180661:	89 c2                	mov    %eax,%edx
  180663:	48 03 51 10          	add    0x10(%rcx),%rdx
  180667:	83 c0 08             	add    $0x8,%eax
  18066a:	89 01                	mov    %eax,(%rcx)
  18066c:	48 63 12             	movslq (%rdx),%rdx
  18066f:	e9 12 fe ff ff       	jmpq   180486 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  180674:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  180678:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  18067c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  180680:	48 89 41 08          	mov    %rax,0x8(%rcx)
  180684:	eb e6                	jmp    18066c <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  180686:	49 89 cc             	mov    %rcx,%r12
  180689:	b8 01 00 00 00       	mov    $0x1,%eax
  18068e:	be 0a 00 00 00       	mov    $0xa,%esi
  180693:	e9 a8 00 00 00       	jmpq   180740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  180698:	49 89 cc             	mov    %rcx,%r12
  18069b:	b8 00 00 00 00       	mov    $0x0,%eax
  1806a0:	be 0a 00 00 00       	mov    $0xa,%esi
  1806a5:	e9 96 00 00 00       	jmpq   180740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1806aa:	b8 00 00 00 00       	mov    $0x0,%eax
  1806af:	be 0a 00 00 00       	mov    $0xa,%esi
  1806b4:	e9 87 00 00 00       	jmpq   180740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1806b9:	b8 00 00 00 00       	mov    $0x0,%eax
  1806be:	be 0a 00 00 00       	mov    $0xa,%esi
  1806c3:	eb 7b                	jmp    180740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1806c5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1806c9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1806cd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1806d1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1806d5:	e9 84 00 00 00       	jmpq   18075e <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  1806da:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1806de:	8b 01                	mov    (%rcx),%eax
  1806e0:	83 f8 2f             	cmp    $0x2f,%eax
  1806e3:	77 10                	ja     1806f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  1806e5:	89 c2                	mov    %eax,%edx
  1806e7:	48 03 51 10          	add    0x10(%rcx),%rdx
  1806eb:	83 c0 08             	add    $0x8,%eax
  1806ee:	89 01                	mov    %eax,(%rcx)
  1806f0:	44 8b 02             	mov    (%rdx),%r8d
  1806f3:	eb 6c                	jmp    180761 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  1806f5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1806f9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1806fd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  180701:	48 89 41 08          	mov    %rax,0x8(%rcx)
  180705:	eb e9                	jmp    1806f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  180707:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  18070a:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  180711:	bf c0 13 18 00       	mov    $0x1813c0,%edi
  180716:	e9 c0 01 00 00       	jmpq   1808db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  18071b:	49 89 cc             	mov    %rcx,%r12
  18071e:	b8 01 00 00 00       	mov    $0x1,%eax
  180723:	eb 16                	jmp    18073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  180725:	49 89 cc             	mov    %rcx,%r12
  180728:	b8 00 00 00 00       	mov    $0x0,%eax
  18072d:	eb 0c                	jmp    18073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  18072f:	b8 00 00 00 00       	mov    $0x0,%eax
  180734:	eb 05                	jmp    18073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  180736:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  18073b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  180740:	85 c0                	test   %eax,%eax
  180742:	74 96                	je     1806da <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  180744:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  180748:	8b 01                	mov    (%rcx),%eax
  18074a:	83 f8 2f             	cmp    $0x2f,%eax
  18074d:	0f 87 72 ff ff ff    	ja     1806c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  180753:	89 c2                	mov    %eax,%edx
  180755:	48 03 51 10          	add    0x10(%rcx),%rdx
  180759:	83 c0 08             	add    $0x8,%eax
  18075c:	89 01                	mov    %eax,(%rcx)
  18075e:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  180761:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  180765:	85 f6                	test   %esi,%esi
  180767:	79 9e                	jns    180707 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  180769:	41 89 f1             	mov    %esi,%r9d
  18076c:	f7 de                	neg    %esi
  18076e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  180775:	bf a0 13 18 00       	mov    $0x1813a0,%edi
  18077a:	e9 5c 01 00 00       	jmpq   1808db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  18077f:	49 89 cc             	mov    %rcx,%r12
  180782:	b8 01 00 00 00       	mov    $0x1,%eax
  180787:	eb 16                	jmp    18079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  180789:	49 89 cc             	mov    %rcx,%r12
  18078c:	b8 00 00 00 00       	mov    $0x0,%eax
  180791:	eb 0c                	jmp    18079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  180793:	b8 00 00 00 00       	mov    $0x0,%eax
  180798:	eb 05                	jmp    18079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  18079a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  18079f:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1807a4:	eb 9a                	jmp    180740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1807a6:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1807a9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1807ad:	8b 01                	mov    (%rcx),%eax
  1807af:	83 f8 2f             	cmp    $0x2f,%eax
  1807b2:	77 21                	ja     1807d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1807b4:	89 c2                	mov    %eax,%edx
  1807b6:	48 03 51 10          	add    0x10(%rcx),%rdx
  1807ba:	83 c0 08             	add    $0x8,%eax
  1807bd:	89 01                	mov    %eax,(%rcx)
  1807bf:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1807c2:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1807c9:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1807ce:	eb 99                	jmp    180769 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  1807d0:	49 89 cc             	mov    %rcx,%r12
  1807d3:	eb d4                	jmp    1807a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  1807d5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1807d9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1807dd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1807e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1807e5:	eb d8                	jmp    1807bf <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  1807e7:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  1807ea:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1807ee:	8b 07                	mov    (%rdi),%eax
  1807f0:	83 f8 2f             	cmp    $0x2f,%eax
  1807f3:	77 1e                	ja     180813 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  1807f5:	89 c2                	mov    %eax,%edx
  1807f7:	48 03 57 10          	add    0x10(%rdi),%rdx
  1807fb:	83 c0 08             	add    $0x8,%eax
  1807fe:	89 07                	mov    %eax,(%rdi)
  180800:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  180803:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  180809:	e9 9a fc ff ff       	jmpq   1804a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  18080e:	49 89 cc             	mov    %rcx,%r12
  180811:	eb d7                	jmp    1807ea <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  180813:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  180817:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  18081b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  18081f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  180823:	eb db                	jmp    180800 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  180825:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  180828:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  18082c:	8b 01                	mov    (%rcx),%eax
  18082e:	83 f8 2f             	cmp    $0x2f,%eax
  180831:	77 18                	ja     18084b <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  180833:	89 c2                	mov    %eax,%edx
  180835:	48 03 51 10          	add    0x10(%rcx),%rdx
  180839:	83 c0 08             	add    $0x8,%eax
  18083c:	89 01                	mov    %eax,(%rcx)
  18083e:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  180841:	e9 ca fd ff ff       	jmpq   180610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  180846:	49 89 cc             	mov    %rcx,%r12
  180849:	eb dd                	jmp    180828 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  18084b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  18084f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  180853:	48 8d 42 08          	lea    0x8(%rdx),%rax
  180857:	48 89 47 08          	mov    %rax,0x8(%rdi)
  18085b:	eb e1                	jmp    18083e <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  18085d:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  180860:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  180864:	8b 07                	mov    (%rdi),%eax
  180866:	83 f8 2f             	cmp    $0x2f,%eax
  180869:	77 28                	ja     180893 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  18086b:	89 c2                	mov    %eax,%edx
  18086d:	48 03 57 10          	add    0x10(%rdi),%rdx
  180871:	83 c0 08             	add    $0x8,%eax
  180874:	89 07                	mov    %eax,(%rdi)
  180876:	8b 02                	mov    (%rdx),%eax
  180878:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  18087b:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  18087f:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  180883:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  180889:	e9 1a fc ff ff       	jmpq   1804a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  18088e:	49 89 cc             	mov    %rcx,%r12
  180891:	eb cd                	jmp    180860 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  180893:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  180897:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  18089b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  18089f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1808a3:	eb d1                	jmp    180876 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1808a5:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1808a8:	84 c0                	test   %al,%al
  1808aa:	0f 85 3b 01 00 00    	jne    1809eb <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1808b0:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1808b4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1808b8:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  1808bc:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1808c0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1808c6:	e9 dd fb ff ff       	jmpq   1804a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  1808cb:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  1808d1:	bf c0 13 18 00       	mov    $0x1813c0,%edi
        if (flags & FLAG_NUMERIC) {
  1808d6:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  1808db:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1808df:	4c 89 c1             	mov    %r8,%rcx
  1808e2:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  1808e6:	48 63 f6             	movslq %esi,%rsi
  1808e9:	48 83 eb 01          	sub    $0x1,%rbx
  1808ed:	48 89 c8             	mov    %rcx,%rax
  1808f0:	ba 00 00 00 00       	mov    $0x0,%edx
  1808f5:	48 f7 f6             	div    %rsi
  1808f8:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  1808fc:	88 13                	mov    %dl,(%rbx)
        val /= base;
  1808fe:	48 89 ca             	mov    %rcx,%rdx
  180901:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  180904:	48 39 d6             	cmp    %rdx,%rsi
  180907:	76 e0                	jbe    1808e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  180909:	e9 af fb ff ff       	jmpq   1804bd <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  18090e:	48 c7 45 a8 b9 0c 18 	movq   $0x180cb9,-0x58(%rbp)
  180915:	00 
            if (flags & FLAG_NEGATIVE) {
  180916:	41 f6 c5 80          	test   $0x80,%r13b
  18091a:	0f 85 c7 fb ff ff    	jne    1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  180920:	48 c7 45 a8 b7 0c 18 	movq   $0x180cb7,-0x58(%rbp)
  180927:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  180928:	41 f6 c5 10          	test   $0x10,%r13b
  18092c:	0f 85 b5 fb ff ff    	jne    1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  180932:	41 f6 c5 08          	test   $0x8,%r13b
  180936:	ba b6 0c 18 00       	mov    $0x180cb6,%edx
  18093b:	b8 b5 0c 18 00       	mov    $0x180cb5,%eax
  180940:	48 0f 44 c2          	cmove  %rdx,%rax
  180944:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  180948:	e9 9a fb ff ff       	jmpq   1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  18094d:	41 8d 41 10          	lea    0x10(%r9),%eax
  180951:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  180956:	0f 85 8b fb ff ff    	jne    1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  18095c:	4d 85 c0             	test   %r8,%r8
  18095f:	75 0d                	jne    18096e <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  180961:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  180968:	0f 84 79 fb ff ff    	je     1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  18096e:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  180972:	ba b2 0c 18 00       	mov    $0x180cb2,%edx
  180977:	b8 bb 0c 18 00       	mov    $0x180cbb,%eax
  18097c:	48 0f 44 c2          	cmove  %rdx,%rax
  180980:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  180984:	e9 5e fb ff ff       	jmpq   1804e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  180989:	48 89 df             	mov    %rbx,%rdi
  18098c:	e8 7f f7 ff ff       	callq  180110 <strlen>
  180991:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  180994:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  180998:	0f 84 76 fb ff ff    	je     180514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  18099e:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  1809a2:	0f 84 6c fb ff ff    	je     180514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  1809a8:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1809ab:	89 ca                	mov    %ecx,%edx
  1809ad:	29 c2                	sub    %eax,%edx
  1809af:	39 c1                	cmp    %eax,%ecx
  1809b1:	b8 00 00 00 00       	mov    $0x0,%eax
  1809b6:	0f 4f c2             	cmovg  %edx,%eax
  1809b9:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1809bc:	e9 69 fb ff ff       	jmpq   18052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  1809c1:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1809c5:	e8 46 f7 ff ff       	callq  180110 <strlen>
  1809ca:	8b 75 a0             	mov    -0x60(%rbp),%esi
  1809cd:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  1809d0:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1809d3:	89 f9                	mov    %edi,%ecx
  1809d5:	29 f1                	sub    %esi,%ecx
  1809d7:	29 c1                	sub    %eax,%ecx
  1809d9:	39 fa                	cmp    %edi,%edx
  1809db:	b8 00 00 00 00       	mov    $0x0,%eax
  1809e0:	0f 4c c1             	cmovl  %ecx,%eax
  1809e3:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1809e6:	e9 3f fb ff ff       	jmpq   18052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  1809eb:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  1809ee:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1809f1:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1809f5:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1809f9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1809ff:	e9 a4 fa ff ff       	jmpq   1804a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  180a04:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  180a0a:	e9 a4 f8 ff ff       	jmpq   1802b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  180a0f:	8d 50 bd             	lea    -0x43(%rax),%edx
  180a12:	80 fa 35             	cmp    $0x35,%dl
  180a15:	77 d7                	ja     1809ee <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  180a17:	0f b6 d2             	movzbl %dl,%edx
  180a1a:	3e ff 24 d5 e0 11 18 	notrack jmpq *0x1811e0(,%rdx,8)
  180a21:	00 
        }
    }
}
  180a22:	48 83 c4 58          	add    $0x58,%rsp
  180a26:	5b                   	pop    %rbx
  180a27:	41 5c                	pop    %r12
  180a29:	41 5d                	pop    %r13
  180a2b:	41 5e                	pop    %r14
  180a2d:	41 5f                	pop    %r15
  180a2f:	5d                   	pop    %rbp
  180a30:	c3                   	retq   
  180a31:	90                   	nop

0000000000180a32 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  180a32:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  180a36:	48 c7 07 48 14 18 00 	movq   $0x181448,(%rdi)
  180a3d:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  180a44:	00 
  180a45:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  180a48:	85 f6                	test   %esi,%esi
  180a4a:	78 18                	js     180a64 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  180a4c:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  180a52:	7f 0f                	jg     180a63 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  180a54:	48 63 f6             	movslq %esi,%rsi
  180a57:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  180a5e:	00 
  180a5f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  180a63:	c3                   	retq   
        cell_ += cursorpos;
  180a64:	8b 05 92 85 f3 ff    	mov    -0xc7a6e(%rip),%eax        # b8ffc <cursorpos>
  180a6a:	48 98                	cltq   
  180a6c:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  180a73:	00 
  180a74:	48 89 47 08          	mov    %rax,0x8(%rdi)
  180a78:	c3                   	retq   
  180a79:	90                   	nop

0000000000180a7a <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  180a7a:	f3 0f 1e fa          	endbr64 
  180a7e:	55                   	push   %rbp
  180a7f:	48 89 e5             	mov    %rsp,%rbp
  180a82:	53                   	push   %rbx
  180a83:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  180a87:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  180a8e:	00 
  180a8f:	72 18                	jb     180aa9 <console_printer::scroll()+0x2f>
  180a91:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  180a94:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  180a98:	75 23                	jne    180abd <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  180a9a:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  180aa1:	00 
    }
}
  180aa2:	48 83 c4 08          	add    $0x8,%rsp
  180aa6:	5b                   	pop    %rbx
  180aa7:	5d                   	pop    %rbp
  180aa8:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  180aa9:	ba d8 13 18 00       	mov    $0x1813d8,%edx
  180aae:	be 1f 02 00 00       	mov    $0x21f,%esi
  180ab3:	bf ab 0c 18 00       	mov    $0x180cab,%edi
  180ab8:	e8 a6 01 00 00       	callq  180c63 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  180abd:	ba 00 0f 00 00       	mov    $0xf00,%edx
  180ac2:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  180ac7:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  180acc:	e8 d2 f5 ff ff       	callq  1800a3 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  180ad1:	ba a0 00 00 00       	mov    $0xa0,%edx
  180ad6:	be 00 00 00 00       	mov    $0x0,%esi
  180adb:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  180ae0:	e8 0b f6 ff ff       	callq  1800f0 <memset>
        cell_ -= CONSOLE_COLUMNS;
  180ae5:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  180aec:	00 
  180aed:	eb b3                	jmp    180aa2 <console_printer::scroll()+0x28>
  180aef:	90                   	nop

0000000000180af0 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  180af0:	f3 0f 1e fa          	endbr64 
  180af4:	55                   	push   %rbp
  180af5:	48 89 e5             	mov    %rsp,%rbp
  180af8:	41 55                	push   %r13
  180afa:	41 54                	push   %r12
  180afc:	53                   	push   %rbx
  180afd:	48 83 ec 08          	sub    $0x8,%rsp
  180b01:	48 89 fb             	mov    %rdi,%rbx
  180b04:	41 89 f5             	mov    %esi,%r13d
  180b07:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  180b0a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  180b0e:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  180b14:	72 14                	jb     180b2a <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  180b16:	48 89 df             	mov    %rbx,%rdi
  180b19:	e8 5c ff ff ff       	callq  180a7a <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  180b1e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  180b22:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  180b28:	73 ec                	jae    180b16 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  180b2a:	41 80 fd 0a          	cmp    $0xa,%r13b
  180b2e:	74 1e                	je     180b4e <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  180b30:	48 8d 50 02          	lea    0x2(%rax),%rdx
  180b34:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  180b38:	45 0f b6 ed          	movzbl %r13b,%r13d
  180b3c:	45 09 ec             	or     %r13d,%r12d
  180b3f:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  180b43:	48 83 c4 08          	add    $0x8,%rsp
  180b47:	5b                   	pop    %rbx
  180b48:	41 5c                	pop    %r12
  180b4a:	41 5d                	pop    %r13
  180b4c:	5d                   	pop    %rbp
  180b4d:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  180b4e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  180b54:	48 89 c1             	mov    %rax,%rcx
  180b57:	48 89 c6             	mov    %rax,%rsi
  180b5a:	48 d1 fe             	sar    %rsi
  180b5d:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  180b64:	66 66 66 
  180b67:	48 89 f0             	mov    %rsi,%rax
  180b6a:	48 f7 ea             	imul   %rdx
  180b6d:	48 c1 fa 05          	sar    $0x5,%rdx
  180b71:	48 89 c8             	mov    %rcx,%rax
  180b74:	48 c1 f8 3f          	sar    $0x3f,%rax
  180b78:	48 29 c2             	sub    %rax,%rdx
  180b7b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  180b7f:	48 c1 e0 04          	shl    $0x4,%rax
  180b83:	89 f2                	mov    %esi,%edx
  180b85:	29 c2                	sub    %eax,%edx
  180b87:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  180b89:	41 83 cc 20          	or     $0x20,%r12d
  180b8d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  180b91:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  180b95:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  180b99:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  180b9d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  180ba0:	83 f8 50             	cmp    $0x50,%eax
  180ba3:	75 e8                	jne    180b8d <console_printer::putc(unsigned char, int)+0x9d>
  180ba5:	eb 9c                	jmp    180b43 <console_printer::putc(unsigned char, int)+0x53>
  180ba7:	90                   	nop

0000000000180ba8 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  180ba8:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  180bac:	48 8b 47 08          	mov    0x8(%rdi),%rax
  180bb0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  180bb6:	48 d1 f8             	sar    %rax
  180bb9:	89 05 3d 84 f3 ff    	mov    %eax,-0xc7bc3(%rip)        # b8ffc <cursorpos>
}
  180bbf:	c3                   	retq   

0000000000180bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  180bc0:	f3 0f 1e fa          	endbr64 
  180bc4:	55                   	push   %rbp
  180bc5:	48 89 e5             	mov    %rsp,%rbp
  180bc8:	41 56                	push   %r14
  180bca:	41 55                	push   %r13
  180bcc:	41 54                	push   %r12
  180bce:	53                   	push   %rbx
  180bcf:	48 83 ec 20          	sub    $0x20,%rsp
  180bd3:	89 fb                	mov    %edi,%ebx
  180bd5:	41 89 f4             	mov    %esi,%r12d
  180bd8:	49 89 d5             	mov    %rdx,%r13
  180bdb:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  180bde:	89 fa                	mov    %edi,%edx
  180be0:	c1 ea 1f             	shr    $0x1f,%edx
  180be3:	89 fe                	mov    %edi,%esi
  180be5:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  180be9:	e8 44 fe ff ff       	callq  180a32 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  180bee:	4c 89 f1             	mov    %r14,%rcx
  180bf1:	4c 89 ea             	mov    %r13,%rdx
  180bf4:	44 89 e6             	mov    %r12d,%esi
  180bf7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  180bfb:	e8 38 f6 ff ff       	callq  180238 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  180c00:	85 db                	test   %ebx,%ebx
  180c02:	78 1a                	js     180c1e <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  180c04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  180c08:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  180c0e:	48 d1 f8             	sar    %rax
}
  180c11:	48 83 c4 20          	add    $0x20,%rsp
  180c15:	5b                   	pop    %rbx
  180c16:	41 5c                	pop    %r12
  180c18:	41 5d                	pop    %r13
  180c1a:	41 5e                	pop    %r14
  180c1c:	5d                   	pop    %rbp
  180c1d:	c3                   	retq   
        cp.move_cursor();
  180c1e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  180c22:	e8 81 ff ff ff       	callq  180ba8 <console_printer::move_cursor()>
  180c27:	eb db                	jmp    180c04 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000180c29 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  180c29:	f3 0f 1e fa          	endbr64 
  180c2d:	55                   	push   %rbp
  180c2e:	48 89 e5             	mov    %rsp,%rbp
  180c31:	48 83 ec 50          	sub    $0x50,%rsp
  180c35:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  180c39:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  180c3d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  180c41:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  180c48:	48 8d 45 10          	lea    0x10(%rbp),%rax
  180c4c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  180c50:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  180c54:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  180c58:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  180c5c:	e8 5f ff ff ff       	callq  180bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  180c61:	c9                   	leaveq 
  180c62:	c3                   	retq   

0000000000180c63 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  180c63:	f3 0f 1e fa          	endbr64 
  180c67:	55                   	push   %rbp
  180c68:	48 89 e5             	mov    %rsp,%rbp
  180c6b:	48 89 f9             	mov    %rdi,%rcx
  180c6e:	41 89 f0             	mov    %esi,%r8d
  180c71:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  180c74:	ba 50 14 18 00       	mov    $0x181450,%edx
  180c79:	be 00 c0 00 00       	mov    $0xc000,%esi
  180c7e:	bf 30 07 00 00       	mov    $0x730,%edi
  180c83:	b0 00                	mov    $0x0,%al
  180c85:	e8 9f ff ff ff       	callq  180c29 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  180c8a:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  180c8f:	bf 00 00 00 00       	mov    $0x0,%edi
  180c94:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  180c96:	eb fe                	jmp    180c96 <assert_fail(char const*, int, char const*)+0x33>
