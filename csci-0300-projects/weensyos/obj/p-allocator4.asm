
obj/p-allocator4.full:     file format elf64-x86-64


Disassembly of section .text:

00000000001c0000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  1c0000:	f3 0f 1e fa          	endbr64 
  1c0004:	55                   	push   %rbp
  1c0005:	48 89 e5             	mov    %rsp,%rbp
  1c0008:	41 54                	push   %r12
  1c000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  1c000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  1c0010:	0f 05                	syscall 
    return rax;
  1c0012:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  1c0015:	41 89 c4             	mov    %eax,%r12d
    pid_t p = sys_getpid();
    srand(p);
  1c0018:	89 c7                	mov    %eax,%edi
  1c001a:	e8 af 01 00 00       	callq  1c01ce <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  1c001f:	b8 1b 30 1c 00       	mov    $0x1c301b,%eax

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1c0024:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1c002a:	48 89 05 d7 1f 00 00 	mov    %rax,0x1fd7(%rip)        # 1c2008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1c0031:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1c0034:	48 83 e8 01          	sub    $0x1,%rax
  1c0038:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1c003e:	48 89 05 bb 1f 00 00 	mov    %rax,0x1fbb(%rip)        # 1c2000 <stack_bottom>
  1c0045:	eb 07                	jmp    1c004e <process_main()+0x4e>
    register uintptr_t rax asm("rax") = syscallno;
  1c0047:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1c004c:	0f 05                	syscall 

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  1c004e:	be 63 00 00 00       	mov    $0x63,%esi
  1c0053:	bf 00 00 00 00       	mov    $0x0,%edi
  1c0058:	e8 90 01 00 00       	callq  1c01ed <rand(int, int)>
  1c005d:	44 39 e0             	cmp    %r12d,%eax
  1c0060:	7d e5                	jge    1c0047 <process_main()+0x47>
            if (heap_top == stack_bottom
  1c0062:	48 8b 3d 9f 1f 00 00 	mov    0x1f9f(%rip),%rdi        # 1c2008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  1c0069:	48 3b 3d 90 1f 00 00 	cmp    0x1f90(%rip),%rdi        # 1c2000 <stack_bottom>
  1c0070:	74 28                	je     1c009a <process_main()+0x9a>
    register uintptr_t rax asm("rax") = syscallno;
  1c0072:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  1c0077:	0f 05                	syscall 
  1c0079:	85 c0                	test   %eax,%eax
  1c007b:	78 1d                	js     1c009a <process_main()+0x9a>
                break;
            }
            *heap_top = p;               // check we can write to new page
  1c007d:	48 8b 05 84 1f 00 00 	mov    0x1f84(%rip),%rax        # 1c2008 <heap_top>
  1c0084:	88 18                	mov    %bl,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  1c0086:	66 89 1d 11 8f ef ff 	mov    %bx,-0x1070ef(%rip)        # b8f9e <console+0xf9e>
            heap_top += PAGESIZE;
  1c008d:	48 81 05 70 1f 00 00 	addq   $0x1000,0x1f70(%rip)        # 1c2008 <heap_top>
  1c0094:	00 10 00 00 
  1c0098:	eb ad                	jmp    1c0047 <process_main()+0x47>
    register uintptr_t rax asm("rax") = syscallno;
  1c009a:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1c009f:	0f 05                	syscall 
    return rax;
  1c00a1:	eb f7                	jmp    1c009a <process_main()+0x9a>

00000000001c00a3 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1c00a3:	f3 0f 1e fa          	endbr64 
  1c00a7:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1c00aa:	48 39 fe             	cmp    %rdi,%rsi
  1c00ad:	73 09                	jae    1c00b8 <memmove+0x15>
  1c00af:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1c00b3:	48 39 cf             	cmp    %rcx,%rdi
  1c00b6:	72 1d                	jb     1c00d5 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1c00b8:	b9 00 00 00 00       	mov    $0x0,%ecx
  1c00bd:	48 85 d2             	test   %rdx,%rdx
  1c00c0:	74 12                	je     1c00d4 <memmove+0x31>
            *d++ = *s++;
  1c00c2:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  1c00c6:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1c00ca:	48 83 c1 01          	add    $0x1,%rcx
  1c00ce:	48 39 d1             	cmp    %rdx,%rcx
  1c00d1:	75 ef                	jne    1c00c2 <memmove+0x1f>
        }
    }
    return dst;
}
  1c00d3:	c3                   	retq   
  1c00d4:	c3                   	retq   
        while (n-- > 0) {
  1c00d5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1c00d9:	48 85 d2             	test   %rdx,%rdx
  1c00dc:	74 f5                	je     1c00d3 <memmove+0x30>
            *--d = *--s;
  1c00de:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1c00e2:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1c00e5:	48 83 e9 01          	sub    $0x1,%rcx
  1c00e9:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1c00ed:	75 ef                	jne    1c00de <memmove+0x3b>
  1c00ef:	c3                   	retq   

00000000001c00f0 <memset>:

void* memset(void* v, int c, size_t n) {
  1c00f0:	f3 0f 1e fa          	endbr64 
  1c00f4:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1c00f7:	48 85 d2             	test   %rdx,%rdx
  1c00fa:	74 13                	je     1c010f <memset+0x1f>
  1c00fc:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  1c0100:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  1c0103:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1c0106:	48 83 c2 01          	add    $0x1,%rdx
  1c010a:	48 39 d1             	cmp    %rdx,%rcx
  1c010d:	75 f4                	jne    1c0103 <memset+0x13>
    }
    return v;
}
  1c010f:	c3                   	retq   

00000000001c0110 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1c0110:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1c0114:	80 3f 00             	cmpb   $0x0,(%rdi)
  1c0117:	74 10                	je     1c0129 <strlen+0x19>
  1c0119:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1c011e:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1c0122:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1c0126:	75 f6                	jne    1c011e <strlen+0xe>
  1c0128:	c3                   	retq   
  1c0129:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  1c012e:	c3                   	retq   

00000000001c012f <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  1c012f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1c0133:	48 85 f6             	test   %rsi,%rsi
  1c0136:	74 15                	je     1c014d <strnlen+0x1e>
  1c0138:	b8 00 00 00 00       	mov    $0x0,%eax
  1c013d:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1c0141:	74 0d                	je     1c0150 <strnlen+0x21>
        ++n;
  1c0143:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1c0147:	48 39 c6             	cmp    %rax,%rsi
  1c014a:	75 f1                	jne    1c013d <strnlen+0xe>
  1c014c:	c3                   	retq   
  1c014d:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  1c0150:	c3                   	retq   

