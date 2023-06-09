
obj/p-allocator.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:

// These global variables go on the data page.
uint8_t* heap_top;
uint8_t* stack_bottom;

void process_main() {
  100000:	f3 0f 1e fa          	endbr64 
  100004:	55                   	push   %rbp
  100005:	48 89 e5             	mov    %rsp,%rbp
  100008:	41 54                	push   %r12
  10000a:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  10000b:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  100010:	0f 05                	syscall 
    return rax;
  100012:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100015:	41 89 c4             	mov    %eax,%r12d
    pid_t p = sys_getpid();
    srand(p);
  100018:	89 c7                	mov    %eax,%edi
  10001a:	e8 af 01 00 00       	callq  1001ce <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  10001f:	b8 1b 30 10 00       	mov    $0x10301b,%eax

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  100024:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  10002a:	48 89 05 d7 1f 00 00 	mov    %rax,0x1fd7(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  100031:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  100034:	48 83 e8 01          	sub    $0x1,%rax
  100038:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  10003e:	48 89 05 bb 1f 00 00 	mov    %rax,0x1fbb(%rip)        # 102000 <stack_bottom>
  100045:	eb 07                	jmp    10004e <process_main()+0x4e>
    register uintptr_t rax asm("rax") = syscallno;
  100047:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  10004c:	0f 05                	syscall 

    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  10004e:	be 63 00 00 00       	mov    $0x63,%esi
  100053:	bf 00 00 00 00       	mov    $0x0,%edi
  100058:	e8 90 01 00 00       	callq  1001ed <rand(int, int)>
  10005d:	44 39 e0             	cmp    %r12d,%eax
  100060:	7d e5                	jge    100047 <process_main()+0x47>
            if (heap_top == stack_bottom
  100062:	48 8b 3d 9f 1f 00 00 	mov    0x1f9f(%rip),%rdi        # 102008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  100069:	48 3b 3d 90 1f 00 00 	cmp    0x1f90(%rip),%rdi        # 102000 <stack_bottom>
  100070:	74 28                	je     10009a <process_main()+0x9a>
    register uintptr_t rax asm("rax") = syscallno;
  100072:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100077:	0f 05                	syscall 
  100079:	85 c0                	test   %eax,%eax
  10007b:	78 1d                	js     10009a <process_main()+0x9a>
                break;
            }
            *heap_top = p;               // check we can write to new page
  10007d:	48 8b 05 84 1f 00 00 	mov    0x1f84(%rip),%rax        # 102008 <heap_top>
  100084:	88 18                	mov    %bl,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  100086:	66 89 1d 11 8f fb ff 	mov    %bx,-0x470ef(%rip)        # b8f9e <console+0xf9e>
            heap_top += PAGESIZE;
  10008d:	48 81 05 70 1f 00 00 	addq   $0x1000,0x1f70(%rip)        # 102008 <heap_top>
  100094:	00 10 00 00 
  100098:	eb ad                	jmp    100047 <process_main()+0x47>
    register uintptr_t rax asm("rax") = syscallno;
  10009a:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  10009f:	0f 05                	syscall 
    return rax;
  1000a1:	eb f7                	jmp    10009a <process_main()+0x9a>

00000000001000a3 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  1000a3:	f3 0f 1e fa          	endbr64 
  1000a7:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  1000aa:	48 39 fe             	cmp    %rdi,%rsi
  1000ad:	73 09                	jae    1000b8 <memmove+0x15>
  1000af:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  1000b3:	48 39 cf             	cmp    %rcx,%rdi
  1000b6:	72 1d                	jb     1000d5 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  1000b8:	b9 00 00 00 00       	mov    $0x0,%ecx
  1000bd:	48 85 d2             	test   %rdx,%rdx
  1000c0:	74 12                	je     1000d4 <memmove+0x31>
            *d++ = *s++;
  1000c2:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  1000c6:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  1000ca:	48 83 c1 01          	add    $0x1,%rcx
  1000ce:	48 39 d1             	cmp    %rdx,%rcx
  1000d1:	75 ef                	jne    1000c2 <memmove+0x1f>
        }
    }
    return dst;
}
  1000d3:	c3                   	retq   
  1000d4:	c3                   	retq   
        while (n-- > 0) {
  1000d5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  1000d9:	48 85 d2             	test   %rdx,%rdx
  1000dc:	74 f5                	je     1000d3 <memmove+0x30>
            *--d = *--s;
  1000de:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  1000e2:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  1000e5:	48 83 e9 01          	sub    $0x1,%rcx
  1000e9:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  1000ed:	75 ef                	jne    1000de <memmove+0x3b>
  1000ef:	c3                   	retq   

00000000001000f0 <memset>:

void* memset(void* v, int c, size_t n) {
  1000f0:	f3 0f 1e fa          	endbr64 
  1000f4:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  1000f7:	48 85 d2             	test   %rdx,%rdx
  1000fa:	74 13                	je     10010f <memset+0x1f>
  1000fc:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  100100:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  100103:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  100106:	48 83 c2 01          	add    $0x1,%rdx
  10010a:	48 39 d1             	cmp    %rdx,%rcx
  10010d:	75 f4                	jne    100103 <memset+0x13>
    }
    return v;
}
  10010f:	c3                   	retq   

0000000000100110 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  100110:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  100114:	80 3f 00             	cmpb   $0x0,(%rdi)
  100117:	74 10                	je     100129 <strlen+0x19>
  100119:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  10011e:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  100122:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100126:	75 f6                	jne    10011e <strlen+0xe>
  100128:	c3                   	retq   
  100129:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  10012e:	c3                   	retq   

000000000010012f <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  10012f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100133:	48 85 f6             	test   %rsi,%rsi
  100136:	74 15                	je     10014d <strnlen+0x1e>
  100138:	b8 00 00 00 00       	mov    $0x0,%eax
  10013d:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  100141:	74 0d                	je     100150 <strnlen+0x21>
        ++n;
  100143:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  100147:	48 39 c6             	cmp    %rax,%rsi
  10014a:	75 f1                	jne    10013d <strnlen+0xe>
  10014c:	c3                   	retq   
  10014d:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  100150:	c3                   	retq   

