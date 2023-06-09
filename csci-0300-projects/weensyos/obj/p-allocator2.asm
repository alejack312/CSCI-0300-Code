
obj/p-allocator2.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000140000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  140000:	f3 0f 1e fa          	endbr64 
  140004:	55                   	push   %rbp
  140005:	48 89 e5             	mov    %rsp,%rbp
  140008:	41 54                	push   %r12
  14000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  14000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  140010:	0f 05                	syscall 
    return rax;
  140012:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  140015:	41 89 c4             	mov    %eax,%r12d
    pid_t p = sys_getpid();
    srand(p);
  140018:	89 c7                	mov    %eax,%edi
  14001a:	e8 af 01 00 00       	callq  1401ce <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  14001f:	b8 1b 30 14 00       	mov    $0x14301b,%eax

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  140024:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  14002a:	48 89 05 d7 1f 00 00 	mov    %rax,0x1fd7(%rip)        # 142008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  140031:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  140034:	48 83 e8 01          	sub    $0x1,%rax
  140038:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  14003e:	48 89 05 bb 1f 00 00 	mov    %rax,0x1fbb(%rip)        # 142000 <stack_bottom>
  140045:	eb 07                	jmp    14004e <process_main()+0x4e>
    register uintptr_t rax asm("rax") = syscallno;
  140047:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  14004c:	0f 05                	syscall 

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  14004e:	be 63 00 00 00       	mov    $0x63,%esi
  140053:	bf 00 00 00 00       	mov    $0x0,%edi
  140058:	e8 90 01 00 00       	callq  1401ed <rand(int, int)>
  14005d:	44 39 e0             	cmp    %r12d,%eax
  140060:	7d e5                	jge    140047 <process_main()+0x47>
            if (heap_top == stack_bottom
  140062:	48 8b 3d 9f 1f 00 00 	mov    0x1f9f(%rip),%rdi        # 142008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  140069:	48 3b 3d 90 1f 00 00 	cmp    0x1f90(%rip),%rdi        # 142000 <stack_bottom>
  140070:	74 28                	je     14009a <process_main()+0x9a>
    register uintptr_t rax asm("rax") = syscallno;
  140072:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  140077:	0f 05                	syscall 
  140079:	85 c0                	test   %eax,%eax
  14007b:	78 1d                	js     14009a <process_main()+0x9a>
                break;
            }
            *heap_top = p;               // check we can write to new page
  14007d:	48 8b 05 84 1f 00 00 	mov    0x1f84(%rip),%rax        # 142008 <heap_top>
  140084:	88 18                	mov    %bl,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  140086:	66 89 1d 11 8f f7 ff 	mov    %bx,-0x870ef(%rip)        # b8f9e <console+0xf9e>
            heap_top += PAGESIZE;
  14008d:	48 81 05 70 1f 00 00 	addq   $0x1000,0x1f70(%rip)        # 142008 <heap_top>
  140094:	00 10 00 00 
  140098:	eb ad                	jmp    140047 <process_main()+0x47>
    register uintptr_t rax asm("rax") = syscallno;
  14009a:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  14009f:	0f 05                	syscall 
    return rax;
  1400a1:	eb f7                	jmp    14009a <process_main()+0x9a>

00000000001400a3 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1400a3:	f3 0f 1e fa          	endbr64 
  1400a7:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1400aa:	48 39 fe             	cmp    %rdi,%rsi
  1400ad:	73 09                	jae    1400b8 <memmove+0x15>
  1400af:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1400b3:	48 39 cf             	cmp    %rcx,%rdi
  1400b6:	72 1d                	jb     1400d5 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1400b8:	b9 00 00 00 00       	mov    $0x0,%ecx
  1400bd:	48 85 d2             	test   %rdx,%rdx
  1400c0:	74 12                	je     1400d4 <memmove+0x31>
            *d++ = *s++;
  1400c2:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  1400c6:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1400ca:	48 83 c1 01          	add    $0x1,%rcx
  1400ce:	48 39 d1             	cmp    %rdx,%rcx
  1400d1:	75 ef                	jne    1400c2 <memmove+0x1f>
        }
    }
    return dst;
}
  1400d3:	c3                   	retq   
  1400d4:	c3                   	retq   
        while (n-- > 0) {
  1400d5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1400d9:	48 85 d2             	test   %rdx,%rdx
  1400dc:	74 f5                	je     1400d3 <memmove+0x30>
            *--d = *--s;
  1400de:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1400e2:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1400e5:	48 83 e9 01          	sub    $0x1,%rcx
  1400e9:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1400ed:	75 ef                	jne    1400de <memmove+0x3b>
  1400ef:	c3                   	retq   

00000000001400f0 <memset>:

void* memset(void* v, int c, size_t n) {
  1400f0:	f3 0f 1e fa          	endbr64 
  1400f4:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1400f7:	48 85 d2             	test   %rdx,%rdx
  1400fa:	74 13                	je     14010f <memset+0x1f>
  1400fc:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  140100:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  140103:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  140106:	48 83 c2 01          	add    $0x1,%rdx
  14010a:	48 39 d1             	cmp    %rdx,%rcx
  14010d:	75 f4                	jne    140103 <memset+0x13>
    }
    return v;
}
  14010f:	c3                   	retq   

0000000000140110 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  140110:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  140114:	80 3f 00             	cmpb   $0x0,(%rdi)
  140117:	74 10                	je     140129 <strlen+0x19>
  140119:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  14011e:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  140122:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  140126:	75 f6                	jne    14011e <strlen+0xe>
  140128:	c3                   	retq   
  140129:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  14012e:	c3                   	retq   

000000000014012f <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  14012f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  140133:	48 85 f6             	test   %rsi,%rsi
  140136:	74 15                	je     14014d <strnlen+0x1e>
  140138:	b8 00 00 00 00       	mov    $0x0,%eax
  14013d:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  140141:	74 0d                	je     140150 <strnlen+0x21>
        ++n;
  140143:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  140147:	48 39 c6             	cmp    %rax,%rsi
  14014a:	75 f1                	jne    14013d <strnlen+0xe>
  14014c:	c3                   	retq   
  14014d:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  140150:	c3                   	retq   