00000000001c0151 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1c0151:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  1c0155:	0f b6 07             	movzbl (%rdi),%eax
  1c0158:	84 c0                	test   %al,%al
  1c015a:	74 10                	je     1c016c <strchr+0x1b>
  1c015c:	40 38 f0             	cmp    %sil,%al
  1c015f:	74 18                	je     1c0179 <strchr+0x28>
        ++s;
  1c0161:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1c0165:	0f b6 07             	movzbl (%rdi),%eax
  1c0168:	84 c0                	test   %al,%al
  1c016a:	75 f0                	jne    1c015c <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  1c016c:	40 84 f6             	test   %sil,%sil
  1c016f:	b8 00 00 00 00       	mov    $0x0,%eax
  1c0174:	48 0f 44 c7          	cmove  %rdi,%rax
  1c0178:	c3                   	retq   
  1c0179:	48 89 f8             	mov    %rdi,%rax
    }
}
  1c017c:	c3                   	retq   

00000000001c017d <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  1c017d:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  1c0181:	83 3d 90 1e 00 00 00 	cmpl   $0x0,0x1e90(%rip)        # 1c2018 <rand_seed_set>
  1c0188:	74 27                	je     1c01b1 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  1c018a:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  1c0191:	f4 51 58 
  1c0194:	48 0f af 05 74 1e 00 	imul   0x1e74(%rip),%rax        # 1c2010 <rand_seed>
  1c019b:	00 
  1c019c:	48 83 c0 01          	add    $0x1,%rax
  1c01a0:	48 89 05 69 1e 00 00 	mov    %rax,0x1e69(%rip)        # 1c2010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1c01a7:	48 c1 e8 20          	shr    $0x20,%rax
  1c01ab:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1c01b0:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1c01b1:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1c01b8:	87 d4 30 
  1c01bb:	48 89 05 4e 1e 00 00 	mov    %rax,0x1e4e(%rip)        # 1c2010 <rand_seed>
    rand_seed_set = 1;
  1c01c2:	c7 05 4c 1e 00 00 01 	movl   $0x1,0x1e4c(%rip)        # 1c2018 <rand_seed_set>
  1c01c9:	00 00 00 
}
  1c01cc:	eb bc                	jmp    1c018a <rand()+0xd>

00000000001c01ce <srand(unsigned int)>:
void srand(unsigned seed) {
  1c01ce:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1c01d2:	89 f8                	mov    %edi,%eax
  1c01d4:	48 c1 e7 20          	shl    $0x20,%rdi
  1c01d8:	48 09 c7             	or     %rax,%rdi
  1c01db:	48 89 3d 2e 1e 00 00 	mov    %rdi,0x1e2e(%rip)        # 1c2010 <rand_seed>
    rand_seed_set = 1;
  1c01e2:	c7 05 2c 1e 00 00 01 	movl   $0x1,0x1e2c(%rip)        # 1c2018 <rand_seed_set>
  1c01e9:	00 00 00 
}
  1c01ec:	c3                   	retq   

00000000001c01ed <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1c01ed:	f3 0f 1e fa          	endbr64 
  1c01f1:	55                   	push   %rbp
  1c01f2:	48 89 e5             	mov    %rsp,%rbp
  1c01f5:	41 54                	push   %r12
  1c01f7:	53                   	push   %rbx
    assert(min <= max);
  1c01f8:	39 f7                	cmp    %esi,%edi
  1c01fa:	7f 27                	jg     1c0223 <rand(int, int)+0x36>
  1c01fc:	41 89 fc             	mov    %edi,%r12d
  1c01ff:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  1c0201:	e8 77 ff ff ff       	callq  1c017d <rand()>
  1c0206:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1c0208:	44 29 e3             	sub    %r12d,%ebx
  1c020b:	8d 43 01             	lea    0x1(%rbx),%eax
  1c020e:	48 98                	cltq   
    unsigned long r = rand();
  1c0210:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1c0213:	48 0f af c3          	imul   %rbx,%rax
  1c0217:	48 c1 e8 1f          	shr    $0x1f,%rax
  1c021b:	44 01 e0             	add    %r12d,%eax
}
  1c021e:	5b                   	pop    %rbx
  1c021f:	41 5c                	pop    %r12
  1c0221:	5d                   	pop    %rbp
  1c0222:	c3                   	retq   
    assert(min <= max);
  1c0223:	ba a0 0c 1c 00       	mov    $0x1c0ca0,%edx
  1c0228:	be f2 00 00 00       	mov    $0xf2,%esi
  1c022d:	bf ab 0c 1c 00       	mov    $0x1c0cab,%edi
  1c0232:	e8 2c 0a 00 00       	callq  1c0c63 <assert_fail(char const*, int, char const*)>
  1c0237:	90                   	nop