0000000000100151 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  100151:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  100155:	0f b6 07             	movzbl (%rdi),%eax
  100158:	84 c0                	test   %al,%al
  10015a:	74 10                	je     10016c <strchr+0x1b>
  10015c:	40 38 f0             	cmp    %sil,%al
  10015f:	74 18                	je     100179 <strchr+0x28>
        ++s;
  100161:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  100165:	0f b6 07             	movzbl (%rdi),%eax
  100168:	84 c0                	test   %al,%al
  10016a:	75 f0                	jne    10015c <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  10016c:	40 84 f6             	test   %sil,%sil
  10016f:	b8 00 00 00 00       	mov    $0x0,%eax
  100174:	48 0f 44 c7          	cmove  %rdi,%rax
  100178:	c3                   	retq   
  100179:	48 89 f8             	mov    %rdi,%rax
    }
}
  10017c:	c3                   	retq   

000000000010017d <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  10017d:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  100181:	83 3d 90 1e 00 00 00 	cmpl   $0x0,0x1e90(%rip)        # 102018 <rand_seed_set>
  100188:	74 27                	je     1001b1 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  10018a:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100191:	f4 51 58 
  100194:	48 0f af 05 74 1e 00 	imul   0x1e74(%rip),%rax        # 102010 <rand_seed>
  10019b:	00 
  10019c:	48 83 c0 01          	add    $0x1,%rax
  1001a0:	48 89 05 69 1e 00 00 	mov    %rax,0x1e69(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  1001a7:	48 c1 e8 20          	shr    $0x20,%rax
  1001ab:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  1001b0:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  1001b1:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  1001b8:	87 d4 30 
  1001bb:	48 89 05 4e 1e 00 00 	mov    %rax,0x1e4e(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  1001c2:	c7 05 4c 1e 00 00 01 	movl   $0x1,0x1e4c(%rip)        # 102018 <rand_seed_set>
  1001c9:	00 00 00 
}
  1001cc:	eb bc                	jmp    10018a <rand()+0xd>

00000000001001ce <srand(unsigned int)>:
void srand(unsigned seed) {
  1001ce:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  1001d2:	89 f8                	mov    %edi,%eax
  1001d4:	48 c1 e7 20          	shl    $0x20,%rdi
  1001d8:	48 09 c7             	or     %rax,%rdi
  1001db:	48 89 3d 2e 1e 00 00 	mov    %rdi,0x1e2e(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  1001e2:	c7 05 2c 1e 00 00 01 	movl   $0x1,0x1e2c(%rip)        # 102018 <rand_seed_set>
  1001e9:	00 00 00 
}
  1001ec:	c3                   	retq   

00000000001001ed <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  1001ed:	f3 0f 1e fa          	endbr64 
  1001f1:	55                   	push   %rbp
  1001f2:	48 89 e5             	mov    %rsp,%rbp
  1001f5:	41 54                	push   %r12
  1001f7:	53                   	push   %rbx
    assert(min <= max);
  1001f8:	39 f7                	cmp    %esi,%edi
  1001fa:	7f 27                	jg     100223 <rand(int, int)+0x36>
  1001fc:	41 89 fc             	mov    %edi,%r12d
  1001ff:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100201:	e8 77 ff ff ff       	callq  10017d <rand()>
  100206:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100208:	44 29 e3             	sub    %r12d,%ebx
  10020b:	8d 43 01             	lea    0x1(%rbx),%eax
  10020e:	48 98                	cltq   
    unsigned long r = rand();
  100210:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  100213:	48 0f af c3          	imul   %rbx,%rax
  100217:	48 c1 e8 1f          	shr    $0x1f,%rax
  10021b:	44 01 e0             	add    %r12d,%eax
}
  10021e:	5b                   	pop    %rbx
  10021f:	41 5c                	pop    %r12
  100221:	5d                   	pop    %rbp
  100222:	c3                   	retq   
    assert(min <= max);
  100223:	ba a0 0c 10 00       	mov    $0x100ca0,%edx
  100228:	be f2 00 00 00       	mov    $0xf2,%esi
  10022d:	bf ab 0c 10 00       	mov    $0x100cab,%edi
  100232:	e8 2c 0a 00 00       	callq  100c63 <assert_fail(char const*, int, char const*)>
  100237:	90                   	nop

0000000000100238 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  100238:	f3 0f 1e fa          	endbr64 
  10023c:	55                   	push   %rbp
  10023d:	48 89 e5             	mov    %rsp,%rbp
  100240:	41 57                	push   %r15
  100242:	41 56                	push   %r14
  100244:	41 55                	push   %r13
  100246:	41 54                	push   %r12
  100248:	53                   	push   %rbx
  100249:	48 83 ec 58          	sub    $0x58,%rsp
  10024d:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  100251:	0f b6 02             	movzbl (%rdx),%eax
  100254:	84 c0                	test   %al,%al
  100256:	0f 84 c6 07 00 00    	je     100a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  10025c:	49 89 fe             	mov    %rdi,%r14
  10025f:	41 89 f7             	mov    %esi,%r15d
  100262:	48 89 d3             	mov    %rdx,%rbx
  100265:	e9 b9 03 00 00       	jmpq   100623 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  10026a:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  10026e:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  100272:	84 db                	test   %bl,%bl
  100274:	0f 84 8a 07 00 00    	je     100a04 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  10027a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  100280:	0f be f3             	movsbl %bl,%esi
  100283:	bf 90 13 10 00       	mov    $0x101390,%edi
  100288:	e8 c4 fe ff ff       	callq  100151 <strchr>
  10028d:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  100290:	48 85 c0             	test   %rax,%rax
  100293:	74 74                	je     100309 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  100295:	48 81 e9 90 13 10 00 	sub    $0x101390,%rcx
  10029c:	b8 01 00 00 00       	mov    $0x1,%eax
  1002a1:	d3 e0                	shl    %cl,%eax
  1002a3:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  1002a6:	49 83 c4 01          	add    $0x1,%r12
  1002aa:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  1002af:	84 db                	test   %bl,%bl
  1002b1:	75 cd                	jne    100280 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  1002b3:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  1002ba:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  1002c1:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  1002c6:	0f 84 cc 00 00 00    	je     100398 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  1002cc:	41 0f b6 04 24       	movzbl (%r12),%eax
  1002d1:	3c 6c                	cmp    $0x6c,%al
  1002d3:	0f 84 54 01 00 00    	je     10042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1002d9:	0f 8f 42 01 00 00    	jg     100421 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  1002df:	3c 68                	cmp    $0x68,%al
  1002e1:	0f 85 68 01 00 00    	jne    10044f <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  1002e7:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  1002ec:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1002f2:	8d 50 bd             	lea    -0x43(%rax),%edx
  1002f5:	80 fa 35             	cmp    $0x35,%dl
  1002f8:	0f 87 aa 05 00 00    	ja     1008a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1002fe:	0f b6 d2             	movzbl %dl,%edx
  100301:	3e ff 24 d5 d0 0c 10 	notrack jmpq *0x100cd0(,%rdx,8)
  100308:	00 
        if (*format >= '1' && *format <= '9') {
  100309:	8d 43 cf             	lea    -0x31(%rbx),%eax
  10030c:	3c 08                	cmp    $0x8,%al
  10030e:	77 35                	ja     100345 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100310:	41 0f b6 04 24       	movzbl (%r12),%eax
  100315:	8d 50 d0             	lea    -0x30(%rax),%edx
  100318:	80 fa 09             	cmp    $0x9,%dl
  10031b:	77 63                	ja     100380 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  10031d:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  100322:	49 83 c4 01          	add    $0x1,%r12
  100326:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  100329:	0f be c0             	movsbl %al,%eax
  10032c:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100330:	41 0f b6 04 24       	movzbl (%r12),%eax
  100335:	8d 48 d0             	lea    -0x30(%rax),%ecx
  100338:	80 f9 09             	cmp    $0x9,%cl
  10033b:	76 e5                	jbe    100322 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  10033d:	89 55 98             	mov    %edx,-0x68(%rbp)
  100340:	e9 75 ff ff ff       	jmpq   1002ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  100345:	80 fb 2a             	cmp    $0x2a,%bl
  100348:	75 42                	jne    10038c <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  10034a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10034e:	8b 07                	mov    (%rdi),%eax
  100350:	83 f8 2f             	cmp    $0x2f,%eax
  100353:	77 19                	ja     10036e <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  100355:	89 c2                	mov    %eax,%edx
  100357:	48 03 57 10          	add    0x10(%rdi),%rdx
  10035b:	83 c0 08             	add    $0x8,%eax
  10035e:	89 07                	mov    %eax,(%rdi)
  100360:	8b 02                	mov    (%rdx),%eax
  100362:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  100365:	49 83 c4 01          	add    $0x1,%r12
  100369:	e9 4c ff ff ff       	jmpq   1002ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  10036e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100372:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100376:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10037a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10037e:	eb e0                	jmp    100360 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100380:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  100387:	e9 2e ff ff ff       	jmpq   1002ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  10038c:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  100393:	e9 22 ff ff ff       	jmpq   1002ba <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  100398:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  10039d:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1003a3:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1003a6:	80 f9 09             	cmp    $0x9,%cl
  1003a9:	76 13                	jbe    1003be <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  1003ab:	3c 2a                	cmp    $0x2a,%al
  1003ad:	74 32                	je     1003e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  1003af:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  1003b2:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  1003b9:	e9 0e ff ff ff       	jmpq   1002cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1003be:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  1003c3:	48 83 c2 01          	add    $0x1,%rdx
  1003c7:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  1003ca:	0f be c0             	movsbl %al,%eax
  1003cd:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  1003d1:	0f b6 02             	movzbl (%rdx),%eax
  1003d4:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1003d7:	80 f9 09             	cmp    $0x9,%cl
  1003da:	76 e7                	jbe    1003c3 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  1003dc:	49 89 d4             	mov    %rdx,%r12
  1003df:	eb 1c                	jmp    1003fd <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  1003e1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1003e5:	8b 01                	mov    (%rcx),%eax
  1003e7:	83 f8 2f             	cmp    $0x2f,%eax
  1003ea:	77 23                	ja     10040f <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  1003ec:	89 c2                	mov    %eax,%edx
  1003ee:	48 03 51 10          	add    0x10(%rcx),%rdx
  1003f2:	83 c0 08             	add    $0x8,%eax
  1003f5:	89 01                	mov    %eax,(%rcx)
  1003f7:	8b 32                	mov    (%rdx),%esi
                ++format;
  1003f9:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  1003fd:	85 f6                	test   %esi,%esi
  1003ff:	b8 00 00 00 00       	mov    $0x0,%eax
  100404:	0f 49 c6             	cmovns %esi,%eax
  100407:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  10040a:	e9 bd fe ff ff       	jmpq   1002cc <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  10040f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100413:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100417:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10041b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10041f:	eb d6                	jmp    1003f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  100421:	3c 74                	cmp    $0x74,%al
  100423:	74 08                	je     10042d <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  100425:	3c 7a                	cmp    $0x7a,%al
  100427:	0f 85 e2 05 00 00    	jne    100a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  10042d:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  100432:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100438:	8d 50 bd             	lea    -0x43(%rax),%edx
  10043b:	80 fa 35             	cmp    $0x35,%dl
  10043e:	0f 87 64 04 00 00    	ja     1008a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100444:	0f b6 d2             	movzbl %dl,%edx
  100447:	3e ff 24 d5 80 0e 10 	notrack jmpq *0x100e80(,%rdx,8)
  10044e:	00 
  10044f:	8d 50 bd             	lea    -0x43(%rax),%edx
  100452:	80 fa 35             	cmp    $0x35,%dl
  100455:	0f 87 4a 04 00 00    	ja     1008a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  10045b:	0f b6 d2             	movzbl %dl,%edx
  10045e:	3e ff 24 d5 30 10 10 	notrack jmpq *0x101030(,%rdx,8)
  100465:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100466:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10046a:	8b 07                	mov    (%rdi),%eax
  10046c:	83 f8 2f             	cmp    $0x2f,%eax
  10046f:	0f 87 c9 01 00 00    	ja     10063e <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  100475:	89 c2                	mov    %eax,%edx
  100477:	48 03 57 10          	add    0x10(%rdi),%rdx
  10047b:	83 c0 08             	add    $0x8,%eax
  10047e:	89 07                	mov    %eax,(%rdi)
  100480:	48 8b 12             	mov    (%rdx),%rdx
  100483:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  100486:	48 89 d0             	mov    %rdx,%rax
  100489:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  10048d:	49 89 d0             	mov    %rdx,%r8
  100490:	49 f7 d8             	neg    %r8
  100493:	25 80 00 00 00       	and    $0x80,%eax
  100498:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  10049c:	41 09 c5             	or     %eax,%r13d
  10049f:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  1004a3:	bb b6 0c 10 00       	mov    $0x100cb6,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  1004a8:	44 89 e8             	mov    %r13d,%eax
  1004ab:	83 e0 20             	and    $0x20,%eax
  1004ae:	89 45 9c             	mov    %eax,-0x64(%rbp)
  1004b1:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  1004b7:	0f 85 0e 04 00 00    	jne    1008cb <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  1004bd:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  1004c1:	44 89 e8             	mov    %r13d,%eax
  1004c4:	83 e0 60             	and    $0x60,%eax
  1004c7:	83 f8 60             	cmp    $0x60,%eax
  1004ca:	0f 84 3e 04 00 00    	je     10090e <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1004d0:	44 89 e8             	mov    %r13d,%eax
  1004d3:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  1004d6:	48 c7 45 a8 b6 0c 10 	movq   $0x100cb6,-0x58(%rbp)
  1004dd:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  1004de:	83 f8 21             	cmp    $0x21,%eax
  1004e1:	0f 84 66 04 00 00    	je     10094d <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  1004e7:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1004ea:	89 c8                	mov    %ecx,%eax
  1004ec:	f7 d0                	not    %eax
  1004ee:	c1 e8 1f             	shr    $0x1f,%eax
  1004f1:	89 45 88             	mov    %eax,-0x78(%rbp)
  1004f4:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1004f8:	0f 85 8b 04 00 00    	jne    100989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  1004fe:	84 c0                	test   %al,%al
  100500:	0f 84 83 04 00 00    	je     100989 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  100506:	48 63 f1             	movslq %ecx,%rsi
  100509:	48 89 df             	mov    %rbx,%rdi
  10050c:	e8 1e fc ff ff       	callq  10012f <strnlen>
  100511:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  100514:	8b 45 8c             	mov    -0x74(%rbp),%eax
  100517:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  10051a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  100521:	83 f8 22             	cmp    $0x22,%eax
  100524:	0f 84 97 04 00 00    	je     1009c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  10052a:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  10052e:	e8 dd fb ff ff       	callq  100110 <strlen>
  100533:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  100536:	03 55 a0             	add    -0x60(%rbp),%edx
  100539:	8b 7d 98             	mov    -0x68(%rbp),%edi
  10053c:	29 d7                	sub    %edx,%edi
  10053e:	89 fa                	mov    %edi,%edx
  100540:	29 c2                	sub    %eax,%edx
  100542:	89 55 98             	mov    %edx,-0x68(%rbp)
  100545:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100548:	41 f6 c5 04          	test   $0x4,%r13b
  10054c:	75 32                	jne    100580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  10054e:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100551:	85 d2                	test   %edx,%edx
  100553:	7e 2b                	jle    100580 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  100555:	49 8b 06             	mov    (%r14),%rax
  100558:	44 89 fa             	mov    %r15d,%edx
  10055b:	be 20 00 00 00       	mov    $0x20,%esi
  100560:	4c 89 f7             	mov    %r14,%rdi
  100563:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  100565:	41 83 ed 01          	sub    $0x1,%r13d
  100569:	45 85 ed             	test   %r13d,%r13d
  10056c:	7f e7                	jg     100555 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  10056e:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100571:	85 ff                	test   %edi,%edi
  100573:	b8 01 00 00 00       	mov    $0x1,%eax
  100578:	0f 4f c7             	cmovg  %edi,%eax
  10057b:	29 c7                	sub    %eax,%edi
  10057d:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  100580:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  100584:	0f b6 00             	movzbl (%rax),%eax
  100587:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  10058b:	84 c0                	test   %al,%al
  10058d:	74 1b                	je     1005aa <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  10058f:	0f b6 f0             	movzbl %al,%esi
  100592:	49 8b 06             	mov    (%r14),%rax
  100595:	44 89 fa             	mov    %r15d,%edx
  100598:	4c 89 f7             	mov    %r14,%rdi
  10059b:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  10059d:	49 83 c5 01          	add    $0x1,%r13
  1005a1:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  1005a6:	84 c0                	test   %al,%al
  1005a8:	75 e5                	jne    10058f <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  1005aa:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  1005ae:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  1005b2:	7e 16                	jle    1005ca <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  1005b4:	49 8b 06             	mov    (%r14),%rax
  1005b7:	44 89 fa             	mov    %r15d,%edx
  1005ba:	be 30 00 00 00       	mov    $0x30,%esi
  1005bf:	4c 89 f7             	mov    %r14,%rdi
  1005c2:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  1005c4:	41 83 ed 01          	sub    $0x1,%r13d
  1005c8:	75 ea                	jne    1005b4 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  1005ca:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  1005ce:	7e 22                	jle    1005f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  1005d0:	8b 45 a0             	mov    -0x60(%rbp),%eax
  1005d3:	8d 40 ff             	lea    -0x1(%rax),%eax
  1005d6:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  1005db:	0f b6 33             	movzbl (%rbx),%esi
  1005de:	49 8b 06             	mov    (%r14),%rax
  1005e1:	44 89 fa             	mov    %r15d,%edx
  1005e4:	4c 89 f7             	mov    %r14,%rdi
  1005e7:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  1005e9:	48 83 c3 01          	add    $0x1,%rbx
  1005ed:	4c 39 eb             	cmp    %r13,%rbx
  1005f0:	75 e9                	jne    1005db <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  1005f2:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  1005f5:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  1005f9:	7e 15                	jle    100610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  1005fb:	49 8b 06             	mov    (%r14),%rax
  1005fe:	44 89 fa             	mov    %r15d,%edx
  100601:	be 20 00 00 00       	mov    $0x20,%esi
  100606:	4c 89 f7             	mov    %r14,%rdi
  100609:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  10060b:	83 eb 01             	sub    $0x1,%ebx
  10060e:	75 eb                	jne    1005fb <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  100610:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  100615:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  10061b:	84 c0                	test   %al,%al
  10061d:	0f 84 ff 03 00 00    	je     100a22 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  100623:	3c 25                	cmp    $0x25,%al
  100625:	0f 84 3f fc ff ff    	je     10026a <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  10062b:	0f b6 f0             	movzbl %al,%esi
  10062e:	49 8b 06             	mov    (%r14),%rax
  100631:	44 89 fa             	mov    %r15d,%edx
  100634:	4c 89 f7             	mov    %r14,%rdi
  100637:	ff 10                	callq  *(%rax)
            continue;
  100639:	49 89 dc             	mov    %rbx,%r12
  10063c:	eb d2                	jmp    100610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  10063e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100642:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100646:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10064a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10064e:	e9 2d fe ff ff       	jmpq   100480 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  100653:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  100656:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10065a:	8b 01                	mov    (%rcx),%eax
  10065c:	83 f8 2f             	cmp    $0x2f,%eax
  10065f:	77 13                	ja     100674 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  100661:	89 c2                	mov    %eax,%edx
  100663:	48 03 51 10          	add    0x10(%rcx),%rdx
  100667:	83 c0 08             	add    $0x8,%eax
  10066a:	89 01                	mov    %eax,(%rcx)
  10066c:	48 63 12             	movslq (%rdx),%rdx
  10066f:	e9 12 fe ff ff       	jmpq   100486 <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  100674:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100678:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10067c:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100680:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100684:	eb e6                	jmp    10066c <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  100686:	49 89 cc             	mov    %rcx,%r12
  100689:	b8 01 00 00 00       	mov    $0x1,%eax
  10068e:	be 0a 00 00 00       	mov    $0xa,%esi
  100693:	e9 a8 00 00 00       	jmpq   100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  100698:	49 89 cc             	mov    %rcx,%r12
  10069b:	b8 00 00 00 00       	mov    $0x0,%eax
  1006a0:	be 0a 00 00 00       	mov    $0xa,%esi
  1006a5:	e9 96 00 00 00       	jmpq   100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1006aa:	b8 00 00 00 00       	mov    $0x0,%eax
  1006af:	be 0a 00 00 00       	mov    $0xa,%esi
  1006b4:	e9 87 00 00 00       	jmpq   100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  1006b9:	b8 00 00 00 00       	mov    $0x0,%eax
  1006be:	be 0a 00 00 00       	mov    $0xa,%esi
  1006c3:	eb 7b                	jmp    100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1006c5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006c9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1006cd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006d1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1006d5:	e9 84 00 00 00       	jmpq   10075e <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  1006da:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006de:	8b 01                	mov    (%rcx),%eax
  1006e0:	83 f8 2f             	cmp    $0x2f,%eax
  1006e3:	77 10                	ja     1006f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  1006e5:	89 c2                	mov    %eax,%edx
  1006e7:	48 03 51 10          	add    0x10(%rcx),%rdx
  1006eb:	83 c0 08             	add    $0x8,%eax
  1006ee:	89 01                	mov    %eax,(%rcx)
  1006f0:	44 8b 02             	mov    (%rdx),%r8d
  1006f3:	eb 6c                	jmp    100761 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  1006f5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006f9:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1006fd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100701:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100705:	eb e9                	jmp    1006f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  100707:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  10070a:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  100711:	bf c0 13 10 00       	mov    $0x1013c0,%edi
  100716:	e9 c0 01 00 00       	jmpq   1008db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  10071b:	49 89 cc             	mov    %rcx,%r12
  10071e:	b8 01 00 00 00       	mov    $0x1,%eax
  100723:	eb 16                	jmp    10073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  100725:	49 89 cc             	mov    %rcx,%r12
  100728:	b8 00 00 00 00       	mov    $0x0,%eax
  10072d:	eb 0c                	jmp    10073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  10072f:	b8 00 00 00 00       	mov    $0x0,%eax
  100734:	eb 05                	jmp    10073b <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  100736:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  10073b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100740:	85 c0                	test   %eax,%eax
  100742:	74 96                	je     1006da <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  100744:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100748:	8b 01                	mov    (%rcx),%eax
  10074a:	83 f8 2f             	cmp    $0x2f,%eax
  10074d:	0f 87 72 ff ff ff    	ja     1006c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  100753:	89 c2                	mov    %eax,%edx
  100755:	48 03 51 10          	add    0x10(%rcx),%rdx
  100759:	83 c0 08             	add    $0x8,%eax
  10075c:	89 01                	mov    %eax,(%rcx)
  10075e:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  100761:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  100765:	85 f6                	test   %esi,%esi
  100767:	79 9e                	jns    100707 <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  100769:	41 89 f1             	mov    %esi,%r9d
  10076c:	f7 de                	neg    %esi
  10076e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  100775:	bf a0 13 10 00       	mov    $0x1013a0,%edi
  10077a:	e9 5c 01 00 00       	jmpq   1008db <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  10077f:	49 89 cc             	mov    %rcx,%r12
  100782:	b8 01 00 00 00       	mov    $0x1,%eax
  100787:	eb 16                	jmp    10079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  100789:	49 89 cc             	mov    %rcx,%r12
  10078c:	b8 00 00 00 00       	mov    $0x0,%eax
  100791:	eb 0c                	jmp    10079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  100793:	b8 00 00 00 00       	mov    $0x0,%eax
  100798:	eb 05                	jmp    10079f <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  10079a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  10079f:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  1007a4:	eb 9a                	jmp    100740 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  1007a6:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  1007a9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1007ad:	8b 01                	mov    (%rcx),%eax
  1007af:	83 f8 2f             	cmp    $0x2f,%eax
  1007b2:	77 21                	ja     1007d5 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  1007b4:	89 c2                	mov    %eax,%edx
  1007b6:	48 03 51 10          	add    0x10(%rcx),%rdx
  1007ba:	83 c0 08             	add    $0x8,%eax
  1007bd:	89 01                	mov    %eax,(%rcx)
  1007bf:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  1007c2:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  1007c9:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  1007ce:	eb 99                	jmp    100769 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  1007d0:	49 89 cc             	mov    %rcx,%r12
  1007d3:	eb d4                	jmp    1007a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  1007d5:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1007d9:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1007dd:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1007e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1007e5:	eb d8                	jmp    1007bf <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  1007e7:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  1007ea:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1007ee:	8b 07                	mov    (%rdi),%eax
  1007f0:	83 f8 2f             	cmp    $0x2f,%eax
  1007f3:	77 1e                	ja     100813 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  1007f5:	89 c2                	mov    %eax,%edx
  1007f7:	48 03 57 10          	add    0x10(%rdi),%rdx
  1007fb:	83 c0 08             	add    $0x8,%eax
  1007fe:	89 07                	mov    %eax,(%rdi)
  100800:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  100803:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100809:	e9 9a fc ff ff       	jmpq   1004a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  10080e:	49 89 cc             	mov    %rcx,%r12
  100811:	eb d7                	jmp    1007ea <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  100813:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100817:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10081b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10081f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100823:	eb db                	jmp    100800 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  100825:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  100828:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10082c:	8b 01                	mov    (%rcx),%eax
  10082e:	83 f8 2f             	cmp    $0x2f,%eax
  100831:	77 18                	ja     10084b <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  100833:	89 c2                	mov    %eax,%edx
  100835:	48 03 51 10          	add    0x10(%rcx),%rdx
  100839:	83 c0 08             	add    $0x8,%eax
  10083c:	89 01                	mov    %eax,(%rcx)
  10083e:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  100841:	e9 ca fd ff ff       	jmpq   100610 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  100846:	49 89 cc             	mov    %rcx,%r12
  100849:	eb dd                	jmp    100828 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  10084b:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10084f:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100853:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100857:	48 89 47 08          	mov    %rax,0x8(%rdi)
  10085b:	eb e1                	jmp    10083e <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  10085d:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  100860:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100864:	8b 07                	mov    (%rdi),%eax
  100866:	83 f8 2f             	cmp    $0x2f,%eax
  100869:	77 28                	ja     100893 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  10086b:	89 c2                	mov    %eax,%edx
  10086d:	48 03 57 10          	add    0x10(%rdi),%rdx
  100871:	83 c0 08             	add    $0x8,%eax
  100874:	89 07                	mov    %eax,(%rdi)
  100876:	8b 02                	mov    (%rdx),%eax
  100878:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  10087b:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  10087f:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100883:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  100889:	e9 1a fc ff ff       	jmpq   1004a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  10088e:	49 89 cc             	mov    %rcx,%r12
  100891:	eb cd                	jmp    100860 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  100893:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100897:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10089b:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10089f:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008a3:	eb d1                	jmp    100876 <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  1008a5:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  1008a8:	84 c0                	test   %al,%al
  1008aa:	0f 85 3b 01 00 00    	jne    1009eb <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  1008b0:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  1008b4:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  1008b8:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  1008bc:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1008c0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1008c6:	e9 dd fb ff ff       	jmpq   1004a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  1008cb:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  1008d1:	bf c0 13 10 00       	mov    $0x1013c0,%edi
        if (flags & FLAG_NUMERIC) {
  1008d6:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  1008db:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  1008df:	4c 89 c1             	mov    %r8,%rcx
  1008e2:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  1008e6:	48 63 f6             	movslq %esi,%rsi
  1008e9:	48 83 eb 01          	sub    $0x1,%rbx
  1008ed:	48 89 c8             	mov    %rcx,%rax
  1008f0:	ba 00 00 00 00       	mov    $0x0,%edx
  1008f5:	48 f7 f6             	div    %rsi
  1008f8:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  1008fc:	88 13                	mov    %dl,(%rbx)
        val /= base;
  1008fe:	48 89 ca             	mov    %rcx,%rdx
  100901:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100904:	48 39 d6             	cmp    %rdx,%rsi
  100907:	76 e0                	jbe    1008e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  100909:	e9 af fb ff ff       	jmpq   1004bd <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  10090e:	48 c7 45 a8 b9 0c 10 	movq   $0x100cb9,-0x58(%rbp)
  100915:	00 
            if (flags & FLAG_NEGATIVE) {
  100916:	41 f6 c5 80          	test   $0x80,%r13b
  10091a:	0f 85 c7 fb ff ff    	jne    1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  100920:	48 c7 45 a8 b7 0c 10 	movq   $0x100cb7,-0x58(%rbp)
  100927:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  100928:	41 f6 c5 10          	test   $0x10,%r13b
  10092c:	0f 85 b5 fb ff ff    	jne    1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  100932:	41 f6 c5 08          	test   $0x8,%r13b
  100936:	ba b6 0c 10 00       	mov    $0x100cb6,%edx
  10093b:	b8 b5 0c 10 00       	mov    $0x100cb5,%eax
  100940:	48 0f 44 c2          	cmove  %rdx,%rax
  100944:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100948:	e9 9a fb ff ff       	jmpq   1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  10094d:	41 8d 41 10          	lea    0x10(%r9),%eax
  100951:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  100956:	0f 85 8b fb ff ff    	jne    1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  10095c:	4d 85 c0             	test   %r8,%r8
  10095f:	75 0d                	jne    10096e <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  100961:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  100968:	0f 84 79 fb ff ff    	je     1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  10096e:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100972:	ba b2 0c 10 00       	mov    $0x100cb2,%edx
  100977:	b8 bb 0c 10 00       	mov    $0x100cbb,%eax
  10097c:	48 0f 44 c2          	cmove  %rdx,%rax
  100980:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100984:	e9 5e fb ff ff       	jmpq   1004e7 <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  100989:	48 89 df             	mov    %rbx,%rdi
  10098c:	e8 7f f7 ff ff       	callq  100110 <strlen>
  100991:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  100994:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100998:	0f 84 76 fb ff ff    	je     100514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  10099e:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  1009a2:	0f 84 6c fb ff ff    	je     100514 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  1009a8:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  1009ab:	89 ca                	mov    %ecx,%edx
  1009ad:	29 c2                	sub    %eax,%edx
  1009af:	39 c1                	cmp    %eax,%ecx
  1009b1:	b8 00 00 00 00       	mov    $0x0,%eax
  1009b6:	0f 4f c2             	cmovg  %edx,%eax
  1009b9:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1009bc:	e9 69 fb ff ff       	jmpq   10052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  1009c1:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1009c5:	e8 46 f7 ff ff       	callq  100110 <strlen>
  1009ca:	8b 75 a0             	mov    -0x60(%rbp),%esi
  1009cd:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  1009d0:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1009d3:	89 f9                	mov    %edi,%ecx
  1009d5:	29 f1                	sub    %esi,%ecx
  1009d7:	29 c1                	sub    %eax,%ecx
  1009d9:	39 fa                	cmp    %edi,%edx
  1009db:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e0:	0f 4c c1             	cmovl  %ecx,%eax
  1009e3:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  1009e6:	e9 3f fb ff ff       	jmpq   10052a <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  1009eb:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  1009ee:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  1009f1:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  1009f5:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  1009f9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  1009ff:	e9 a4 fa ff ff       	jmpq   1004a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100a04:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100a0a:	e9 a4 f8 ff ff       	jmpq   1002b3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100a0f:	8d 50 bd             	lea    -0x43(%rax),%edx
  100a12:	80 fa 35             	cmp    $0x35,%dl
  100a15:	77 d7                	ja     1009ee <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100a17:	0f b6 d2             	movzbl %dl,%edx
  100a1a:	3e ff 24 d5 e0 11 10 	notrack jmpq *0x1011e0(,%rdx,8)
  100a21:	00 
        }
    }
}
  100a22:	48 83 c4 58          	add    $0x58,%rsp
  100a26:	5b                   	pop    %rbx
  100a27:	41 5c                	pop    %r12
  100a29:	41 5d                	pop    %r13
  100a2b:	41 5e                	pop    %r14
  100a2d:	41 5f                	pop    %r15
  100a2f:	5d                   	pop    %rbp
  100a30:	c3                   	retq   
  100a31:	90                   	nop

0000000000100a32 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100a32:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100a36:	48 c7 07 48 14 10 00 	movq   $0x101448,(%rdi)
  100a3d:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100a44:	00 
  100a45:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100a48:	85 f6                	test   %esi,%esi
  100a4a:	78 18                	js     100a64 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100a4c:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100a52:	7f 0f                	jg     100a63 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100a54:	48 63 f6             	movslq %esi,%rsi
  100a57:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100a5e:	00 
  100a5f:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100a63:	c3                   	retq   
        cell_ += cursorpos;
  100a64:	8b 05 92 85 fb ff    	mov    -0x47a6e(%rip),%eax        # b8ffc <cursorpos>
  100a6a:	48 98                	cltq   
  100a6c:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100a73:	00 
  100a74:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100a78:	c3                   	retq   
  100a79:	90                   	nop

0000000000100a7a <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100a7a:	f3 0f 1e fa          	endbr64 
  100a7e:	55                   	push   %rbp
  100a7f:	48 89 e5             	mov    %rsp,%rbp
  100a82:	53                   	push   %rbx
  100a83:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100a87:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100a8e:	00 
  100a8f:	72 18                	jb     100aa9 <console_printer::scroll()+0x2f>
  100a91:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100a94:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100a98:	75 23                	jne    100abd <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100a9a:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100aa1:	00 
    }
}
  100aa2:	48 83 c4 08          	add    $0x8,%rsp
  100aa6:	5b                   	pop    %rbx
  100aa7:	5d                   	pop    %rbp
  100aa8:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100aa9:	ba d8 13 10 00       	mov    $0x1013d8,%edx
  100aae:	be 1f 02 00 00       	mov    $0x21f,%esi
  100ab3:	bf ab 0c 10 00       	mov    $0x100cab,%edi
  100ab8:	e8 a6 01 00 00       	callq  100c63 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100abd:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100ac2:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100ac7:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100acc:	e8 d2 f5 ff ff       	callq  1000a3 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100ad1:	ba a0 00 00 00       	mov    $0xa0,%edx
  100ad6:	be 00 00 00 00       	mov    $0x0,%esi
  100adb:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100ae0:	e8 0b f6 ff ff       	callq  1000f0 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100ae5:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100aec:	00 
  100aed:	eb b3                	jmp    100aa2 <console_printer::scroll()+0x28>
  100aef:	90                   	nop