0000000000140151 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  140151:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  140155:	0f b6 07             	movzbl (%rdi),%eax
  140158:	84 c0                	test   %al,%al
  14015a:	74 10                	je     14016c <strchr+0x1b>
  14015c:	40 38 f0             	cmp    %sil,%al
  14015f:	74 18                	je     140179 <strchr+0x28>
        ++s;
  140161:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  140165:	0f b6 07             	movzbl (%rdi),%eax
  140168:	84 c0                	test   %al,%al
  14016a:	75 f0                	jne    14015c <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  14016c:	40 84 f6             	test   %sil,%sil
  14016f:	b8 00 00 00 00       	mov    $0x0,%eax
  140174:	48 0f 44 c7          	cmove  %rdi,%rax
  140178:	c3                   	retq   
  140179:	48 89 f8             	mov    %rdi,%rax
    }
}
  14017c:	c3                   	retq   

000000000014017d <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  14017d:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  140181:	83 3d 90 1e 00 00 00 	cmpl   $0x0,0x1e90(%rip)        # 142018 <rand_seed_set>
  140188:	74 27                	je     1401b1 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  14018a:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  140191:	f4 51 58 
  140194:	48 0f af 05 74 1e 00 	imul   0x1e74(%rip),%rax        # 142010 <rand_seed>
  14019b:	00 
  14019c:	48 83 c0 01          	add    $0x1,%rax
  1401a0:	48 89 05 69 1e 00 00 	mov    %rax,0x1e69(%rip)        # 142010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1401a7:	48 c1 e8 20          	shr    $0x20,%rax
  1401ab:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1401b0:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1401b1:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1401b8:	87 d4 30 
  1401bb:	48 89 05 4e 1e 00 00 	mov    %rax,0x1e4e(%rip)        # 142010 <rand_seed>
    rand_seed_set = 1;
  1401c2:	c7 05 4c 1e 00 00 01 	movl   $0x1,0x1e4c(%rip)        # 142018 <rand_seed_set>
  1401c9:	00 00 00 
}
  1401cc:	eb bc                	jmp    14018a <rand()+0xd>

00000000001401ce <srand(unsigned int)>:
void srand(unsigned seed) {
  1401ce:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1401d2:	89 f8                	mov    %edi,%eax
  1401d4:	48 c1 e7 20          	shl    $0x20,%rdi
  1401d8:	48 09 c7             	or     %rax,%rdi
  1401db:	48 89 3d 2e 1e 00 00 	mov    %rdi,0x1e2e(%rip)        # 142010 <rand_seed>
    rand_seed_set = 1;
  1401e2:	c7 05 2c 1e 00 00 01 	movl   $0x1,0x1e2c(%rip)        # 142018 <rand_seed_set>
  1401e9:	00 00 00 
}
  1401ec:	c3                   	retq   

00000000001401ed <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1401ed:	f3 0f 1e fa          	endbr64 
  1401f1:	55                   	push   %rbp
  1401f2:	48 89 e5             	mov    %rsp,%rbp
  1401f5:	41 54                	push   %r12
  1401f7:	53                   	push   %rbx
    assert(min <= max);
  1401f8:	39 f7                	cmp    %esi,%edi
  1401fa:	7f 27                	jg     140223 <rand(int, int)+0x36>
  1401fc:	41 89 fc             	mov    %edi,%r12d
  1401ff:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  140201:	e8 77 ff ff ff       	callq  14017d <rand()>
  140206:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  140208:	44 29 e3             	sub    %r12d,%ebx
  14020b:	8d 43 01             	lea    0x1(%rbx),%eax
  14020e:	48 98                	cltq   
    unsigned long r = rand();
  140210:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  140213:	48 0f af c3          	imul   %rbx,%rax
  140217:	48 c1 e8 1f          	shr    $0x1f,%rax
  14021b:	44 01 e0             	add    %r12d,%eax
}
  14021e:	5b                   	pop    %rbx
  14021f:	41 5c                	pop    %r12
  140221:	5d                   	pop    %rbp
  140222:	c3                   	retq   
    assert(min <= max);
  140223:	ba a0 0c 14 00       	mov    $0x140ca0,%edx
  140228:	be f2 00 00 00       	mov    $0xf2,%esi
  14022d:	bf ab 0c 14 00       	mov    $0x140cab,%edi
  140232:	e8 2c 0a 00 00       	callq  140c63 <assert_fail(char const*, int, char const*)>
  140237:	90                   	nop