00000000001c0238 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  1c0238:	f3 0f 1e fa          	endbr64 
  1c023c:	55                   	push   %rbp
  1c023d:	48 89 e5             	mov    %rsp,%rbp
  1c0240:	41 57                	push   %r15
  1c0242:	41 56                	push   %r14
  1c0244:	41 55                	push   %r13
  1c0246:	41 54                	push   %r12
  1c0248:	53                   	push   %rbx
  1c0249:	48 83 ec 58          	sub    $0x58,%rsp
  1c024d:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  1c0251:	0f b6 02             	movzbl (%rdx),%eax
  1c0254:	84 c0                	test   %al,%al
  1c0256:	0f 84 c6 07 00 00    	je     1c0a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  1c025c:	49 89 fe             	mov    %rdi,%r14
  1c025f:	41 89 f7             	mov    %esi,%r15d
  1c0262:	48 89 d3             	mov    %rdx,%rbx
  1c0265:	e9 b9 03 00 00       	jmpq   1c0623 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  1c026a:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  1c026e:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  1c0272:	84 db                	test   %bl,%bl
  1c0274:	0f 84 8a 07 00 00    	je     1c0a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  1c027a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  1c0280:	0f be f3             	movsbl %bl,%esi
  1c0283:	bf 90 13 1c 00       	mov    $0x1c1390,%edi
  1c0288:	e8 c4 fe ff ff       	callq  1c0151 <strchr>
  1c028d:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  1c0290:	48 85 c0             	test   %rax,%rax
  1c0293:	74 74                	je     1c0309 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  1c0295:	48 81 e9 90 13 1c 00 	sub    $0x1c1390,%rcx
  1c029c:	b8 01 00 00 00       	mov    $0x1,%eax
  1c02a1:	d3 e0                	shl    %cl,%eax
  1c02a3:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1c02a6:	49 83 c4 01          	add    $0x1,%r12
  1c02aa:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1c02af:	84 db                	test   %bl,%bl
  1c02b1:	75 cd                	jne    1c0280 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1c02b3:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1c02ba:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  1c02c1:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1c02c6:	0f 84 cc 00 00 00    	je     1c0398 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1c02cc:	41 0f b6 04 24       	movzbl (%r12),%eax
  1c02d1:	3c 6c                	cmp    $0x6c,%al
  1c02d3:	0f 84 54 01 00 00    	je     1c042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1c02d9:	0f 8f 42 01 00 00    	jg     1c0421 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  1c02df:	3c 68                	cmp    $0x68,%al
  1c02e1:	0f 85 68 01 00 00    	jne    1c044f <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1c02e7:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1c02ec:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1c02f2:	8d 50 bd             	lea    -0x43(%rax),%edx
  1c02f5:	80 fa 35             	cmp    $0x35,%dl
  1c02f8:	0f 87 aa 05 00 00    	ja     1c08a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1c02fe:	0f b6 d2             	movzbl %dl,%edx
  1c0301:	3e ff 24 d5 d0 0c 1c 	notrack jmpq *0x1c0cd0(,%rdx,8)
  1c0308:	00 
        if (*format >= '1' && *format <= '9') {
  1c0309:	8d 43 cf             	lea    -0x31(%rbx),%eax
  1c030c:	3c 08                	cmp    $0x8,%al
  1c030e:	77 35                	ja     1c0345 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1c0310:	41 0f b6 04 24       	movzbl (%r12),%eax
  1c0315:	8d 50 d0             	lea    -0x30(%rax),%edx
  1c0318:	80 fa 09             	cmp    $0x9,%dl
  1c031b:	77 63                	ja     1c0380 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  1c031d:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  1c0322:	49 83 c4 01          	add    $0x1,%r12
  1c0326:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1c0329:	0f be c0             	movsbl %al,%eax
  1c032c:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1c0330:	41 0f b6 04 24       	movzbl (%r12),%eax
  1c0335:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1c0338:	80 f9 09             	cmp    $0x9,%cl
  1c033b:	76 e5                	jbe    1c0322 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  1c033d:	89 55 98             	mov    %edx,-0x68(%rbp)
  1c0340:	e9 75 ff ff ff       	jmpq   1c02ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  1c0345:	80 fb 2a             	cmp    $0x2a,%bl
  1c0348:	75 42                	jne    1c038c <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  1c034a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c034e:	8b 07                	mov    (%rdi),%eax
  1c0350:	83 f8 2f             	cmp    $0x2f,%eax
  1c0353:	77 19                	ja     1c036e <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  1c0355:	89 c2                	mov    %eax,%edx
  1c0357:	48 03 57 10          	add    0x10(%rdi),%rdx
  1c035b:	83 c0 08             	add    $0x8,%eax
  1c035e:	89 07                	mov    %eax,(%rdi)
  1c0360:	8b 02                	mov    (%rdx),%eax
  1c0362:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  1c0365:	49 83 c4 01          	add    $0x1,%r12
  1c0369:	e9 4c ff ff ff       	jmpq   1c02ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  1c036e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c0372:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c0376:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c037a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c037e:	eb e0                	jmp    1c0360 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1c0380:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  1c0387:	e9 2e ff ff ff       	jmpq   1c02ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  1c038c:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  1c0393:	e9 22 ff ff ff       	jmpq   1c02ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  1c0398:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  1c039d:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1c03a3:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1c03a6:	80 f9 09             	cmp    $0x9,%cl
  1c03a9:	76 13                	jbe    1c03be <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1c03ab:	3c 2a                	cmp    $0x2a,%al
  1c03ad:	74 32                	je     1c03e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1c03af:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1c03b2:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1c03b9:	e9 0e ff ff ff       	jmpq   1c02cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1c03be:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  1c03c3:	48 83 c2 01          	add    $0x1,%rdx
  1c03c7:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1c03ca:	0f be c0             	movsbl %al,%eax
  1c03cd:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1c03d1:	0f b6 02             	movzbl (%rdx),%eax
  1c03d4:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1c03d7:	80 f9 09             	cmp    $0x9,%cl
  1c03da:	76 e7                	jbe    1c03c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  1c03dc:	49 89 d4             	mov    %rdx,%r12
  1c03df:	eb 1c                	jmp    1c03fd <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  1c03e1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c03e5:	8b 01                	mov    (%rcx),%eax
  1c03e7:	83 f8 2f             	cmp    $0x2f,%eax
  1c03ea:	77 23                	ja     1c040f <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  1c03ec:	89 c2                	mov    %eax,%edx
  1c03ee:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c03f2:	83 c0 08             	add    $0x8,%eax
  1c03f5:	89 01                	mov    %eax,(%rcx)
  1c03f7:	8b 32                	mov    (%rdx),%esi
                ++format;
  1c03f9:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  1c03fd:	85 f6                	test   %esi,%esi
  1c03ff:	b8 00 00 00 00       	mov    $0x0,%eax
  1c0404:	0f 49 c6             	cmovns %esi,%eax
  1c0407:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1c040a:	e9 bd fe ff ff       	jmpq   1c02cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  1c040f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c0413:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c0417:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c041b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c041f:	eb d6                	jmp    1c03f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  1c0421:	3c 74                	cmp    $0x74,%al
  1c0423:	74 08                	je     1c042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1c0425:	3c 7a                	cmp    $0x7a,%al
  1c0427:	0f 85 e2 05 00 00    	jne    1c0a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  1c042d:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  1c0432:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1c0438:	8d 50 bd             	lea    -0x43(%rax),%edx
  1c043b:	80 fa 35             	cmp    $0x35,%dl
  1c043e:	0f 87 64 04 00 00    	ja     1c08a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1c0444:	0f b6 d2             	movzbl %dl,%edx
  1c0447:	3e ff 24 d5 80 0e 1c 	notrack jmpq *0x1c0e80(,%rdx,8)
  1c044e:	00 
  1c044f:	8d 50 bd             	lea    -0x43(%rax),%edx
  1c0452:	80 fa 35             	cmp    $0x35,%dl
  1c0455:	0f 87 4a 04 00 00    	ja     1c08a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  1c045b:	0f b6 d2             	movzbl %dl,%edx
  1c045e:	3e ff 24 d5 30 10 1c 	notrack jmpq *0x1c1030(,%rdx,8)
  1c0465:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1c0466:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c046a:	8b 07                	mov    (%rdi),%eax
  1c046c:	83 f8 2f             	cmp    $0x2f,%eax
  1c046f:	0f 87 c9 01 00 00    	ja     1c063e <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  1c0475:	89 c2                	mov    %eax,%edx
  1c0477:	48 03 57 10          	add    0x10(%rdi),%rdx
  1c047b:	83 c0 08             	add    $0x8,%eax
  1c047e:	89 07                	mov    %eax,(%rdi)
  1c0480:	48 8b 12             	mov    (%rdx),%rdx
  1c0483:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  1c0486:	48 89 d0             	mov    %rdx,%rax
  1c0489:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  1c048d:	49 89 d0             	mov    %rdx,%r8
  1c0490:	49 f7 d8             	neg    %r8
  1c0493:	25 80 00 00 00       	and    $0x80,%eax
  1c0498:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  1c049c:	41 09 c5             	or     %eax,%r13d
  1c049f:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1c04a3:	bb b6 0c 1c 00       	mov    $0x1c0cb6,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1c04a8:	44 89 e8             	mov    %r13d,%eax
  1c04ab:	83 e0 20             	and    $0x20,%eax
  1c04ae:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1c04b1:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1c04b7:	0f 85 0e 04 00 00    	jne    1c08cb <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1c04bd:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  1c04c1:	44 89 e8             	mov    %r13d,%eax
  1c04c4:	83 e0 60             	and    $0x60,%eax
  1c04c7:	83 f8 60             	cmp    $0x60,%eax
  1c04ca:	0f 84 3e 04 00 00    	je     1c090e <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1c04d0:	44 89 e8             	mov    %r13d,%eax
  1c04d3:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1c04d6:	48 c7 45 a8 b6 0c 1c 	movq   $0x1c0cb6,-0x58(%rbp)
  1c04dd:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1c04de:	83 f8 21             	cmp    $0x21,%eax
  1c04e1:	0f 84 66 04 00 00    	je     1c094d <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1c04e7:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1c04ea:	89 c8                	mov    %ecx,%eax
  1c04ec:	f7 d0                	not    %eax
  1c04ee:	c1 e8 1f             	shr    $0x1f,%eax
  1c04f1:	89 45 88             	mov    %eax,-0x78(%rbp)
  1c04f4:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1c04f8:	0f 85 8b 04 00 00    	jne    1c0989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  1c04fe:	84 c0                	test   %al,%al
  1c0500:	0f 84 83 04 00 00    	je     1c0989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  1c0506:	48 63 f1             	movslq %ecx,%rsi
  1c0509:	48 89 df             	mov    %rbx,%rdi
  1c050c:	e8 1e fc ff ff       	callq  1c012f <strnlen>
  1c0511:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  1c0514:	8b 45 8c             	mov    -0x74(%rbp),%eax
  1c0517:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  1c051a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1c0521:	83 f8 22             	cmp    $0x22,%eax
  1c0524:	0f 84 97 04 00 00    	je     1c09c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  1c052a:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1c052e:	e8 dd fb ff ff       	callq  1c0110 <strlen>
  1c0533:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  1c0536:	03 55 a0             	add    -0x60(%rbp),%edx
  1c0539:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1c053c:	29 d7                	sub    %edx,%edi
  1c053e:	89 fa                	mov    %edi,%edx
  1c0540:	29 c2                	sub    %eax,%edx
  1c0542:	89 55 98             	mov    %edx,-0x68(%rbp)
  1c0545:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1c0548:	41 f6 c5 04          	test   $0x4,%r13b
  1c054c:	75 32                	jne    1c0580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  1c054e:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1c0551:	85 d2                	test   %edx,%edx
  1c0553:	7e 2b                	jle    1c0580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  1c0555:	49 8b 06             	mov    (%r14),%rax
  1c0558:	44 89 fa             	mov    %r15d,%edx
  1c055b:	be 20 00 00 00       	mov    $0x20,%esi
  1c0560:	4c 89 f7             	mov    %r14,%rdi
  1c0563:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1c0565:	41 83 ed 01          	sub    $0x1,%r13d
  1c0569:	45 85 ed             	test   %r13d,%r13d
  1c056c:	7f e7                	jg     1c0555 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  1c056e:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1c0571:	85 ff                	test   %edi,%edi
  1c0573:	b8 01 00 00 00       	mov    $0x1,%eax
  1c0578:	0f 4f c7             	cmovg  %edi,%eax
  1c057b:	29 c7                	sub    %eax,%edi
  1c057d:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  1c0580:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  1c0584:	0f b6 00             	movzbl (%rax),%eax
  1c0587:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  1c058b:	84 c0                	test   %al,%al
  1c058d:	74 1b                	je     1c05aa <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  1c058f:	0f b6 f0             	movzbl %al,%esi
  1c0592:	49 8b 06             	mov    (%r14),%rax
  1c0595:	44 89 fa             	mov    %r15d,%edx
  1c0598:	4c 89 f7             	mov    %r14,%rdi
  1c059b:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  1c059d:	49 83 c5 01          	add    $0x1,%r13
  1c05a1:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1c05a6:	84 c0                	test   %al,%al
  1c05a8:	75 e5                	jne    1c058f <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1c05aa:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1c05ae:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1c05b2:	7e 16                	jle    1c05ca <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1c05b4:	49 8b 06             	mov    (%r14),%rax
  1c05b7:	44 89 fa             	mov    %r15d,%edx
  1c05ba:	be 30 00 00 00       	mov    $0x30,%esi
  1c05bf:	4c 89 f7             	mov    %r14,%rdi
  1c05c2:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  1c05c4:	41 83 ed 01          	sub    $0x1,%r13d
  1c05c8:	75 ea                	jne    1c05b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1c05ca:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  1c05ce:	7e 22                	jle    1c05f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  1c05d0:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1c05d3:	8d 40 ff             	lea    -0x1(%rax),%eax
  1c05d6:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  1c05db:	0f b6 33             	movzbl (%rbx),%esi
  1c05de:	49 8b 06             	mov    (%r14),%rax
  1c05e1:	44 89 fa             	mov    %r15d,%edx
  1c05e4:	4c 89 f7             	mov    %r14,%rdi
  1c05e7:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1c05e9:	48 83 c3 01          	add    $0x1,%rbx
  1c05ed:	4c 39 eb             	cmp    %r13,%rbx
  1c05f0:	75 e9                	jne    1c05db <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  1c05f2:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  1c05f5:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1c05f9:	7e 15                	jle    1c0610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  1c05fb:	49 8b 06             	mov    (%r14),%rax
  1c05fe:	44 89 fa             	mov    %r15d,%edx
  1c0601:	be 20 00 00 00       	mov    $0x20,%esi
  1c0606:	4c 89 f7             	mov    %r14,%rdi
  1c0609:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  1c060b:	83 eb 01             	sub    $0x1,%ebx
  1c060e:	75 eb                	jne    1c05fb <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  1c0610:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1c0615:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1c061b:	84 c0                	test   %al,%al
  1c061d:	0f 84 ff 03 00 00    	je     1c0a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  1c0623:	3c 25                	cmp    $0x25,%al
  1c0625:	0f 84 3f fc ff ff    	je     1c026a <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  1c062b:	0f b6 f0             	movzbl %al,%esi
  1c062e:	49 8b 06             	mov    (%r14),%rax
  1c0631:	44 89 fa             	mov    %r15d,%edx
  1c0634:	4c 89 f7             	mov    %r14,%rdi
  1c0637:	ff 10                	callq  *(%rax)
            continue;
  1c0639:	49 89 dc             	mov    %rbx,%r12
  1c063c:	eb d2                	jmp    1c0610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1c063e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c0642:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c0646:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c064a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c064e:	e9 2d fe ff ff       	jmpq   1c0480 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  1c0653:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1c0656:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c065a:	8b 01                	mov    (%rcx),%eax
  1c065c:	83 f8 2f             	cmp    $0x2f,%eax
  1c065f:	77 13                	ja     1c0674 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  1c0661:	89 c2                	mov    %eax,%edx
  1c0663:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c0667:	83 c0 08             	add    $0x8,%eax
  1c066a:	89 01                	mov    %eax,(%rcx)
  1c066c:	48 63 12             	movslq (%rdx),%rdx
  1c066f:	e9 12 fe ff ff       	jmpq   1c0486 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  1c0674:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c0678:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1c067c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c0680:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1c0684:	eb e6                	jmp    1c066c <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  1c0686:	49 89 cc             	mov    %rcx,%r12
  1c0689:	b8 01 00 00 00       	mov    $0x1,%eax
  1c068e:	be 0a 00 00 00       	mov    $0xa,%esi
  1c0693:	e9 a8 00 00 00       	jmpq   1c0740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1c0698:	49 89 cc             	mov    %rcx,%r12
  1c069b:	b8 00 00 00 00       	mov    $0x0,%eax
  1c06a0:	be 0a 00 00 00       	mov    $0xa,%esi
  1c06a5:	e9 96 00 00 00       	jmpq   1c0740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1c06aa:	b8 00 00 00 00       	mov    $0x0,%eax
  1c06af:	be 0a 00 00 00       	mov    $0xa,%esi
  1c06b4:	e9 87 00 00 00       	jmpq   1c0740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1c06b9:	b8 00 00 00 00       	mov    $0x0,%eax
  1c06be:	be 0a 00 00 00       	mov    $0xa,%esi
  1c06c3:	eb 7b                	jmp    1c0740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1c06c5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c06c9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c06cd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c06d1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c06d5:	e9 84 00 00 00       	jmpq   1c075e <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  1c06da:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c06de:	8b 01                	mov    (%rcx),%eax
  1c06e0:	83 f8 2f             	cmp    $0x2f,%eax
  1c06e3:	77 10                	ja     1c06f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  1c06e5:	89 c2                	mov    %eax,%edx
  1c06e7:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c06eb:	83 c0 08             	add    $0x8,%eax
  1c06ee:	89 01                	mov    %eax,(%rcx)
  1c06f0:	44 8b 02             	mov    (%rdx),%r8d
  1c06f3:	eb 6c                	jmp    1c0761 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  1c06f5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c06f9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1c06fd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c0701:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1c0705:	eb e9                	jmp    1c06f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  1c0707:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  1c070a:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  1c0711:	bf c0 13 1c 00       	mov    $0x1c13c0,%edi
  1c0716:	e9 c0 01 00 00       	jmpq   1c08db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1c071b:	49 89 cc             	mov    %rcx,%r12
  1c071e:	b8 01 00 00 00       	mov    $0x1,%eax
  1c0723:	eb 16                	jmp    1c073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1c0725:	49 89 cc             	mov    %rcx,%r12
  1c0728:	b8 00 00 00 00       	mov    $0x0,%eax
  1c072d:	eb 0c                	jmp    1c073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  1c072f:	b8 00 00 00 00       	mov    $0x0,%eax
  1c0734:	eb 05                	jmp    1c073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1c0736:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  1c073b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1c0740:	85 c0                	test   %eax,%eax
  1c0742:	74 96                	je     1c06da <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  1c0744:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c0748:	8b 01                	mov    (%rcx),%eax
  1c074a:	83 f8 2f             	cmp    $0x2f,%eax
  1c074d:	0f 87 72 ff ff ff    	ja     1c06c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  1c0753:	89 c2                	mov    %eax,%edx
  1c0755:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c0759:	83 c0 08             	add    $0x8,%eax
  1c075c:	89 01                	mov    %eax,(%rcx)
  1c075e:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1c0761:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  1c0765:	85 f6                	test   %esi,%esi
  1c0767:	79 9e                	jns    1c0707 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  1c0769:	41 89 f1             	mov    %esi,%r9d
  1c076c:	f7 de                	neg    %esi
  1c076e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  1c0775:	bf a0 13 1c 00       	mov    $0x1c13a0,%edi
  1c077a:	e9 5c 01 00 00       	jmpq   1c08db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1c077f:	49 89 cc             	mov    %rcx,%r12
  1c0782:	b8 01 00 00 00       	mov    $0x1,%eax
  1c0787:	eb 16                	jmp    1c079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1c0789:	49 89 cc             	mov    %rcx,%r12
  1c078c:	b8 00 00 00 00       	mov    $0x0,%eax
  1c0791:	eb 0c                	jmp    1c079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  1c0793:	b8 00 00 00 00       	mov    $0x0,%eax
  1c0798:	eb 05                	jmp    1c079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  1c079a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  1c079f:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1c07a4:	eb 9a                	jmp    1c0740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1c07a6:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1c07a9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c07ad:	8b 01                	mov    (%rcx),%eax
  1c07af:	83 f8 2f             	cmp    $0x2f,%eax
  1c07b2:	77 21                	ja     1c07d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1c07b4:	89 c2                	mov    %eax,%edx
  1c07b6:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c07ba:	83 c0 08             	add    $0x8,%eax
  1c07bd:	89 01                	mov    %eax,(%rcx)
  1c07bf:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1c07c2:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1c07c9:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1c07ce:	eb 99                	jmp    1c0769 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  1c07d0:	49 89 cc             	mov    %rcx,%r12
  1c07d3:	eb d4                	jmp    1c07a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  1c07d5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c07d9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c07dd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c07e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c07e5:	eb d8                	jmp    1c07bf <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  1c07e7:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  1c07ea:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c07ee:	8b 07                	mov    (%rdi),%eax
  1c07f0:	83 f8 2f             	cmp    $0x2f,%eax
  1c07f3:	77 1e                	ja     1c0813 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  1c07f5:	89 c2                	mov    %eax,%edx
  1c07f7:	48 03 57 10          	add    0x10(%rdi),%rdx
  1c07fb:	83 c0 08             	add    $0x8,%eax
  1c07fe:	89 07                	mov    %eax,(%rdi)
  1c0800:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  1c0803:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1c0809:	e9 9a fc ff ff       	jmpq   1c04a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1c080e:	49 89 cc             	mov    %rcx,%r12
  1c0811:	eb d7                	jmp    1c07ea <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  1c0813:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c0817:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1c081b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c081f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1c0823:	eb db                	jmp    1c0800 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  1c0825:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  1c0828:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c082c:	8b 01                	mov    (%rcx),%eax
  1c082e:	83 f8 2f             	cmp    $0x2f,%eax
  1c0831:	77 18                	ja     1c084b <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  1c0833:	89 c2                	mov    %eax,%edx
  1c0835:	48 03 51 10          	add    0x10(%rcx),%rdx
  1c0839:	83 c0 08             	add    $0x8,%eax
  1c083c:	89 01                	mov    %eax,(%rcx)
  1c083e:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  1c0841:	e9 ca fd ff ff       	jmpq   1c0610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  1c0846:	49 89 cc             	mov    %rcx,%r12
  1c0849:	eb dd                	jmp    1c0828 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  1c084b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c084f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1c0853:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c0857:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c085b:	eb e1                	jmp    1c083e <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  1c085d:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  1c0860:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1c0864:	8b 07                	mov    (%rdi),%eax
  1c0866:	83 f8 2f             	cmp    $0x2f,%eax
  1c0869:	77 28                	ja     1c0893 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  1c086b:	89 c2                	mov    %eax,%edx
  1c086d:	48 03 57 10          	add    0x10(%rdi),%rdx
  1c0871:	83 c0 08             	add    $0x8,%eax
  1c0874:	89 07                	mov    %eax,(%rdi)
  1c0876:	8b 02                	mov    (%rdx),%eax
  1c0878:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1c087b:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1c087f:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1c0883:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  1c0889:	e9 1a fc ff ff       	jmpq   1c04a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1c088e:	49 89 cc             	mov    %rcx,%r12
  1c0891:	eb cd                	jmp    1c0860 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  1c0893:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1c0897:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1c089b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1c089f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1c08a3:	eb d1                	jmp    1c0876 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1c08a5:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1c08a8:	84 c0                	test   %al,%al
  1c08aa:	0f 85 3b 01 00 00    	jne    1c09eb <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1c08b0:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1c08b4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1c08b8:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  1c08bc:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1c08c0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1c08c6:	e9 dd fb ff ff       	jmpq   1c04a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  1c08cb:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  1c08d1:	bf c0 13 1c 00       	mov    $0x1c13c0,%edi
        if (flags & FLAG_NUMERIC) {
  1c08d6:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  1c08db:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1c08df:	4c 89 c1             	mov    %r8,%rcx
  1c08e2:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  1c08e6:	48 63 f6             	movslq %esi,%rsi
  1c08e9:	48 83 eb 01          	sub    $0x1,%rbx
  1c08ed:	48 89 c8             	mov    %rcx,%rax
  1c08f0:	ba 00 00 00 00       	mov    $0x0,%edx
  1c08f5:	48 f7 f6             	div    %rsi
  1c08f8:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  1c08fc:	88 13                	mov    %dl,(%rbx)
        val /= base;
  1c08fe:	48 89 ca             	mov    %rcx,%rdx
  1c0901:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  1c0904:	48 39 d6             	cmp    %rdx,%rsi
  1c0907:	76 e0                	jbe    1c08e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  1c0909:	e9 af fb ff ff       	jmpq   1c04bd <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  1c090e:	48 c7 45 a8 b9 0c 1c 	movq   $0x1c0cb9,-0x58(%rbp)
  1c0915:	00 
            if (flags & FLAG_NEGATIVE) {
  1c0916:	41 f6 c5 80          	test   $0x80,%r13b
  1c091a:	0f 85 c7 fb ff ff    	jne    1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  1c0920:	48 c7 45 a8 b7 0c 1c 	movq   $0x1c0cb7,-0x58(%rbp)
  1c0927:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  1c0928:	41 f6 c5 10          	test   $0x10,%r13b
  1c092c:	0f 85 b5 fb ff ff    	jne    1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  1c0932:	41 f6 c5 08          	test   $0x8,%r13b
  1c0936:	ba b6 0c 1c 00       	mov    $0x1c0cb6,%edx
  1c093b:	b8 b5 0c 1c 00       	mov    $0x1c0cb5,%eax
  1c0940:	48 0f 44 c2          	cmove  %rdx,%rax
  1c0944:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  1c0948:	e9 9a fb ff ff       	jmpq   1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  1c094d:	41 8d 41 10          	lea    0x10(%r9),%eax
  1c0951:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  1c0956:	0f 85 8b fb ff ff    	jne    1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  1c095c:	4d 85 c0             	test   %r8,%r8
  1c095f:	75 0d                	jne    1c096e <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  1c0961:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  1c0968:	0f 84 79 fb ff ff    	je     1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  1c096e:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  1c0972:	ba b2 0c 1c 00       	mov    $0x1c0cb2,%edx
  1c0977:	b8 bb 0c 1c 00       	mov    $0x1c0cbb,%eax
  1c097c:	48 0f 44 c2          	cmove  %rdx,%rax
  1c0980:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  1c0984:	e9 5e fb ff ff       	jmpq   1c04e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  1c0989:	48 89 df             	mov    %rbx,%rdi
  1c098c:	e8 7f f7 ff ff       	callq  1c0110 <strlen>
  1c0991:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  1c0994:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1c0998:	0f 84 76 fb ff ff    	je     1c0514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  1c099e:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  1c09a2:	0f 84 6c fb ff ff    	je     1c0514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  1c09a8:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1c09ab:	89 ca                	mov    %ecx,%edx
  1c09ad:	29 c2                	sub    %eax,%edx
  1c09af:	39 c1                	cmp    %eax,%ecx
  1c09b1:	b8 00 00 00 00       	mov    $0x0,%eax
  1c09b6:	0f 4f c2             	cmovg  %edx,%eax
  1c09b9:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1c09bc:	e9 69 fb ff ff       	jmpq   1c052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  1c09c1:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1c09c5:	e8 46 f7 ff ff       	callq  1c0110 <strlen>
  1c09ca:	8b 75 a0             	mov    -0x60(%rbp),%esi
  1c09cd:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  1c09d0:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1c09d3:	89 f9                	mov    %edi,%ecx
  1c09d5:	29 f1                	sub    %esi,%ecx
  1c09d7:	29 c1                	sub    %eax,%ecx
  1c09d9:	39 fa                	cmp    %edi,%edx
  1c09db:	b8 00 00 00 00       	mov    $0x0,%eax
  1c09e0:	0f 4c c1             	cmovl  %ecx,%eax
  1c09e3:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1c09e6:	e9 3f fb ff ff       	jmpq   1c052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  1c09eb:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  1c09ee:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1c09f1:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1c09f5:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1c09f9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1c09ff:	e9 a4 fa ff ff       	jmpq   1c04a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  1c0a04:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  1c0a0a:	e9 a4 f8 ff ff       	jmpq   1c02b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  1c0a0f:	8d 50 bd             	lea    -0x43(%rax),%edx
  1c0a12:	80 fa 35             	cmp    $0x35,%dl
  1c0a15:	77 d7                	ja     1c09ee <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  1c0a17:	0f b6 d2             	movzbl %dl,%edx
  1c0a1a:	3e ff 24 d5 e0 11 1c 	notrack jmpq *0x1c11e0(,%rdx,8)
  1c0a21:	00 
        }
    }
}
  1c0a22:	48 83 c4 58          	add    $0x58,%rsp
  1c0a26:	5b                   	pop    %rbx
  1c0a27:	41 5c                	pop    %r12
  1c0a29:	41 5d                	pop    %r13
  1c0a2b:	41 5e                	pop    %r14
  1c0a2d:	41 5f                	pop    %r15
  1c0a2f:	5d                   	pop    %rbp
  1c0a30:	c3                   	retq   
  1c0a31:	90                   	nop