0000000000100af0 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100af0:	f3 0f 1e fa          	endbr64 
  100af4:	55                   	push   %rbp
  100af5:	48 89 e5             	mov    %rsp,%rbp
  100af8:	41 55                	push   %r13
  100afa:	41 54                	push   %r12
  100afc:	53                   	push   %rbx
  100afd:	48 83 ec 08          	sub    $0x8,%rsp
  100b01:	48 89 fb             	mov    %rdi,%rbx
  100b04:	41 89 f5             	mov    %esi,%r13d
  100b07:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b0a:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100b0e:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b14:	72 14                	jb     100b2a <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100b16:	48 89 df             	mov    %rbx,%rdi
  100b19:	e8 5c ff ff ff       	callq  100a7a <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b1e:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100b22:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100b28:	73 ec                	jae    100b16 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100b2a:	41 80 fd 0a          	cmp    $0xa,%r13b
  100b2e:	74 1e                	je     100b4e <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100b30:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100b34:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100b38:	45 0f b6 ed          	movzbl %r13b,%r13d
  100b3c:	45 09 ec             	or     %r13d,%r12d
  100b3f:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100b43:	48 83 c4 08          	add    $0x8,%rsp
  100b47:	5b                   	pop    %rbx
  100b48:	41 5c                	pop    %r12
  100b4a:	41 5d                	pop    %r13
  100b4c:	5d                   	pop    %rbp
  100b4d:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100b4e:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100b54:	48 89 c1             	mov    %rax,%rcx
  100b57:	48 89 c6             	mov    %rax,%rsi
  100b5a:	48 d1 fe             	sar    %rsi
  100b5d:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100b64:	66 66 66 
  100b67:	48 89 f0             	mov    %rsi,%rax
  100b6a:	48 f7 ea             	imul   %rdx
  100b6d:	48 c1 fa 05          	sar    $0x5,%rdx
  100b71:	48 89 c8             	mov    %rcx,%rax
  100b74:	48 c1 f8 3f          	sar    $0x3f,%rax
  100b78:	48 29 c2             	sub    %rax,%rdx
  100b7b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100b7f:	48 c1 e0 04          	shl    $0x4,%rax
  100b83:	89 f2                	mov    %esi,%edx
  100b85:	29 c2                	sub    %eax,%edx
  100b87:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100b89:	41 83 cc 20          	or     $0x20,%r12d
  100b8d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100b91:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100b95:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100b99:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100b9d:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100ba0:	83 f8 50             	cmp    $0x50,%eax
  100ba3:	75 e8                	jne    100b8d <console_printer::putc(unsigned char, int)+0x9d>
  100ba5:	eb 9c                	jmp    100b43 <console_printer::putc(unsigned char, int)+0x53>
  100ba7:	90                   	nop