0000000000140238 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  140238:	f3 0f 1e fa          	endbr64 
  14023c:	55                   	push   %rbp
  14023d:	48 89 e5             	mov    %rsp,%rbp
  140240:	41 57                	push   %r15
  140242:	41 56                	push   %r14
  140244:	41 55                	push   %r13
  140246:	41 54                	push   %r12
  140248:	53                   	push   %rbx
  140249:	48 83 ec 58          	sub    $0x58,%rsp
  14024d:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  140251:	0f b6 02             	movzbl (%rdx),%eax
  140254:	84 c0                	test   %al,%al
  140256:	0f 84 c6 07 00 00    	je     140a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  14025c:	49 89 fe             	mov    %rdi,%r14
  14025f:	41 89 f7             	mov    %esi,%r15d
  140262:	48 89 d3             	mov    %rdx,%rbx
  140265:	e9 b9 03 00 00       	jmpq   140623 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  14026a:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  14026e:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  140272:	84 db                	test   %bl,%bl
  140274:	0f 84 8a 07 00 00    	je     140a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  14027a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  140280:	0f be f3             	movsbl %bl,%esi
  140283:	bf 90 13 14 00       	mov    $0x141390,%edi
  140288:	e8 c4 fe ff ff       	callq  140151 <strchr>
  14028d:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  140290:	48 85 c0             	test   %rax,%rax
  140293:	74 74                	je     140309 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  140295:	48 81 e9 90 13 14 00 	sub    $0x141390,%rcx
  14029c:	b8 01 00 00 00       	mov    $0x1,%eax
  1402a1:	d3 e0                	shl    %cl,%eax
  1402a3:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1402a6:	49 83 c4 01          	add    $0x1,%r12
  1402aa:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1402af:	84 db                	test   %bl,%bl
  1402b1:	75 cd                	jne    140280 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1402b3:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1402ba:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  1402c1:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1402c6:	0f 84 cc 00 00 00    	je     140398 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1402cc:	41 0f b6 04 24       	movzbl (%r12),%eax
  1402d1:	3c 6c                	cmp    $0x6c,%al
  1402d3:	0f 84 54 01 00 00    	je     14042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1402d9:	0f 8f 42 01 00 00    	jg     140421 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  1402df:	3c 68                	cmp    $0x68,%al
  1402e1:	0f 85 68 01 00 00    	jne    14044f <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1402e7:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1402ec:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1402f2:	8d 50 bd             	lea    -0x43(%rax),%edx
  1402f5:	80 fa 35             	cmp    $0x35,%dl
  1402f8:	0f 87 aa 05 00 00    	ja     1408a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1402fe:	0f b6 d2             	movzbl %dl,%edx
  140301:	3e ff 24 d5 d0 0c 14 	notrack jmpq *0x140cd0(,%rdx,8)
  140308:	00 
        if (*format >= '1' && *format <= '9') {
  140309:	8d 43 cf             	lea    -0x31(%rbx),%eax
  14030c:	3c 08                	cmp    $0x8,%al
  14030e:	77 35                	ja     140345 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  140310:	41 0f b6 04 24       	movzbl (%r12),%eax
  140315:	8d 50 d0             	lea    -0x30(%rax),%edx
  140318:	80 fa 09             	cmp    $0x9,%dl
  14031b:	77 63                	ja     140380 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  14031d:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  140322:	49 83 c4 01          	add    $0x1,%r12
  140326:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  140329:	0f be c0             	movsbl %al,%eax
  14032c:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  140330:	41 0f b6 04 24       	movzbl (%r12),%eax
  140335:	8d 48 d0             	lea    -0x30(%rax),%ecx
  140338:	80 f9 09             	cmp    $0x9,%cl
  14033b:	76 e5                	jbe    140322 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  14033d:	89 55 98             	mov    %edx,-0x68(%rbp)
  140340:	e9 75 ff ff ff       	jmpq   1402ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  140345:	80 fb 2a             	cmp    $0x2a,%bl
  140348:	75 42                	jne    14038c <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  14034a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  14034e:	8b 07                	mov    (%rdi),%eax
  140350:	83 f8 2f             	cmp    $0x2f,%eax
  140353:	77 19                	ja     14036e <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  140355:	89 c2                	mov    %eax,%edx
  140357:	48 03 57 10          	add    0x10(%rdi),%rdx
  14035b:	83 c0 08             	add    $0x8,%eax
  14035e:	89 07                	mov    %eax,(%rdi)
  140360:	8b 02                	mov    (%rdx),%eax
  140362:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  140365:	49 83 c4 01          	add    $0x1,%r12
  140369:	e9 4c ff ff ff       	jmpq   1402ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  14036e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  140372:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  140376:	48 8d 42 08          	lea    0x8(%rdx),%rax
  14037a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  14037e:	eb e0                	jmp    140360 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  140380:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  140387:	e9 2e ff ff ff       	jmpq   1402ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  14038c:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  140393:	e9 22 ff ff ff       	jmpq   1402ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  140398:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  14039d:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1403a3:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1403a6:	80 f9 09             	cmp    $0x9,%cl
  1403a9:	76 13                	jbe    1403be <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1403ab:	3c 2a                	cmp    $0x2a,%al
  1403ad:	74 32                	je     1403e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1403af:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1403b2:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1403b9:	e9 0e ff ff ff       	jmpq   1402cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1403be:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  1403c3:	48 83 c2 01          	add    $0x1,%rdx
  1403c7:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1403ca:	0f be c0             	movsbl %al,%eax
  1403cd:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1403d1:	0f b6 02             	movzbl (%rdx),%eax
  1403d4:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1403d7:	80 f9 09             	cmp    $0x9,%cl
  1403da:	76 e7                	jbe    1403c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  1403dc:	49 89 d4             	mov    %rdx,%r12
  1403df:	eb 1c                	jmp    1403fd <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  1403e1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1403e5:	8b 01                	mov    (%rcx),%eax
  1403e7:	83 f8 2f             	cmp    $0x2f,%eax
  1403ea:	77 23                	ja     14040f <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  1403ec:	89 c2                	mov    %eax,%edx
  1403ee:	48 03 51 10          	add    0x10(%rcx),%rdx
  1403f2:	83 c0 08             	add    $0x8,%eax
  1403f5:	89 01                	mov    %eax,(%rcx)
  1403f7:	8b 32                	mov    (%rdx),%esi
                ++format;
  1403f9:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  1403fd:	85 f6                	test   %esi,%esi
  1403ff:	b8 00 00 00 00       	mov    $0x0,%eax
  140404:	0f 49 c6             	cmovns %esi,%eax
  140407:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  14040a:	e9 bd fe ff ff       	jmpq   1402cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  14040f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  140413:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  140417:	48 8d 42 08          	lea    0x8(%rdx),%rax
  14041b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  14041f:	eb d6                	jmp    1403f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  140421:	3c 74                	cmp    $0x74,%al
  140423:	74 08                	je     14042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  140425:	3c 7a                	cmp    $0x7a,%al
  140427:	0f 85 e2 05 00 00    	jne    140a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  14042d:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  140432:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  140438:	8d 50 bd             	lea    -0x43(%rax),%edx
  14043b:	80 fa 35             	cmp    $0x35,%dl
  14043e:	0f 87 64 04 00 00    	ja     1408a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  140444:	0f b6 d2             	movzbl %dl,%edx
  140447:	3e ff 24 d5 80 0e 14 	notrack jmpq *0x140e80(,%rdx,8)
  14044e:	00 
  14044f:	8d 50 bd             	lea    -0x43(%rax),%edx
  140452:	80 fa 35             	cmp    $0x35,%dl
  140455:	0f 87 4a 04 00 00    	ja     1408a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  14045b:	0f b6 d2             	movzbl %dl,%edx
  14045e:	3e ff 24 d5 30 10 14 	notrack jmpq *0x141030(,%rdx,8)
  140465:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  140466:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  14046a:	8b 07                	mov    (%rdi),%eax
  14046c:	83 f8 2f             	cmp    $0x2f,%eax
  14046f:	0f 87 c9 01 00 00    	ja     14063e <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  140475:	89 c2                	mov    %eax,%edx
  140477:	48 03 57 10          	add    0x10(%rdi),%rdx
  14047b:	83 c0 08             	add    $0x8,%eax
  14047e:	89 07                	mov    %eax,(%rdi)
  140480:	48 8b 12             	mov    (%rdx),%rdx
  140483:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  140486:	48 89 d0             	mov    %rdx,%rax
  140489:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  14048d:	49 89 d0             	mov    %rdx,%r8
  140490:	49 f7 d8             	neg    %r8
  140493:	25 80 00 00 00       	and    $0x80,%eax
  140498:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  14049c:	41 09 c5             	or     %eax,%r13d
  14049f:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1404a3:	bb b6 0c 14 00       	mov    $0x140cb6,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1404a8:	44 89 e8             	mov    %r13d,%eax
  1404ab:	83 e0 20             	and    $0x20,%eax
  1404ae:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1404b1:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1404b7:	0f 85 0e 04 00 00    	jne    1408cb <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1404bd:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  1404c1:	44 89 e8             	mov    %r13d,%eax
  1404c4:	83 e0 60             	and    $0x60,%eax
  1404c7:	83 f8 60             	cmp    $0x60,%eax
  1404ca:	0f 84 3e 04 00 00    	je     14090e <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1404d0:	44 89 e8             	mov    %r13d,%eax
  1404d3:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1404d6:	48 c7 45 a8 b6 0c 14 	movq   $0x140cb6,-0x58(%rbp)
  1404dd:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1404de:	83 f8 21             	cmp    $0x21,%eax
  1404e1:	0f 84 66 04 00 00    	je     14094d <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1404e7:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1404ea:	89 c8                	mov    %ecx,%eax
  1404ec:	f7 d0                	not    %eax
  1404ee:	c1 e8 1f             	shr    $0x1f,%eax
  1404f1:	89 45 88             	mov    %eax,-0x78(%rbp)
  1404f4:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1404f8:	0f 85 8b 04 00 00    	jne    140989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  1404fe:	84 c0                	test   %al,%al
  140500:	0f 84 83 04 00 00    	je     140989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  140506:	48 63 f1             	movslq %ecx,%rsi
  140509:	48 89 df             	mov    %rbx,%rdi
  14050c:	e8 1e fc ff ff       	callq  14012f <strnlen>
  140511:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  140514:	8b 45 8c             	mov    -0x74(%rbp),%eax
  140517:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  14051a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  140521:	83 f8 22             	cmp    $0x22,%eax
  140524:	0f 84 97 04 00 00    	je     1409c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  14052a:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  14052e:	e8 dd fb ff ff       	callq  140110 <strlen>
  140533:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  140536:	03 55 a0             	add    -0x60(%rbp),%edx
  140539:	8b 7d 98             	mov    -0x68(%rbp),%edi
  14053c:	29 d7                	sub    %edx,%edi
  14053e:	89 fa                	mov    %edi,%edx
  140540:	29 c2                	sub    %eax,%edx
  140542:	89 55 98             	mov    %edx,-0x68(%rbp)
  140545:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  140548:	41 f6 c5 04          	test   $0x4,%r13b
  14054c:	75 32                	jne    140580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  14054e:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  140551:	85 d2                	test   %edx,%edx
  140553:	7e 2b                	jle    140580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  140555:	49 8b 06             	mov    (%r14),%rax
  140558:	44 89 fa             	mov    %r15d,%edx
  14055b:	be 20 00 00 00       	mov    $0x20,%esi
  140560:	4c 89 f7             	mov    %r14,%rdi
  140563:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  140565:	41 83 ed 01          	sub    $0x1,%r13d
  140569:	45 85 ed             	test   %r13d,%r13d
  14056c:	7f e7                	jg     140555 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  14056e:	8b 7d 98             	mov    -0x68(%rbp),%edi
  140571:	85 ff                	test   %edi,%edi
  140573:	b8 01 00 00 00       	mov    $0x1,%eax
  140578:	0f 4f c7             	cmovg  %edi,%eax
  14057b:	29 c7                	sub    %eax,%edi
  14057d:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  140580:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  140584:	0f b6 00             	movzbl (%rax),%eax
  140587:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  14058b:	84 c0                	test   %al,%al
  14058d:	74 1b                	je     1405aa <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  14058f:	0f b6 f0             	movzbl %al,%esi
  140592:	49 8b 06             	mov    (%r14),%rax
  140595:	44 89 fa             	mov    %r15d,%edx
  140598:	4c 89 f7             	mov    %r14,%rdi
  14059b:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  14059d:	49 83 c5 01          	add    $0x1,%r13
  1405a1:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1405a6:	84 c0                	test   %al,%al
  1405a8:	75 e5                	jne    14058f <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1405aa:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1405ae:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1405b2:	7e 16                	jle    1405ca <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1405b4:	49 8b 06             	mov    (%r14),%rax
  1405b7:	44 89 fa             	mov    %r15d,%edx
  1405ba:	be 30 00 00 00       	mov    $0x30,%esi
  1405bf:	4c 89 f7             	mov    %r14,%rdi
  1405c2:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  1405c4:	41 83 ed 01          	sub    $0x1,%r13d
  1405c8:	75 ea                	jne    1405b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1405ca:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  1405ce:	7e 22                	jle    1405f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  1405d0:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1405d3:	8d 40 ff             	lea    -0x1(%rax),%eax
  1405d6:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  1405db:	0f b6 33             	movzbl (%rbx),%esi
  1405de:	49 8b 06             	mov    (%r14),%rax
  1405e1:	44 89 fa             	mov    %r15d,%edx
  1405e4:	4c 89 f7             	mov    %r14,%rdi
  1405e7:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1405e9:	48 83 c3 01          	add    $0x1,%rbx
  1405ed:	4c 39 eb             	cmp    %r13,%rbx
  1405f0:	75 e9                	jne    1405db <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  1405f2:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  1405f5:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1405f9:	7e 15                	jle    140610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  1405fb:	49 8b 06             	mov    (%r14),%rax
  1405fe:	44 89 fa             	mov    %r15d,%edx
  140601:	be 20 00 00 00       	mov    $0x20,%esi
  140606:	4c 89 f7             	mov    %r14,%rdi
  140609:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  14060b:	83 eb 01             	sub    $0x1,%ebx
  14060e:	75 eb                	jne    1405fb <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  140610:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  140615:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  14061b:	84 c0                	test   %al,%al
  14061d:	0f 84 ff 03 00 00    	je     140a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  140623:	3c 25                	cmp    $0x25,%al
  140625:	0f 84 3f fc ff ff    	je     14026a <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  14062b:	0f b6 f0             	movzbl %al,%esi
  14062e:	49 8b 06             	mov    (%r14),%rax
  140631:	44 89 fa             	mov    %r15d,%edx
  140634:	4c 89 f7             	mov    %r14,%rdi
  140637:	ff 10                	callq  *(%rax)
            continue;
  140639:	49 89 dc             	mov    %rbx,%r12
  14063c:	eb d2                	jmp    140610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  14063e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  140642:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  140646:	48 8d 42 08          	lea    0x8(%rdx),%rax
  14064a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  14064e:	e9 2d fe ff ff       	jmpq   140480 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  140653:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  140656:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  14065a:	8b 01                	mov    (%rcx),%eax
  14065c:	83 f8 2f             	cmp    $0x2f,%eax
  14065f:	77 13                	ja     140674 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  140661:	89 c2                	mov    %eax,%edx
  140663:	48 03 51 10          	add    0x10(%rcx),%rdx
  140667:	83 c0 08             	add    $0x8,%eax
  14066a:	89 01                	mov    %eax,(%rcx)
  14066c:	48 63 12             	movslq (%rdx),%rdx
  14066f:	e9 12 fe ff ff       	jmpq   140486 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  140674:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  140678:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  14067c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  140680:	48 89 41 08          	mov    %rax,0x8(%rcx)
  140684:	eb e6                	jmp    14066c <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  140686:	49 89 cc             	mov    %rcx,%r12
  140689:	b8 01 00 00 00       	mov    $0x1,%eax
  14068e:	be 0a 00 00 00       	mov    $0xa,%esi
  140693:	e9 a8 00 00 00       	jmpq   140740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  140698:	49 89 cc             	mov    %rcx,%r12
  14069b:	b8 00 00 00 00       	mov    $0x0,%eax
  1406a0:	be 0a 00 00 00       	mov    $0xa,%esi
  1406a5:	e9 96 00 00 00       	jmpq   140740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1406aa:	b8 00 00 00 00       	mov    $0x0,%eax
  1406af:	be 0a 00 00 00       	mov    $0xa,%esi
  1406b4:	e9 87 00 00 00       	jmpq   140740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1406b9:	b8 00 00 00 00       	mov    $0x0,%eax
  1406be:	be 0a 00 00 00       	mov    $0xa,%esi
  1406c3:	eb 7b                	jmp    140740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1406c5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1406c9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1406cd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1406d1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1406d5:	e9 84 00 00 00       	jmpq   14075e <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  1406da:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1406de:	8b 01                	mov    (%rcx),%eax
  1406e0:	83 f8 2f             	cmp    $0x2f,%eax
  1406e3:	77 10                	ja     1406f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  1406e5:	89 c2                	mov    %eax,%edx
  1406e7:	48 03 51 10          	add    0x10(%rcx),%rdx
  1406eb:	83 c0 08             	add    $0x8,%eax
  1406ee:	89 01                	mov    %eax,(%rcx)
  1406f0:	44 8b 02             	mov    (%rdx),%r8d
  1406f3:	eb 6c                	jmp    140761 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  1406f5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1406f9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1406fd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  140701:	48 89 41 08          	mov    %rax,0x8(%rcx)
  140705:	eb e9                	jmp    1406f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  140707:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  14070a:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  140711:	bf c0 13 14 00       	mov    $0x1413c0,%edi
  140716:	e9 c0 01 00 00       	jmpq   1408db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  14071b:	49 89 cc             	mov    %rcx,%r12
  14071e:	b8 01 00 00 00       	mov    $0x1,%eax
  140723:	eb 16                	jmp    14073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  140725:	49 89 cc             	mov    %rcx,%r12
  140728:	b8 00 00 00 00       	mov    $0x0,%eax
  14072d:	eb 0c                	jmp    14073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  14072f:	b8 00 00 00 00       	mov    $0x0,%eax
  140734:	eb 05                	jmp    14073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  140736:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  14073b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  140740:	85 c0                	test   %eax,%eax
  140742:	74 96                	je     1406da <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  140744:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  140748:	8b 01                	mov    (%rcx),%eax
  14074a:	83 f8 2f             	cmp    $0x2f,%eax
  14074d:	0f 87 72 ff ff ff    	ja     1406c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  140753:	89 c2                	mov    %eax,%edx
  140755:	48 03 51 10          	add    0x10(%rcx),%rdx
  140759:	83 c0 08             	add    $0x8,%eax
  14075c:	89 01                	mov    %eax,(%rcx)
  14075e:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  140761:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  140765:	85 f6                	test   %esi,%esi
  140767:	79 9e                	jns    140707 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  140769:	41 89 f1             	mov    %esi,%r9d
  14076c:	f7 de                	neg    %esi
  14076e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  140775:	bf a0 13 14 00       	mov    $0x1413a0,%edi
  14077a:	e9 5c 01 00 00       	jmpq   1408db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  14077f:	49 89 cc             	mov    %rcx,%r12
  140782:	b8 01 00 00 00       	mov    $0x1,%eax
  140787:	eb 16                	jmp    14079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  140789:	49 89 cc             	mov    %rcx,%r12
  14078c:	b8 00 00 00 00       	mov    $0x0,%eax
  140791:	eb 0c                	jmp    14079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  140793:	b8 00 00 00 00       	mov    $0x0,%eax
  140798:	eb 05                	jmp    14079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  14079a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  14079f:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1407a4:	eb 9a                	jmp    140740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1407a6:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1407a9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1407ad:	8b 01                	mov    (%rcx),%eax
  1407af:	83 f8 2f             	cmp    $0x2f,%eax
  1407b2:	77 21                	ja     1407d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1407b4:	89 c2                	mov    %eax,%edx
  1407b6:	48 03 51 10          	add    0x10(%rcx),%rdx
  1407ba:	83 c0 08             	add    $0x8,%eax
  1407bd:	89 01                	mov    %eax,(%rcx)
  1407bf:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1407c2:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1407c9:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1407ce:	eb 99                	jmp    140769 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  1407d0:	49 89 cc             	mov    %rcx,%r12
  1407d3:	eb d4                	jmp    1407a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  1407d5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1407d9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1407dd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1407e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1407e5:	eb d8                	jmp    1407bf <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  1407e7:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  1407ea:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1407ee:	8b 07                	mov    (%rdi),%eax
  1407f0:	83 f8 2f             	cmp    $0x2f,%eax
  1407f3:	77 1e                	ja     140813 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  1407f5:	89 c2                	mov    %eax,%edx
  1407f7:	48 03 57 10          	add    0x10(%rdi),%rdx
  1407fb:	83 c0 08             	add    $0x8,%eax
  1407fe:	89 07                	mov    %eax,(%rdi)
  140800:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  140803:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  140809:	e9 9a fc ff ff       	jmpq   1404a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  14080e:	49 89 cc             	mov    %rcx,%r12
  140811:	eb d7                	jmp    1407ea <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  140813:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  140817:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  14081b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  14081f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  140823:	eb db                	jmp    140800 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  140825:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  140828:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  14082c:	8b 01                	mov    (%rcx),%eax
  14082e:	83 f8 2f             	cmp    $0x2f,%eax
  140831:	77 18                	ja     14084b <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  140833:	89 c2                	mov    %eax,%edx
  140835:	48 03 51 10          	add    0x10(%rcx),%rdx
  140839:	83 c0 08             	add    $0x8,%eax
  14083c:	89 01                	mov    %eax,(%rcx)
  14083e:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  140841:	e9 ca fd ff ff       	jmpq   140610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  140846:	49 89 cc             	mov    %rcx,%r12
  140849:	eb dd                	jmp    140828 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  14084b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  14084f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  140853:	48 8d 42 08          	lea    0x8(%rdx),%rax
  140857:	48 89 47 08          	mov    %rax,0x8(%rdi)
  14085b:	eb e1                	jmp    14083e <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  14085d:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  140860:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  140864:	8b 07                	mov    (%rdi),%eax
  140866:	83 f8 2f             	cmp    $0x2f,%eax
  140869:	77 28                	ja     140893 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  14086b:	89 c2                	mov    %eax,%edx
  14086d:	48 03 57 10          	add    0x10(%rdi),%rdx
  140871:	83 c0 08             	add    $0x8,%eax
  140874:	89 07                	mov    %eax,(%rdi)
  140876:	8b 02                	mov    (%rdx),%eax
  140878:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  14087b:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  14087f:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  140883:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  140889:	e9 1a fc ff ff       	jmpq   1404a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  14088e:	49 89 cc             	mov    %rcx,%r12
  140891:	eb cd                	jmp    140860 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  140893:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  140897:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  14089b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  14089f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1408a3:	eb d1                	jmp    140876 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1408a5:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1408a8:	84 c0                	test   %al,%al
  1408aa:	0f 85 3b 01 00 00    	jne    1409eb <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1408b0:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1408b4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1408b8:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  1408bc:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1408c0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1408c6:	e9 dd fb ff ff       	jmpq   1404a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  1408cb:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  1408d1:	bf c0 13 14 00       	mov    $0x1413c0,%edi
        if (flags & FLAG_NUMERIC) {
  1408d6:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  1408db:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1408df:	4c 89 c1             	mov    %r8,%rcx
  1408e2:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  1408e6:	48 63 f6             	movslq %esi,%rsi
  1408e9:	48 83 eb 01          	sub    $0x1,%rbx
  1408ed:	48 89 c8             	mov    %rcx,%rax
  1408f0:	ba 00 00 00 00       	mov    $0x0,%edx
  1408f5:	48 f7 f6             	div    %rsi
  1408f8:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  1408fc:	88 13                	mov    %dl,(%rbx)
        val /= base;
  1408fe:	48 89 ca             	mov    %rcx,%rdx
  140901:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  140904:	48 39 d6             	cmp    %rdx,%rsi
  140907:	76 e0                	jbe    1408e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  140909:	e9 af fb ff ff       	jmpq   1404bd <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  14090e:	48 c7 45 a8 b9 0c 14 	movq   $0x140cb9,-0x58(%rbp)
  140915:	00 
            if (flags & FLAG_NEGATIVE) {
  140916:	41 f6 c5 80          	test   $0x80,%r13b
  14091a:	0f 85 c7 fb ff ff    	jne    1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  140920:	48 c7 45 a8 b7 0c 14 	movq   $0x140cb7,-0x58(%rbp)
  140927:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  140928:	41 f6 c5 10          	test   $0x10,%r13b
  14092c:	0f 85 b5 fb ff ff    	jne    1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  140932:	41 f6 c5 08          	test   $0x8,%r13b
  140936:	ba b6 0c 14 00       	mov    $0x140cb6,%edx
  14093b:	b8 b5 0c 14 00       	mov    $0x140cb5,%eax
  140940:	48 0f 44 c2          	cmove  %rdx,%rax
  140944:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  140948:	e9 9a fb ff ff       	jmpq   1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  14094d:	41 8d 41 10          	lea    0x10(%r9),%eax
  140951:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  140956:	0f 85 8b fb ff ff    	jne    1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  14095c:	4d 85 c0             	test   %r8,%r8
  14095f:	75 0d                	jne    14096e <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  140961:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  140968:	0f 84 79 fb ff ff    	je     1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  14096e:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  140972:	ba b2 0c 14 00       	mov    $0x140cb2,%edx
  140977:	b8 bb 0c 14 00       	mov    $0x140cbb,%eax
  14097c:	48 0f 44 c2          	cmove  %rdx,%rax
  140980:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  140984:	e9 5e fb ff ff       	jmpq   1404e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  140989:	48 89 df             	mov    %rbx,%rdi
  14098c:	e8 7f f7 ff ff       	callq  140110 <strlen>
  140991:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  140994:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  140998:	0f 84 76 fb ff ff    	je     140514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  14099e:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  1409a2:	0f 84 6c fb ff ff    	je     140514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  1409a8:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1409ab:	89 ca                	mov    %ecx,%edx
  1409ad:	29 c2                	sub    %eax,%edx
  1409af:	39 c1                	cmp    %eax,%ecx
  1409b1:	b8 00 00 00 00       	mov    $0x0,%eax
  1409b6:	0f 4f c2             	cmovg  %edx,%eax
  1409b9:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1409bc:	e9 69 fb ff ff       	jmpq   14052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  1409c1:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1409c5:	e8 46 f7 ff ff       	callq  140110 <strlen>
  1409ca:	8b 75 a0             	mov    -0x60(%rbp),%esi
  1409cd:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  1409d0:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1409d3:	89 f9                	mov    %edi,%ecx
  1409d5:	29 f1                	sub    %esi,%ecx
  1409d7:	29 c1                	sub    %eax,%ecx
  1409d9:	39 fa                	cmp    %edi,%edx
  1409db:	b8 00 00 00 00       	mov    $0x0,%eax
  1409e0:	0f 4c c1             	cmovl  %ecx,%eax
  1409e3:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1409e6:	e9 3f fb ff ff       	jmpq   14052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  1409eb:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  1409ee:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1409f1:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1409f5:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1409f9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1409ff:	e9 a4 fa ff ff       	jmpq   1404a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  140a04:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  140a0a:	e9 a4 f8 ff ff       	jmpq   1402b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  140a0f:	8d 50 bd             	lea    -0x43(%rax),%edx
  140a12:	80 fa 35             	cmp    $0x35,%dl
  140a15:	77 d7                	ja     1409ee <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  140a17:	0f b6 d2             	movzbl %dl,%edx
  140a1a:	3e ff 24 d5 e0 11 14 	notrack jmpq *0x1411e0(,%rdx,8)
  140a21:	00 
        }
    }
}
  140a22:	48 83 c4 58          	add    $0x58,%rsp
  140a26:	5b                   	pop    %rbx
  140a27:	41 5c                	pop    %r12
  140a29:	41 5d                	pop    %r13
  140a2b:	41 5e                	pop    %r14
  140a2d:	41 5f                	pop    %r15
  140a2f:	5d                   	pop    %rbp
  140a30:	c3                   	retq   
  140a31:	90                   	nop