00000000001c0a32 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  1c0a32:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  1c0a36:	48 c7 07 48 14 1c 00 	movq   $0x1c1448,(%rdi)
  1c0a3d:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  1c0a44:	00 
  1c0a45:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  1c0a48:	85 f6                	test   %esi,%esi
  1c0a4a:	78 18                	js     1c0a64 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  1c0a4c:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  1c0a52:	7f 0f                	jg     1c0a63 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  1c0a54:	48 63 f6             	movslq %esi,%rsi
  1c0a57:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  1c0a5e:	00 
  1c0a5f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  1c0a63:	c3                   	retq   
        cell_ += cursorpos;
  1c0a64:	8b 05 92 85 ef ff    	mov    -0x107a6e(%rip),%eax        # b8ffc <cursorpos>
  1c0a6a:	48 98                	cltq   
  1c0a6c:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  1c0a73:	00 
  1c0a74:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1c0a78:	c3                   	retq   
  1c0a79:	90                   	nop

00000000001c0a7a <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  1c0a7a:	f3 0f 1e fa          	endbr64 
  1c0a7e:	55                   	push   %rbp
  1c0a7f:	48 89 e5             	mov    %rsp,%rbp
  1c0a82:	53                   	push   %rbx
  1c0a83:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  1c0a87:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  1c0a8e:	00 
  1c0a8f:	72 18                	jb     1c0aa9 <console_printer::scroll()+0x2f>
  1c0a91:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  1c0a94:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  1c0a98:	75 23                	jne    1c0abd <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  1c0a9a:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  1c0aa1:	00 
    }
}
  1c0aa2:	48 83 c4 08          	add    $0x8,%rsp
  1c0aa6:	5b                   	pop    %rbx
  1c0aa7:	5d                   	pop    %rbp
  1c0aa8:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  1c0aa9:	ba d8 13 1c 00       	mov    $0x1c13d8,%edx
  1c0aae:	be 1f 02 00 00       	mov    $0x21f,%esi
  1c0ab3:	bf ab 0c 1c 00       	mov    $0x1c0cab,%edi
  1c0ab8:	e8 a6 01 00 00       	callq  1c0c63 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  1c0abd:	ba 00 0f 00 00       	mov    $0xf00,%edx
  1c0ac2:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  1c0ac7:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  1c0acc:	e8 d2 f5 ff ff       	callq  1c00a3 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  1c0ad1:	ba a0 00 00 00       	mov    $0xa0,%edx
  1c0ad6:	be 00 00 00 00       	mov    $0x0,%esi
  1c0adb:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  1c0ae0:	e8 0b f6 ff ff       	callq  1c00f0 <memset>
        cell_ -= CONSOLE_COLUMNS;
  1c0ae5:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  1c0aec:	00 
  1c0aed:	eb b3                	jmp    1c0aa2 <console_printer::scroll()+0x28>
  1c0aef:	90                   	nop