0000000000100ba8 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100ba8:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100bac:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100bb0:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100bb6:	48 d1 f8             	sar    %rax
  100bb9:	89 05 3d 84 fb ff    	mov    %eax,-0x47bc3(%rip)        # b8ffc <cursorpos>
}
  100bbf:	c3                   	retq   

0000000000100bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100bc0:	f3 0f 1e fa          	endbr64 
  100bc4:	55                   	push   %rbp
  100bc5:	48 89 e5             	mov    %rsp,%rbp
  100bc8:	41 56                	push   %r14
  100bca:	41 55                	push   %r13
  100bcc:	41 54                	push   %r12
  100bce:	53                   	push   %rbx
  100bcf:	48 83 ec 20          	sub    $0x20,%rsp
  100bd3:	89 fb                	mov    %edi,%ebx
  100bd5:	41 89 f4             	mov    %esi,%r12d
  100bd8:	49 89 d5             	mov    %rdx,%r13
  100bdb:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100bde:	89 fa                	mov    %edi,%edx
  100be0:	c1 ea 1f             	shr    $0x1f,%edx
  100be3:	89 fe                	mov    %edi,%esi
  100be5:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100be9:	e8 44 fe ff ff       	callq  100a32 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100bee:	4c 89 f1             	mov    %r14,%rcx
  100bf1:	4c 89 ea             	mov    %r13,%rdx
  100bf4:	44 89 e6             	mov    %r12d,%esi
  100bf7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100bfb:	e8 38 f6 ff ff       	callq  100238 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100c00:	85 db                	test   %ebx,%ebx
  100c02:	78 1a                	js     100c1e <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100c04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100c08:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c0e:	48 d1 f8             	sar    %rax
}
  100c11:	48 83 c4 20          	add    $0x20,%rsp
  100c15:	5b                   	pop    %rbx
  100c16:	41 5c                	pop    %r12
  100c18:	41 5d                	pop    %r13
  100c1a:	41 5e                	pop    %r14
  100c1c:	5d                   	pop    %rbp
  100c1d:	c3                   	retq   
        cp.move_cursor();
  100c1e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c22:	e8 81 ff ff ff       	callq  100ba8 <console_printer::move_cursor()>
  100c27:	eb db                	jmp    100c04 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100c29 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100c29:	f3 0f 1e fa          	endbr64 
  100c2d:	55                   	push   %rbp
  100c2e:	48 89 e5             	mov    %rsp,%rbp
  100c31:	48 83 ec 50          	sub    $0x50,%rsp
  100c35:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100c39:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100c3d:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100c41:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100c48:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100c4c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100c50:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100c54:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100c58:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100c5c:	e8 5f ff ff ff       	callq  100bc0 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100c61:	c9                   	leaveq 
  100c62:	c3                   	retq   

0000000000100c63 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100c63:	f3 0f 1e fa          	endbr64 
  100c67:	55                   	push   %rbp
  100c68:	48 89 e5             	mov    %rsp,%rbp
  100c6b:	48 89 f9             	mov    %rdi,%rcx
  100c6e:	41 89 f0             	mov    %esi,%r8d
  100c71:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100c74:	ba 50 14 10 00       	mov    $0x101450,%edx
  100c79:	be 00 c0 00 00       	mov    $0xc000,%esi
  100c7e:	bf 30 07 00 00       	mov    $0x730,%edi
  100c83:	b0 00                	mov    $0x0,%al
  100c85:	e8 9f ff ff ff       	callq  100c29 <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100c8a:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100c8f:	bf 00 00 00 00       	mov    $0x0,%edi
  100c94:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100c96:	eb fe                	jmp    100c96 <assert_fail(char const*, int, char const*)+0x33>