0000000000140a32 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  140a32:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  140a36:	48 c7 07 48 14 14 00 	movq   $0x141448,(%rdi)
  140a3d:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  140a44:	00 
  140a45:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  140a48:	85 f6                	test   %esi,%esi
  140a4a:	78 18                	js     140a64 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  140a4c:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  140a52:	7f 0f                	jg     140a63 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  140a54:	48 63 f6             	movslq %esi,%rsi
  140a57:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  140a5e:	00 
  140a5f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  140a63:	c3                   	retq   
        cell_ += cursorpos;
  140a64:	8b 05 92 85 f7 ff    	mov    -0x87a6e(%rip),%eax        # b8ffc <cursorpos>
  140a6a:	48 98                	cltq   
  140a6c:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  140a73:	00 
  140a74:	48 89 47 08          	mov    %rax,0x8(%rdi)
  140a78:	c3                   	retq   
  140a79:	90                   	nop

0000000000140a7a <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  140a7a:	f3 0f 1e fa          	endbr64 
  140a7e:	55                   	push   %rbp
  140a7f:	48 89 e5             	mov    %rsp,%rbp
  140a82:	53                   	push   %rbx
  140a83:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  140a87:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  140a8e:	00 
  140a8f:	72 18                	jb     140aa9 <console_printer::scroll()+0x2f>
  140a91:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  140a94:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  140a98:	75 23                	jne    140abd <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  140a9a:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  140aa1:	00 
    }
}
  140aa2:	48 83 c4 08          	add    $0x8,%rsp
  140aa6:	5b                   	pop    %rbx
  140aa7:	5d                   	pop    %rbp
  140aa8:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  140aa9:	ba d8 13 14 00       	mov    $0x1413d8,%edx
  140aae:	be 1f 02 00 00       	mov    $0x21f,%esi
  140ab3:	bf ab 0c 14 00       	mov    $0x140cab,%edi
  140ab8:	e8 a6 01 00 00       	callq  140c63 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  140abd:	ba 00 0f 00 00       	mov    $0xf00,%edx
  140ac2:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  140ac7:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  140acc:	e8 d2 f5 ff ff       	callq  1400a3 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  140ad1:	ba a0 00 00 00       	mov    $0xa0,%edx
  140ad6:	be 00 00 00 00       	mov    $0x0,%esi
  140adb:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  140ae0:	e8 0b f6 ff ff       	callq  1400f0 <memset>
        cell_ -= CONSOLE_COLUMNS;
  140ae5:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  140aec:	00 
  140aed:	eb b3                	jmp    140aa2 <console_printer::scroll()+0x28>
  140aef:	90                   	nop