00000000001c0af0 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  1c0af0:	f3 0f 1e fa          	endbr64 
  1c0af4:	55                   	push   %rbp
  1c0af5:	48 89 e5             	mov    %rsp,%rbp
  1c0af8:	41 55                	push   %r13
  1c0afa:	41 54                	push   %r12
  1c0afc:	53                   	push   %rbx
  1c0afd:	48 83 ec 08          	sub    $0x8,%rsp
  1c0b01:	48 89 fb             	mov    %rdi,%rbx
  1c0b04:	41 89 f5             	mov    %esi,%r13d
  1c0b07:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  1c0b0a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  1c0b0e:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  1c0b14:	72 14                	jb     1c0b2a <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  1c0b16:	48 89 df             	mov    %rbx,%rdi
  1c0b19:	e8 5c ff ff ff       	callq  1c0a7a <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  1c0b1e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  1c0b22:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  1c0b28:	73 ec                	jae    1c0b16 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  1c0b2a:	41 80 fd 0a          	cmp    $0xa,%r13b
  1c0b2e:	74 1e                	je     1c0b4e <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  1c0b30:	48 8d 50 02          	lea    0x2(%rax),%rdx
  1c0b34:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  1c0b38:	45 0f b6 ed          	movzbl %r13b,%r13d
  1c0b3c:	45 09 ec             	or     %r13d,%r12d
  1c0b3f:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  1c0b43:	48 83 c4 08          	add    $0x8,%rsp
  1c0b47:	5b                   	pop    %rbx
  1c0b48:	41 5c                	pop    %r12
  1c0b4a:	41 5d                	pop    %r13
  1c0b4c:	5d                   	pop    %rbp
  1c0b4d:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  1c0b4e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  1c0b54:	48 89 c1             	mov    %rax,%rcx
  1c0b57:	48 89 c6             	mov    %rax,%rsi
  1c0b5a:	48 d1 fe             	sar    %rsi
  1c0b5d:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  1c0b64:	66 66 66 
  1c0b67:	48 89 f0             	mov    %rsi,%rax
  1c0b6a:	48 f7 ea             	imul   %rdx
  1c0b6d:	48 c1 fa 05          	sar    $0x5,%rdx
  1c0b71:	48 89 c8             	mov    %rcx,%rax
  1c0b74:	48 c1 f8 3f          	sar    $0x3f,%rax
  1c0b78:	48 29 c2             	sub    %rax,%rdx
  1c0b7b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  1c0b7f:	48 c1 e0 04          	shl    $0x4,%rax
  1c0b83:	89 f2                	mov    %esi,%edx
  1c0b85:	29 c2                	sub    %eax,%edx
  1c0b87:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  1c0b89:	41 83 cc 20          	or     $0x20,%r12d
  1c0b8d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  1c0b91:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  1c0b95:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  1c0b99:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  1c0b9d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  1c0ba0:	83 f8 50             	cmp    $0x50,%eax
  1c0ba3:	75 e8                	jne    1c0b8d <console_printer::putc(unsigned char, int)+0x9d>
  1c0ba5:	eb 9c                	jmp    1c0b43 <console_printer::putc(unsigned char, int)+0x53>
  1c0ba7:	90                   	nop

00000000001c0ba8 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  1c0ba8:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  1c0bac:	48 8b 47 08          	mov    0x8(%rdi),%rax
  1c0bb0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  1c0bb6:	48 d1 f8             	sar    %rax
  1c0bb9:	89 05 3d 84 ef ff    	mov    %eax,-0x107bc3(%rip)        # b8ffc <cursorpos>
}
  1c0bbf:	c3                   	retq   

00000000001c0bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  1c0bc0:	f3 0f 1e fa          	endbr64 
  1c0bc4:	55                   	push   %rbp
  1c0bc5:	48 89 e5             	mov    %rsp,%rbp
  1c0bc8:	41 56                	push   %r14
  1c0bca:	41 55                	push   %r13
  1c0bcc:	41 54                	push   %r12
  1c0bce:	53                   	push   %rbx
  1c0bcf:	48 83 ec 20          	sub    $0x20,%rsp
  1c0bd3:	89 fb                	mov    %edi,%ebx
  1c0bd5:	41 89 f4             	mov    %esi,%r12d
  1c0bd8:	49 89 d5             	mov    %rdx,%r13
  1c0bdb:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  1c0bde:	89 fa                	mov    %edi,%edx
  1c0be0:	c1 ea 1f             	shr    $0x1f,%edx
  1c0be3:	89 fe                	mov    %edi,%esi
  1c0be5:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  1c0be9:	e8 44 fe ff ff       	callq  1c0a32 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  1c0bee:	4c 89 f1             	mov    %r14,%rcx
  1c0bf1:	4c 89 ea             	mov    %r13,%rdx
  1c0bf4:	44 89 e6             	mov    %r12d,%esi
  1c0bf7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  1c0bfb:	e8 38 f6 ff ff       	callq  1c0238 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  1c0c00:	85 db                	test   %ebx,%ebx
  1c0c02:	78 1a                	js     1c0c1e <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  1c0c04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  1c0c08:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  1c0c0e:	48 d1 f8             	sar    %rax
}
  1c0c11:	48 83 c4 20          	add    $0x20,%rsp
  1c0c15:	5b                   	pop    %rbx
  1c0c16:	41 5c                	pop    %r12
  1c0c18:	41 5d                	pop    %r13
  1c0c1a:	41 5e                	pop    %r14
  1c0c1c:	5d                   	pop    %rbp
  1c0c1d:	c3                   	retq   
        cp.move_cursor();
  1c0c1e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  1c0c22:	e8 81 ff ff ff       	callq  1c0ba8 <console_printer::move_cursor()>
  1c0c27:	eb db                	jmp    1c0c04 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