0000000000140af0 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  140af0:	f3 0f 1e fa          	endbr64 
  140af4:	55                   	push   %rbp
  140af5:	48 89 e5             	mov    %rsp,%rbp
  140af8:	41 55                	push   %r13
  140afa:	41 54                	push   %r12
  140afc:	53                   	push   %rbx
  140afd:	48 83 ec 08          	sub    $0x8,%rsp
  140b01:	48 89 fb             	mov    %rdi,%rbx
  140b04:	41 89 f5             	mov    %esi,%r13d
  140b07:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  140b0a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  140b0e:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  140b14:	72 14                	jb     140b2a <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  140b16:	48 89 df             	mov    %rbx,%rdi
  140b19:	e8 5c ff ff ff       	callq  140a7a <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  140b1e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  140b22:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  140b28:	73 ec                	jae    140b16 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  140b2a:	41 80 fd 0a          	cmp    $0xa,%r13b
  140b2e:	74 1e                	je     140b4e <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  140b30:	48 8d 50 02          	lea    0x2(%rax),%rdx
  140b34:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  140b38:	45 0f b6 ed          	movzbl %r13b,%r13d
  140b3c:	45 09 ec             	or     %r13d,%r12d
  140b3f:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  140b43:	48 83 c4 08          	add    $0x8,%rsp
  140b47:	5b                   	pop    %rbx
  140b48:	41 5c                	pop    %r12
  140b4a:	41 5d                	pop    %r13
  140b4c:	5d                   	pop    %rbp
  140b4d:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  140b4e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  140b54:	48 89 c1             	mov    %rax,%rcx
  140b57:	48 89 c6             	mov    %rax,%rsi
  140b5a:	48 d1 fe             	sar    %rsi
  140b5d:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  140b64:	66 66 66 
  140b67:	48 89 f0             	mov    %rsi,%rax
  140b6a:	48 f7 ea             	imul   %rdx
  140b6d:	48 c1 fa 05          	sar    $0x5,%rdx
  140b71:	48 89 c8             	mov    %rcx,%rax
  140b74:	48 c1 f8 3f          	sar    $0x3f,%rax
  140b78:	48 29 c2             	sub    %rax,%rdx
  140b7b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  140b7f:	48 c1 e0 04          	shl    $0x4,%rax
  140b83:	89 f2                	mov    %esi,%edx
  140b85:	29 c2                	sub    %eax,%edx
  140b87:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  140b89:	41 83 cc 20          	or     $0x20,%r12d
  140b8d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  140b91:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  140b95:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  140b99:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  140b9d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  140ba0:	83 f8 50             	cmp    $0x50,%eax
  140ba3:	75 e8                	jne    140b8d <console_printer::putc(unsigned char, int)+0x9d>
  140ba5:	eb 9c                	jmp    140b43 <console_printer::putc(unsigned char, int)+0x53>
  140ba7:	90                   	nop