00000000001c0c29 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  1c0c29:	f3 0f 1e fa          	endbr64 
  1c0c2d:	55                   	push   %rbp
  1c0c2e:	48 89 e5             	mov    %rsp,%rbp
  1c0c31:	48 83 ec 50          	sub    $0x50,%rsp
  1c0c35:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  1c0c39:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  1c0c3d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  1c0c41:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  1c0c48:	48 8d 45 10          	lea    0x10(%rbp),%rax
  1c0c4c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  1c0c50:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  1c0c54:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  1c0c58:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  1c0c5c:	e8 5f ff ff ff       	callq  1c0bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  1c0c61:	c9                   	leaveq 
  1c0c62:	c3                   	retq   

00000000001c0c63 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  1c0c63:	f3 0f 1e fa          	endbr64 
  1c0c67:	55                   	push   %rbp
  1c0c68:	48 89 e5             	mov    %rsp,%rbp
  1c0c6b:	48 89 f9             	mov    %rdi,%rcx
  1c0c6e:	41 89 f0             	mov    %esi,%r8d
  1c0c71:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  1c0c74:	ba 50 14 1c 00       	mov    $0x1c1450,%edx
  1c0c79:	be 00 c0 00 00       	mov    $0xc000,%esi
  1c0c7e:	bf 30 07 00 00       	mov    $0x730,%edi
  1c0c83:	b0 00                	mov    $0x0,%al
  1c0c85:	e8 9f ff ff ff       	callq  1c0c29 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  1c0c8a:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  1c0c8f:	bf 00 00 00 00       	mov    $0x0,%edi
  1c0c94:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  1c0c96:	eb fe                	jmp    1c0c96 <assert_fail(char const*, int, char const*)+0x33>