0000000000140ba8 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  140ba8:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  140bac:	48 8b 47 08          	mov    0x8(%rdi),%rax
  140bb0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  140bb6:	48 d1 f8             	sar    %rax
  140bb9:	89 05 3d 84 f7 ff    	mov    %eax,-0x87bc3(%rip)        # b8ffc <cursorpos>
}
  140bbf:	c3                   	retq   

0000000000140bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  140bc0:	f3 0f 1e fa          	endbr64 
  140bc4:	55                   	push   %rbp
  140bc5:	48 89 e5             	mov    %rsp,%rbp
  140bc8:	41 56                	push   %r14
  140bca:	41 55                	push   %r13
  140bcc:	41 54                	push   %r12
  140bce:	53                   	push   %rbx
  140bcf:	48 83 ec 20          	sub    $0x20,%rsp
  140bd3:	89 fb                	mov    %edi,%ebx
  140bd5:	41 89 f4             	mov    %esi,%r12d
  140bd8:	49 89 d5             	mov    %rdx,%r13
  140bdb:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  140bde:	89 fa                	mov    %edi,%edx
  140be0:	c1 ea 1f             	shr    $0x1f,%edx
  140be3:	89 fe                	mov    %edi,%esi
  140be5:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  140be9:	e8 44 fe ff ff       	callq  140a32 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  140bee:	4c 89 f1             	mov    %r14,%rcx
  140bf1:	4c 89 ea             	mov    %r13,%rdx
  140bf4:	44 89 e6             	mov    %r12d,%esi
  140bf7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  140bfb:	e8 38 f6 ff ff       	callq  140238 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  140c00:	85 db                	test   %ebx,%ebx
  140c02:	78 1a                	js     140c1e <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  140c04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  140c08:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  140c0e:	48 d1 f8             	sar    %rax
}
  140c11:	48 83 c4 20          	add    $0x20,%rsp
  140c15:	5b                   	pop    %rbx
  140c16:	41 5c                	pop    %r12
  140c18:	41 5d                	pop    %r13
  140c1a:	41 5e                	pop    %r14
  140c1c:	5d                   	pop    %rbp
  140c1d:	c3                   	retq   
        cp.move_cursor();
  140c1e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  140c22:	e8 81 ff ff ff       	callq  140ba8 <console_printer::move_cursor()>
  140c27:	eb db                	jmp    140c04 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000140c29 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  140c29:	f3 0f 1e fa          	endbr64 
  140c2d:	55                   	push   %rbp
  140c2e:	48 89 e5             	mov    %rsp,%rbp
  140c31:	48 83 ec 50          	sub    $0x50,%rsp
  140c35:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  140c39:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  140c3d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  140c41:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  140c48:	48 8d 45 10          	lea    0x10(%rbp),%rax
  140c4c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  140c50:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  140c54:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  140c58:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  140c5c:	e8 5f ff ff ff       	callq  140bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  140c61:	c9                   	leaveq 
  140c62:	c3                   	retq   

0000000000140c63 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  140c63:	f3 0f 1e fa          	endbr64 
  140c67:	55                   	push   %rbp
  140c68:	48 89 e5             	mov    %rsp,%rbp
  140c6b:	48 89 f9             	mov    %rdi,%rcx
  140c6e:	41 89 f0             	mov    %esi,%r8d
  140c71:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  140c74:	ba 50 14 14 00       	mov    $0x141450,%edx
  140c79:	be 00 c0 00 00       	mov    $0xc000,%esi
  140c7e:	bf 30 07 00 00       	mov    $0x730,%edi
  140c83:	b0 00                	mov    $0x0,%al
  140c85:	e8 9f ff ff ff       	callq  140c29 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  140c8a:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  140c8f:	bf 00 00 00 00       	mov    $0x0,%edi
  140c94:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  140c96:	eb fe                	jmp    140c96 <assert_fail(char const*, int, char const*)+0x33>
