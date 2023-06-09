
obj/p-fork.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000100000 <process_main()>:
extern uint8_t end[];

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
  10000b:	b8 05 00 00 00       	mov    $0x5,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  100010:	0f 05                	syscall 
    // Fork a total of three new copies.
    pid_t p1 = sys_fork();
    assert(p1 >= 0);
  100012:	85 c0                	test   %eax,%eax
  100014:	78 3a                	js     100050 <process_main()+0x50>
  100016:	49 89 c4             	mov    %rax,%r12
    register uintptr_t rax asm("rax") = syscallno;
  100019:	b8 05 00 00 00       	mov    $0x5,%eax
              "r10", "r11");
  10001e:	0f 05                	syscall 
    return rax;
  100020:	48 89 c3             	mov    %rax,%rbx
    pid_t p2 = sys_fork();
    assert(p2 >= 0);
  100023:	85 c0                	test   %eax,%eax
  100025:	78 3d                	js     100064 <process_main()+0x64>
    register uintptr_t rax asm("rax") = syscallno;
  100027:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  10002c:	0f 05                	syscall 

    // Check fork return values: fork should return 0 to child.
    if (sys_getpid() == 1) {
  10002e:	83 f8 01             	cmp    $0x1,%eax
  100031:	74 45                	je     100078 <process_main()+0x78>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
    } else {
        assert(p1 == 0 || p2 == 0);
  100033:	45 85 e4             	test   %r12d,%r12d
  100036:	74 54                	je     10008c <process_main()+0x8c>
  100038:	85 db                	test   %ebx,%ebx
  10003a:	74 50                	je     10008c <process_main()+0x8c>
  10003c:	ba 4a 0d 10 00       	mov    $0x100d4a,%edx
  100041:	be 16 00 00 00       	mov    $0x16,%esi
  100046:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  10004b:	e8 a7 0c 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>
    assert(p1 >= 0);
  100050:	ba 30 0d 10 00       	mov    $0x100d30,%edx
  100055:	be 0e 00 00 00       	mov    $0xe,%esi
  10005a:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  10005f:	e8 93 0c 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>
    assert(p2 >= 0);
  100064:	ba 42 0d 10 00       	mov    $0x100d42,%edx
  100069:	be 10 00 00 00       	mov    $0x10,%esi
  10006e:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  100073:	e8 7f 0c 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  100078:	45 85 e4             	test   %r12d,%r12d
  10007b:	0f 94 c2             	sete   %dl
  10007e:	85 db                	test   %ebx,%ebx
  100080:	0f 94 c0             	sete   %al
  100083:	08 c2                	or     %al,%dl
  100085:	75 41                	jne    1000c8 <process_main()+0xc8>
  100087:	41 39 dc             	cmp    %ebx,%r12d
  10008a:	74 3c                	je     1000c8 <process_main()+0xc8>
    register uintptr_t rax asm("rax") = syscallno;
  10008c:	b8 01 00 00 00       	mov    $0x1,%eax
              "r10", "r11");
  100091:	0f 05                	syscall 
    return rax;
  100093:	48 89 c3             	mov    %rax,%rbx


// sys_getpid
//    Return current process ID.
inline pid_t sys_getpid() {
    return make_syscall(SYSCALL_GETPID);
  100096:	41 89 c4             	mov    %eax,%r12d
    }

    // The rest of this code is like p-allocator.c.

    pid_t p = sys_getpid();
    srand(p);
  100099:	89 c7                	mov    %eax,%edi
  10009b:	e8 c3 01 00 00       	callq  100263 <srand(unsigned int)>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  1000a0:	b8 1b 30 10 00       	mov    $0x10301b,%eax

    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1000a5:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000ab:	48 89 05 56 1f 00 00 	mov    %rax,0x1f56(%rip)        # 102008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1000b2:	48 89 e0             	mov    %rsp,%rax
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1000b5:	48 83 e8 01          	sub    $0x1,%rax
  1000b9:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1000bf:	48 89 05 3a 1f 00 00 	mov    %rax,0x1f3a(%rip)        # 102000 <stack_bottom>
  1000c6:	eb 1b                	jmp    1000e3 <process_main()+0xe3>
        assert(p1 != 0 && p2 != 0 && p1 != p2);
  1000c8:	ba 60 0d 10 00       	mov    $0x100d60,%edx
  1000cd:	be 14 00 00 00       	mov    $0x14,%esi
  1000d2:	bf 38 0d 10 00       	mov    $0x100d38,%edi
  1000d7:	e8 1b 0c 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>
    register uintptr_t rax asm("rax") = syscallno;
  1000dc:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1000e1:	0f 05                	syscall 

    while (true) {
        if (rand(0, ALLOC_SLOWDOWN - 1) < p) {
  1000e3:	be 63 00 00 00       	mov    $0x63,%esi
  1000e8:	bf 00 00 00 00       	mov    $0x0,%edi
  1000ed:	e8 90 01 00 00       	callq  100282 <rand(int, int)>
  1000f2:	44 39 e0             	cmp    %r12d,%eax
  1000f5:	7d e5                	jge    1000dc <process_main()+0xdc>
            if (heap_top == stack_bottom
  1000f7:	48 8b 3d 0a 1f 00 00 	mov    0x1f0a(%rip),%rdi        # 102008 <heap_top>
                || sys_page_alloc(heap_top) < 0) {
  1000fe:	48 3b 3d fb 1e 00 00 	cmp    0x1efb(%rip),%rdi        # 102000 <stack_bottom>
  100105:	74 28                	je     10012f <process_main()+0x12f>
    register uintptr_t rax asm("rax") = syscallno;
  100107:	b8 04 00 00 00       	mov    $0x4,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  10010c:	0f 05                	syscall 
  10010e:	85 c0                	test   %eax,%eax
  100110:	78 1d                	js     10012f <process_main()+0x12f>
                break;
            }
            *heap_top = p;               // check we can write to new page
  100112:	48 8b 05 ef 1e 00 00 	mov    0x1eef(%rip),%rax        # 102008 <heap_top>
  100119:	88 18                	mov    %bl,(%rax)
            console[CPOS(24, 79)] = p;   // check we can write to console
  10011b:	66 89 1d 7c 8e fb ff 	mov    %bx,-0x47184(%rip)        # b8f9e <console+0xf9e>
            heap_top += PAGESIZE;
  100122:	48 81 05 db 1e 00 00 	addq   $0x1000,0x1edb(%rip)        # 102008 <heap_top>
  100129:	00 10 00 00 
  10012d:	eb ad                	jmp    1000dc <process_main()+0xdc>
    register uintptr_t rax asm("rax") = syscallno;
  10012f:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  100134:	0f 05                	syscall 
    return rax;
  100136:	eb f7                	jmp    10012f <process_main()+0x12f>

0000000000100138 <memmove>:
        *d = *s;
    }
    return dst;
}

void* memmove(void* dst, const void* src, size_t n) {
  100138:	f3 0f 1e fa          	endbr64 
  10013c:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
  10013f:	48 39 fe             	cmp    %rdi,%rsi
  100142:	73 09                	jae    10014d <memmove+0x15>
  100144:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
  100148:	48 39 cf             	cmp    %rcx,%rdi
  10014b:	72 1d                	jb     10016a <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
  10014d:	b9 00 00 00 00       	mov    $0x0,%ecx
  100152:	48 85 d2             	test   %rdx,%rdx
  100155:	74 12                	je     100169 <memmove+0x31>
            *d++ = *s++;
  100157:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
  10015b:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
  10015f:	48 83 c1 01          	add    $0x1,%rcx
  100163:	48 39 d1             	cmp    %rdx,%rcx
  100166:	75 ef                	jne    100157 <memmove+0x1f>
        }
    }
    return dst;
}
  100168:	c3                   	retq   
  100169:	c3                   	retq   
        while (n-- > 0) {
  10016a:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  10016e:	48 85 d2             	test   %rdx,%rdx
  100171:	74 f5                	je     100168 <memmove+0x30>
            *--d = *--s;
  100173:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
  100177:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
  10017a:	48 83 e9 01          	sub    $0x1,%rcx
  10017e:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
  100182:	75 ef                	jne    100173 <memmove+0x3b>
  100184:	c3                   	retq   

0000000000100185 <memset>:

void* memset(void* v, int c, size_t n) {
  100185:	f3 0f 1e fa          	endbr64 
  100189:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10018c:	48 85 d2             	test   %rdx,%rdx
  10018f:	74 13                	je     1001a4 <memset+0x1f>
  100191:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
  100195:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
  100198:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
  10019b:	48 83 c2 01          	add    $0x1,%rdx
  10019f:	48 39 d1             	cmp    %rdx,%rcx
  1001a2:	75 f4                	jne    100198 <memset+0x13>
    }
    return v;
}
  1001a4:	c3                   	retq   

00000000001001a5 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
  1001a5:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
  1001a9:	80 3f 00             	cmpb   $0x0,(%rdi)
  1001ac:	74 10                	je     1001be <strlen+0x19>
  1001ae:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
  1001b3:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
  1001b7:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1001bb:	75 f6                	jne    1001b3 <strlen+0xe>
  1001bd:	c3                   	retq   
  1001be:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
  1001c3:	c3                   	retq   

00000000001001c4 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
  1001c4:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001c8:	48 85 f6             	test   %rsi,%rsi
  1001cb:	74 15                	je     1001e2 <strnlen+0x1e>
  1001cd:	b8 00 00 00 00       	mov    $0x0,%eax
  1001d2:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
  1001d6:	74 0d                	je     1001e5 <strnlen+0x21>
        ++n;
  1001d8:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
  1001dc:	48 39 c6             	cmp    %rax,%rsi
  1001df:	75 f1                	jne    1001d2 <strnlen+0xe>
  1001e1:	c3                   	retq   
  1001e2:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
  1001e5:	c3                   	retq   

00000000001001e6 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
  1001e6:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
  1001ea:	0f b6 07             	movzbl (%rdi),%eax
  1001ed:	84 c0                	test   %al,%al
  1001ef:	74 10                	je     100201 <strchr+0x1b>
  1001f1:	40 38 f0             	cmp    %sil,%al
  1001f4:	74 18                	je     10020e <strchr+0x28>
        ++s;
  1001f6:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
  1001fa:	0f b6 07             	movzbl (%rdi),%eax
  1001fd:	84 c0                	test   %al,%al
  1001ff:	75 f0                	jne    1001f1 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
  100201:	40 84 f6             	test   %sil,%sil
  100204:	b8 00 00 00 00       	mov    $0x0,%eax
  100209:	48 0f 44 c7          	cmove  %rdi,%rax
  10020d:	c3                   	retq   
  10020e:	48 89 f8             	mov    %rdi,%rax
    }
}
  100211:	c3                   	retq   

0000000000100212 <rand()>:
// rand, srand

static int rand_seed_set;
static unsigned long rand_seed;

int rand() {
  100212:	f3 0f 1e fa          	endbr64 
    if (!rand_seed_set) {
  100216:	83 3d fb 1d 00 00 00 	cmpl   $0x0,0x1dfb(%rip)        # 102018 <rand_seed_set>
  10021d:	74 27                	je     100246 <rand()+0x34>
        srand(819234718U);
    }
    rand_seed = rand_seed * 6364136223846793005UL + 1;
  10021f:	48 b8 2d 7f 95 4c 2d 	movabs $0x5851f42d4c957f2d,%rax
  100226:	f4 51 58 
  100229:	48 0f af 05 df 1d 00 	imul   0x1ddf(%rip),%rax        # 102010 <rand_seed>
  100230:	00 
  100231:	48 83 c0 01          	add    $0x1,%rax
  100235:	48 89 05 d4 1d 00 00 	mov    %rax,0x1dd4(%rip)        # 102010 <rand_seed>
    return (rand_seed >> 32) & RAND_MAX;
  10023c:	48 c1 e8 20          	shr    $0x20,%rax
  100240:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
}
  100245:	c3                   	retq   

void srand(unsigned seed) {
    rand_seed = ((unsigned long) seed << 32) | seed;
  100246:	48 b8 9e 87 d4 30 9e 	movabs $0x30d4879e30d4879e,%rax
  10024d:	87 d4 30 
  100250:	48 89 05 b9 1d 00 00 	mov    %rax,0x1db9(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100257:	c7 05 b7 1d 00 00 01 	movl   $0x1,0x1db7(%rip)        # 102018 <rand_seed_set>
  10025e:	00 00 00 
}
  100261:	eb bc                	jmp    10021f <rand()+0xd>

0000000000100263 <srand(unsigned int)>:
void srand(unsigned seed) {
  100263:	f3 0f 1e fa          	endbr64 
    rand_seed = ((unsigned long) seed << 32) | seed;
  100267:	89 f8                	mov    %edi,%eax
  100269:	48 c1 e7 20          	shl    $0x20,%rdi
  10026d:	48 09 c7             	or     %rax,%rdi
  100270:	48 89 3d 99 1d 00 00 	mov    %rdi,0x1d99(%rip)        # 102010 <rand_seed>
    rand_seed_set = 1;
  100277:	c7 05 97 1d 00 00 01 	movl   $0x1,0x1d97(%rip)        # 102018 <rand_seed_set>
  10027e:	00 00 00 
}
  100281:	c3                   	retq   

0000000000100282 <rand(int, int)>:

// rand(min, max)
//    Return a pseudorandom number roughly evenly distributed between
//    `min` and `max`, inclusive. Requires `min <= max` and
//    `max - min <= RAND_MAX`.
int rand(int min, int max) {
  100282:	f3 0f 1e fa          	endbr64 
  100286:	55                   	push   %rbp
  100287:	48 89 e5             	mov    %rsp,%rbp
  10028a:	41 54                	push   %r12
  10028c:	53                   	push   %rbx
    assert(min <= max);
  10028d:	39 f7                	cmp    %esi,%edi
  10028f:	7f 27                	jg     1002b8 <rand(int, int)+0x36>
  100291:	41 89 fc             	mov    %edi,%r12d
  100294:	89 f3                	mov    %esi,%ebx
    assert(max - min <= RAND_MAX);

    unsigned long r = rand();
  100296:	e8 77 ff ff ff       	callq  100212 <rand()>
  10029b:	89 c2                	mov    %eax,%edx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  10029d:	44 29 e3             	sub    %r12d,%ebx
  1002a0:	8d 43 01             	lea    0x1(%rbx),%eax
  1002a3:	48 98                	cltq   
    unsigned long r = rand();
  1002a5:	48 63 da             	movslq %edx,%rbx
    return min + (r * (max - min + 1)) / ((unsigned long) RAND_MAX + 1);
  1002a8:	48 0f af c3          	imul   %rbx,%rax
  1002ac:	48 c1 e8 1f          	shr    $0x1f,%rax
  1002b0:	44 01 e0             	add    %r12d,%eax
}
  1002b3:	5b                   	pop    %rbx
  1002b4:	41 5c                	pop    %r12
  1002b6:	5d                   	pop    %rbp
  1002b7:	c3                   	retq   
    assert(min <= max);
  1002b8:	ba 7f 0d 10 00       	mov    $0x100d7f,%edx
  1002bd:	be f2 00 00 00       	mov    $0xf2,%esi
  1002c2:	bf 8a 0d 10 00       	mov    $0x100d8a,%edi
  1002c7:	e8 2b 0a 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>

00000000001002cc <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
  1002cc:	f3 0f 1e fa          	endbr64 
  1002d0:	55                   	push   %rbp
  1002d1:	48 89 e5             	mov    %rsp,%rbp
  1002d4:	41 57                	push   %r15
  1002d6:	41 56                	push   %r14
  1002d8:	41 55                	push   %r13
  1002da:	41 54                	push   %r12
  1002dc:	53                   	push   %rbx
  1002dd:	48 83 ec 58          	sub    $0x58,%rsp
  1002e1:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
  1002e5:	0f b6 02             	movzbl (%rdx),%eax
  1002e8:	84 c0                	test   %al,%al
  1002ea:	0f 84 c6 07 00 00    	je     100ab6 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
  1002f0:	49 89 fe             	mov    %rdi,%r14
  1002f3:	41 89 f7             	mov    %esi,%r15d
  1002f6:	48 89 d3             	mov    %rdx,%rbx
  1002f9:	e9 b9 03 00 00       	jmpq   1006b7 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
  1002fe:	4c 8d 63 01          	lea    0x1(%rbx),%r12
  100302:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
  100306:	84 db                	test   %bl,%bl
  100308:	0f 84 8a 07 00 00    	je     100a98 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
  10030e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
  100314:	0f be f3             	movsbl %bl,%esi
  100317:	bf 70 14 10 00       	mov    $0x101470,%edi
  10031c:	e8 c5 fe ff ff       	callq  1001e6 <strchr>
  100321:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
  100324:	48 85 c0             	test   %rax,%rax
  100327:	74 74                	je     10039d <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
  100329:	48 81 e9 70 14 10 00 	sub    $0x101470,%rcx
  100330:	b8 01 00 00 00       	mov    $0x1,%eax
  100335:	d3 e0                	shl    %cl,%eax
  100337:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
  10033a:	49 83 c4 01          	add    $0x1,%r12
  10033e:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  100343:	84 db                	test   %bl,%bl
  100345:	75 cd                	jne    100314 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
  100347:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
  10034e:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
  100355:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
  10035a:	0f 84 cc 00 00 00    	je     10042c <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
  100360:	41 0f b6 04 24       	movzbl (%r12),%eax
  100365:	3c 6c                	cmp    $0x6c,%al
  100367:	0f 84 54 01 00 00    	je     1004c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  10036d:	0f 8f 42 01 00 00    	jg     1004b5 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
  100373:	3c 68                	cmp    $0x68,%al
  100375:	0f 85 68 01 00 00    	jne    1004e3 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
  10037b:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
  100380:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100386:	8d 50 bd             	lea    -0x43(%rax),%edx
  100389:	80 fa 35             	cmp    $0x35,%dl
  10038c:	0f 87 aa 05 00 00    	ja     10093c <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  100392:	0f b6 d2             	movzbl %dl,%edx
  100395:	3e ff 24 d5 b0 0d 10 	notrack jmpq *0x100db0(,%rdx,8)
  10039c:	00 
        if (*format >= '1' && *format <= '9') {
  10039d:	8d 43 cf             	lea    -0x31(%rbx),%eax
  1003a0:	3c 08                	cmp    $0x8,%al
  1003a2:	77 35                	ja     1003d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003a4:	41 0f b6 04 24       	movzbl (%r12),%eax
  1003a9:	8d 50 d0             	lea    -0x30(%rax),%edx
  1003ac:	80 fa 09             	cmp    $0x9,%dl
  1003af:	77 63                	ja     100414 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
  1003b1:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
  1003b6:	49 83 c4 01          	add    $0x1,%r12
  1003ba:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  1003bd:	0f be c0             	movsbl %al,%eax
  1003c0:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  1003c4:	41 0f b6 04 24       	movzbl (%r12),%eax
  1003c9:	8d 48 d0             	lea    -0x30(%rax),%ecx
  1003cc:	80 f9 09             	cmp    $0x9,%cl
  1003cf:	76 e5                	jbe    1003b6 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
  1003d1:	89 55 98             	mov    %edx,-0x68(%rbp)
  1003d4:	e9 75 ff ff ff       	jmpq   10034e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
  1003d9:	80 fb 2a             	cmp    $0x2a,%bl
  1003dc:	75 42                	jne    100420 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
  1003de:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1003e2:	8b 07                	mov    (%rdi),%eax
  1003e4:	83 f8 2f             	cmp    $0x2f,%eax
  1003e7:	77 19                	ja     100402 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
  1003e9:	89 c2                	mov    %eax,%edx
  1003eb:	48 03 57 10          	add    0x10(%rdi),%rdx
  1003ef:	83 c0 08             	add    $0x8,%eax
  1003f2:	89 07                	mov    %eax,(%rdi)
  1003f4:	8b 02                	mov    (%rdx),%eax
  1003f6:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
  1003f9:	49 83 c4 01          	add    $0x1,%r12
  1003fd:	e9 4c ff ff ff       	jmpq   10034e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
  100402:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100406:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  10040a:	48 8d 42 08          	lea    0x8(%rdx),%rax
  10040e:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100412:	eb e0                	jmp    1003f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
  100414:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
  10041b:	e9 2e ff ff ff       	jmpq   10034e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
  100420:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
  100427:	e9 22 ff ff ff       	jmpq   10034e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
  10042c:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
  100431:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  100437:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10043a:	80 f9 09             	cmp    $0x9,%cl
  10043d:	76 13                	jbe    100452 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
  10043f:	3c 2a                	cmp    $0x2a,%al
  100441:	74 32                	je     100475 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
  100443:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
  100446:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  10044d:	e9 0e ff ff ff       	jmpq   100360 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100452:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
  100457:	48 83 c2 01          	add    $0x1,%rdx
  10045b:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
  10045e:	0f be c0             	movsbl %al,%eax
  100461:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
  100465:	0f b6 02             	movzbl (%rdx),%eax
  100468:	8d 48 d0             	lea    -0x30(%rax),%ecx
  10046b:	80 f9 09             	cmp    $0x9,%cl
  10046e:	76 e7                	jbe    100457 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
  100470:	49 89 d4             	mov    %rdx,%r12
  100473:	eb 1c                	jmp    100491 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
  100475:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100479:	8b 01                	mov    (%rcx),%eax
  10047b:	83 f8 2f             	cmp    $0x2f,%eax
  10047e:	77 23                	ja     1004a3 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
  100480:	89 c2                	mov    %eax,%edx
  100482:	48 03 51 10          	add    0x10(%rcx),%rdx
  100486:	83 c0 08             	add    $0x8,%eax
  100489:	89 01                	mov    %eax,(%rcx)
  10048b:	8b 32                	mov    (%rdx),%esi
                ++format;
  10048d:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
  100491:	85 f6                	test   %esi,%esi
  100493:	b8 00 00 00 00       	mov    $0x0,%eax
  100498:	0f 49 c6             	cmovns %esi,%eax
  10049b:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  10049e:	e9 bd fe ff ff       	jmpq   100360 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
  1004a3:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004a7:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1004ab:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1004af:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1004b3:	eb d6                	jmp    10048b <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
  1004b5:	3c 74                	cmp    $0x74,%al
  1004b7:	74 08                	je     1004c1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
  1004b9:	3c 7a                	cmp    $0x7a,%al
  1004bb:	0f 85 e2 05 00 00    	jne    100aa3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
  1004c1:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
  1004c6:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1004cc:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004cf:	80 fa 35             	cmp    $0x35,%dl
  1004d2:	0f 87 64 04 00 00    	ja     10093c <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
  1004d8:	0f b6 d2             	movzbl %dl,%edx
  1004db:	3e ff 24 d5 60 0f 10 	notrack jmpq *0x100f60(,%rdx,8)
  1004e2:	00 
  1004e3:	8d 50 bd             	lea    -0x43(%rax),%edx
  1004e6:	80 fa 35             	cmp    $0x35,%dl
  1004e9:	0f 87 4a 04 00 00    	ja     100939 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
  1004ef:	0f b6 d2             	movzbl %dl,%edx
  1004f2:	3e ff 24 d5 10 11 10 	notrack jmpq *0x101110(,%rdx,8)
  1004f9:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1004fa:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1004fe:	8b 07                	mov    (%rdi),%eax
  100500:	83 f8 2f             	cmp    $0x2f,%eax
  100503:	0f 87 c9 01 00 00    	ja     1006d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
  100509:	89 c2                	mov    %eax,%edx
  10050b:	48 03 57 10          	add    0x10(%rdi),%rdx
  10050f:	83 c0 08             	add    $0x8,%eax
  100512:	89 07                	mov    %eax,(%rdi)
  100514:	48 8b 12             	mov    (%rdx),%rdx
  100517:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
  10051a:	48 89 d0             	mov    %rdx,%rax
  10051d:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
  100521:	49 89 d0             	mov    %rdx,%r8
  100524:	49 f7 d8             	neg    %r8
  100527:	25 80 00 00 00       	and    $0x80,%eax
  10052c:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
  100530:	41 09 c5             	or     %eax,%r13d
  100533:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
  100537:	bb 95 0d 10 00       	mov    $0x100d95,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
  10053c:	44 89 e8             	mov    %r13d,%eax
  10053f:	83 e0 20             	and    $0x20,%eax
  100542:	89 45 9c             	mov    %eax,-0x64(%rbp)
  100545:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
  10054b:	0f 85 0e 04 00 00    	jne    10095f <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
  100551:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
  100555:	44 89 e8             	mov    %r13d,%eax
  100558:	83 e0 60             	and    $0x60,%eax
  10055b:	83 f8 60             	cmp    $0x60,%eax
  10055e:	0f 84 3e 04 00 00    	je     1009a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100564:	44 89 e8             	mov    %r13d,%eax
  100567:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
  10056a:	48 c7 45 a8 95 0d 10 	movq   $0x100d95,-0x58(%rbp)
  100571:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
  100572:	83 f8 21             	cmp    $0x21,%eax
  100575:	0f 84 66 04 00 00    	je     1009e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
  10057b:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  10057e:	89 c8                	mov    %ecx,%eax
  100580:	f7 d0                	not    %eax
  100582:	c1 e8 1f             	shr    $0x1f,%eax
  100585:	89 45 88             	mov    %eax,-0x78(%rbp)
  100588:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10058c:	0f 85 8b 04 00 00    	jne    100a1d <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
  100592:	84 c0                	test   %al,%al
  100594:	0f 84 83 04 00 00    	je     100a1d <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
  10059a:	48 63 f1             	movslq %ecx,%rsi
  10059d:	48 89 df             	mov    %rbx,%rdi
  1005a0:	e8 1f fc ff ff       	callq  1001c4 <strnlen>
  1005a5:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
  1005a8:	8b 45 8c             	mov    -0x74(%rbp),%eax
  1005ab:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
  1005ae:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
  1005b5:	83 f8 22             	cmp    $0x22,%eax
  1005b8:	0f 84 97 04 00 00    	je     100a55 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
  1005be:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  1005c2:	e8 de fb ff ff       	callq  1001a5 <strlen>
  1005c7:	8b 55 a4             	mov    -0x5c(%rbp),%edx
  1005ca:	03 55 a0             	add    -0x60(%rbp),%edx
  1005cd:	8b 7d 98             	mov    -0x68(%rbp),%edi
  1005d0:	29 d7                	sub    %edx,%edi
  1005d2:	89 fa                	mov    %edi,%edx
  1005d4:	29 c2                	sub    %eax,%edx
  1005d6:	89 55 98             	mov    %edx,-0x68(%rbp)
  1005d9:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1005dc:	41 f6 c5 04          	test   $0x4,%r13b
  1005e0:	75 32                	jne    100614 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
  1005e2:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1005e5:	85 d2                	test   %edx,%edx
  1005e7:	7e 2b                	jle    100614 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
  1005e9:	49 8b 06             	mov    (%r14),%rax
  1005ec:	44 89 fa             	mov    %r15d,%edx
  1005ef:	be 20 00 00 00       	mov    $0x20,%esi
  1005f4:	4c 89 f7             	mov    %r14,%rdi
  1005f7:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
  1005f9:	41 83 ed 01          	sub    $0x1,%r13d
  1005fd:	45 85 ed             	test   %r13d,%r13d
  100600:	7f e7                	jg     1005e9 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
  100602:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100605:	85 ff                	test   %edi,%edi
  100607:	b8 01 00 00 00       	mov    $0x1,%eax
  10060c:	0f 4f c7             	cmovg  %edi,%eax
  10060f:	29 c7                	sub    %eax,%edi
  100611:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
  100614:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  100618:	0f b6 00             	movzbl (%rax),%eax
  10061b:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
  10061f:	84 c0                	test   %al,%al
  100621:	74 1b                	je     10063e <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
  100623:	0f b6 f0             	movzbl %al,%esi
  100626:	49 8b 06             	mov    (%r14),%rax
  100629:	44 89 fa             	mov    %r15d,%edx
  10062c:	4c 89 f7             	mov    %r14,%rdi
  10062f:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
  100631:	49 83 c5 01          	add    $0x1,%r13
  100635:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  10063a:	84 c0                	test   %al,%al
  10063c:	75 e5                	jne    100623 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
  10063e:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
  100642:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
  100646:	7e 16                	jle    10065e <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
  100648:	49 8b 06             	mov    (%r14),%rax
  10064b:	44 89 fa             	mov    %r15d,%edx
  10064e:	be 30 00 00 00       	mov    $0x30,%esi
  100653:	4c 89 f7             	mov    %r14,%rdi
  100656:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
  100658:	41 83 ed 01          	sub    $0x1,%r13d
  10065c:	75 ea                	jne    100648 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
  10065e:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  100662:	7e 22                	jle    100686 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
  100664:	8b 45 a0             	mov    -0x60(%rbp),%eax
  100667:	8d 40 ff             	lea    -0x1(%rax),%eax
  10066a:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
  10066f:	0f b6 33             	movzbl (%rbx),%esi
  100672:	49 8b 06             	mov    (%r14),%rax
  100675:	44 89 fa             	mov    %r15d,%edx
  100678:	4c 89 f7             	mov    %r14,%rdi
  10067b:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
  10067d:	48 83 c3 01          	add    $0x1,%rbx
  100681:	4c 39 eb             	cmp    %r13,%rbx
  100684:	75 e9                	jne    10066f <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
  100686:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
  100689:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  10068d:	7e 15                	jle    1006a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
  10068f:	49 8b 06             	mov    (%r14),%rax
  100692:	44 89 fa             	mov    %r15d,%edx
  100695:	be 20 00 00 00       	mov    $0x20,%esi
  10069a:	4c 89 f7             	mov    %r14,%rdi
  10069d:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
  10069f:	83 eb 01             	sub    $0x1,%ebx
  1006a2:	75 eb                	jne    10068f <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
  1006a4:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
  1006a9:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
  1006af:	84 c0                	test   %al,%al
  1006b1:	0f 84 ff 03 00 00    	je     100ab6 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
  1006b7:	3c 25                	cmp    $0x25,%al
  1006b9:	0f 84 3f fc ff ff    	je     1002fe <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
  1006bf:	0f b6 f0             	movzbl %al,%esi
  1006c2:	49 8b 06             	mov    (%r14),%rax
  1006c5:	44 89 fa             	mov    %r15d,%edx
  1006c8:	4c 89 f7             	mov    %r14,%rdi
  1006cb:	ff 10                	callq  *(%rax)
            continue;
  1006cd:	49 89 dc             	mov    %rbx,%r12
  1006d0:	eb d2                	jmp    1006a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1006d2:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1006d6:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1006da:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1006de:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1006e2:	e9 2d fe ff ff       	jmpq   100514 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
  1006e7:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
  1006ea:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1006ee:	8b 01                	mov    (%rcx),%eax
  1006f0:	83 f8 2f             	cmp    $0x2f,%eax
  1006f3:	77 13                	ja     100708 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
  1006f5:	89 c2                	mov    %eax,%edx
  1006f7:	48 03 51 10          	add    0x10(%rcx),%rdx
  1006fb:	83 c0 08             	add    $0x8,%eax
  1006fe:	89 01                	mov    %eax,(%rcx)
  100700:	48 63 12             	movslq (%rdx),%rdx
  100703:	e9 12 fe ff ff       	jmpq   10051a <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
  100708:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10070c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100710:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100714:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100718:	eb e6                	jmp    100700 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
  10071a:	49 89 cc             	mov    %rcx,%r12
  10071d:	b8 01 00 00 00       	mov    $0x1,%eax
  100722:	be 0a 00 00 00       	mov    $0xa,%esi
  100727:	e9 a8 00 00 00       	jmpq   1007d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  10072c:	49 89 cc             	mov    %rcx,%r12
  10072f:	b8 00 00 00 00       	mov    $0x0,%eax
  100734:	be 0a 00 00 00       	mov    $0xa,%esi
  100739:	e9 96 00 00 00       	jmpq   1007d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  10073e:	b8 00 00 00 00       	mov    $0x0,%eax
  100743:	be 0a 00 00 00       	mov    $0xa,%esi
  100748:	e9 87 00 00 00       	jmpq   1007d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
  10074d:	b8 00 00 00 00       	mov    $0x0,%eax
  100752:	be 0a 00 00 00       	mov    $0xa,%esi
  100757:	eb 7b                	jmp    1007d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  100759:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10075d:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100761:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100765:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100769:	e9 84 00 00 00       	jmpq   1007f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
  10076e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100772:	8b 01                	mov    (%rcx),%eax
  100774:	83 f8 2f             	cmp    $0x2f,%eax
  100777:	77 10                	ja     100789 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
  100779:	89 c2                	mov    %eax,%edx
  10077b:	48 03 51 10          	add    0x10(%rcx),%rdx
  10077f:	83 c0 08             	add    $0x8,%eax
  100782:	89 01                	mov    %eax,(%rcx)
  100784:	44 8b 02             	mov    (%rdx),%r8d
  100787:	eb 6c                	jmp    1007f5 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
  100789:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10078d:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  100791:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100795:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100799:	eb e9                	jmp    100784 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
  10079b:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
  10079e:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
  1007a5:	bf a0 14 10 00       	mov    $0x1014a0,%edi
  1007aa:	e9 c0 01 00 00       	jmpq   10096f <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  1007af:	49 89 cc             	mov    %rcx,%r12
  1007b2:	b8 01 00 00 00       	mov    $0x1,%eax
  1007b7:	eb 16                	jmp    1007cf <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1007b9:	49 89 cc             	mov    %rcx,%r12
  1007bc:	b8 00 00 00 00       	mov    $0x0,%eax
  1007c1:	eb 0c                	jmp    1007cf <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
  1007c3:	b8 00 00 00 00       	mov    $0x0,%eax
  1007c8:	eb 05                	jmp    1007cf <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
  1007ca:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
  1007cf:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
  1007d4:	85 c0                	test   %eax,%eax
  1007d6:	74 96                	je     10076e <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
  1007d8:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1007dc:	8b 01                	mov    (%rcx),%eax
  1007de:	83 f8 2f             	cmp    $0x2f,%eax
  1007e1:	0f 87 72 ff ff ff    	ja     100759 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
  1007e7:	89 c2                	mov    %eax,%edx
  1007e9:	48 03 51 10          	add    0x10(%rcx),%rdx
  1007ed:	83 c0 08             	add    $0x8,%eax
  1007f0:	89 01                	mov    %eax,(%rcx)
  1007f2:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
  1007f5:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
  1007f9:	85 f6                	test   %esi,%esi
  1007fb:	79 9e                	jns    10079b <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
  1007fd:	41 89 f1             	mov    %esi,%r9d
  100800:	f7 de                	neg    %esi
  100802:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
  100809:	bf 80 14 10 00       	mov    $0x101480,%edi
  10080e:	e9 5c 01 00 00       	jmpq   10096f <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
  100813:	49 89 cc             	mov    %rcx,%r12
  100816:	b8 01 00 00 00       	mov    $0x1,%eax
  10081b:	eb 16                	jmp    100833 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  10081d:	49 89 cc             	mov    %rcx,%r12
  100820:	b8 00 00 00 00       	mov    $0x0,%eax
  100825:	eb 0c                	jmp    100833 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
  100827:	b8 00 00 00 00       	mov    $0x0,%eax
  10082c:	eb 05                	jmp    100833 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
  10082e:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
  100833:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
  100838:	eb 9a                	jmp    1007d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
  10083a:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
  10083d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  100841:	8b 01                	mov    (%rcx),%eax
  100843:	83 f8 2f             	cmp    $0x2f,%eax
  100846:	77 21                	ja     100869 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
  100848:	89 c2                	mov    %eax,%edx
  10084a:	48 03 51 10          	add    0x10(%rcx),%rdx
  10084e:	83 c0 08             	add    $0x8,%eax
  100851:	89 01                	mov    %eax,(%rcx)
  100853:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
  100856:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
  10085d:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
  100862:	eb 99                	jmp    1007fd <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
  100864:	49 89 cc             	mov    %rcx,%r12
  100867:	eb d4                	jmp    10083d <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
  100869:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  10086d:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  100871:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100875:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100879:	eb d8                	jmp    100853 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
  10087b:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
  10087e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  100882:	8b 07                	mov    (%rdi),%eax
  100884:	83 f8 2f             	cmp    $0x2f,%eax
  100887:	77 1e                	ja     1008a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
  100889:	89 c2                	mov    %eax,%edx
  10088b:	48 03 57 10          	add    0x10(%rdi),%rdx
  10088f:	83 c0 08             	add    $0x8,%eax
  100892:	89 07                	mov    %eax,(%rdi)
  100894:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
  100897:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  10089d:	e9 9a fc ff ff       	jmpq   10053c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  1008a2:	49 89 cc             	mov    %rcx,%r12
  1008a5:	eb d7                	jmp    10087e <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
  1008a7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008ab:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  1008af:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008b3:	48 89 41 08          	mov    %rax,0x8(%rcx)
  1008b7:	eb db                	jmp    100894 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
  1008b9:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
  1008bc:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  1008c0:	8b 01                	mov    (%rcx),%eax
  1008c2:	83 f8 2f             	cmp    $0x2f,%eax
  1008c5:	77 18                	ja     1008df <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
  1008c7:	89 c2                	mov    %eax,%edx
  1008c9:	48 03 51 10          	add    0x10(%rcx),%rdx
  1008cd:	83 c0 08             	add    $0x8,%eax
  1008d0:	89 01                	mov    %eax,(%rcx)
  1008d2:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
  1008d5:	e9 ca fd ff ff       	jmpq   1006a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
  1008da:	49 89 cc             	mov    %rcx,%r12
  1008dd:	eb dd                	jmp    1008bc <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
  1008df:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008e3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  1008e7:	48 8d 42 08          	lea    0x8(%rdx),%rax
  1008eb:	48 89 47 08          	mov    %rax,0x8(%rdi)
  1008ef:	eb e1                	jmp    1008d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
  1008f1:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
  1008f4:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  1008f8:	8b 07                	mov    (%rdi),%eax
  1008fa:	83 f8 2f             	cmp    $0x2f,%eax
  1008fd:	77 28                	ja     100927 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
  1008ff:	89 c2                	mov    %eax,%edx
  100901:	48 03 57 10          	add    0x10(%rdi),%rdx
  100905:	83 c0 08             	add    $0x8,%eax
  100908:	89 07                	mov    %eax,(%rdi)
  10090a:	8b 02                	mov    (%rdx),%eax
  10090c:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  10090f:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100913:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100917:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
  10091d:	e9 1a fc ff ff       	jmpq   10053c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
  100922:	49 89 cc             	mov    %rcx,%r12
  100925:	eb cd                	jmp    1008f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
  100927:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  10092b:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  10092f:	48 8d 42 08          	lea    0x8(%rdx),%rax
  100933:	48 89 41 08          	mov    %rax,0x8(%rcx)
  100937:	eb d1                	jmp    10090a <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
  100939:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
  10093c:	84 c0                	test   %al,%al
  10093e:	0f 85 3b 01 00 00    	jne    100a7f <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
  100944:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
  100948:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
  10094c:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
  100950:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100954:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  10095a:	e9 dd fb ff ff       	jmpq   10053c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
  10095f:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
  100965:	bf a0 14 10 00       	mov    $0x1014a0,%edi
        if (flags & FLAG_NUMERIC) {
  10096a:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
  10096f:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
  100973:	4c 89 c1             	mov    %r8,%rcx
  100976:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
  10097a:	48 63 f6             	movslq %esi,%rsi
  10097d:	48 83 eb 01          	sub    $0x1,%rbx
  100981:	48 89 c8             	mov    %rcx,%rax
  100984:	ba 00 00 00 00       	mov    $0x0,%edx
  100989:	48 f7 f6             	div    %rsi
  10098c:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
  100990:	88 13                	mov    %dl,(%rbx)
        val /= base;
  100992:	48 89 ca             	mov    %rcx,%rdx
  100995:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
  100998:	48 39 d6             	cmp    %rdx,%rsi
  10099b:	76 e0                	jbe    10097d <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
  10099d:	e9 af fb ff ff       	jmpq   100551 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
  1009a2:	48 c7 45 a8 98 0d 10 	movq   $0x100d98,-0x58(%rbp)
  1009a9:	00 
            if (flags & FLAG_NEGATIVE) {
  1009aa:	41 f6 c5 80          	test   $0x80,%r13b
  1009ae:	0f 85 c7 fb ff ff    	jne    10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
  1009b4:	48 c7 45 a8 96 0d 10 	movq   $0x100d96,-0x58(%rbp)
  1009bb:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
  1009bc:	41 f6 c5 10          	test   $0x10,%r13b
  1009c0:	0f 85 b5 fb ff ff    	jne    10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
  1009c6:	41 f6 c5 08          	test   $0x8,%r13b
  1009ca:	ba 95 0d 10 00       	mov    $0x100d95,%edx
  1009cf:	b8 94 0d 10 00       	mov    $0x100d94,%eax
  1009d4:	48 0f 44 c2          	cmove  %rdx,%rax
  1009d8:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  1009dc:	e9 9a fb ff ff       	jmpq   10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
  1009e1:	41 8d 41 10          	lea    0x10(%r9),%eax
  1009e5:	a9 df ff ff ff       	test   $0xffffffdf,%eax
  1009ea:	0f 85 8b fb ff ff    	jne    10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
  1009f0:	4d 85 c0             	test   %r8,%r8
  1009f3:	75 0d                	jne    100a02 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
  1009f5:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
  1009fc:	0f 84 79 fb ff ff    	je     10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
  100a02:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
  100a06:	ba 91 0d 10 00       	mov    $0x100d91,%edx
  100a0b:	b8 9a 0d 10 00       	mov    $0x100d9a,%eax
  100a10:	48 0f 44 c2          	cmove  %rdx,%rax
  100a14:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  100a18:	e9 5e fb ff ff       	jmpq   10057b <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
  100a1d:	48 89 df             	mov    %rbx,%rdi
  100a20:	e8 80 f7 ff ff       	callq  1001a5 <strlen>
  100a25:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
  100a28:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  100a2c:	0f 84 76 fb ff ff    	je     1005a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
  100a32:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
  100a36:	0f 84 6c fb ff ff    	je     1005a8 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
  100a3c:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  100a3f:	89 ca                	mov    %ecx,%edx
  100a41:	29 c2                	sub    %eax,%edx
  100a43:	39 c1                	cmp    %eax,%ecx
  100a45:	b8 00 00 00 00       	mov    $0x0,%eax
  100a4a:	0f 4f c2             	cmovg  %edx,%eax
  100a4d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100a50:	e9 69 fb ff ff       	jmpq   1005be <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
  100a55:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
  100a59:	e8 47 f7 ff ff       	callq  1001a5 <strlen>
  100a5e:	8b 75 a0             	mov    -0x60(%rbp),%esi
  100a61:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
  100a64:	8b 7d 98             	mov    -0x68(%rbp),%edi
  100a67:	89 f9                	mov    %edi,%ecx
  100a69:	29 f1                	sub    %esi,%ecx
  100a6b:	29 c1                	sub    %eax,%ecx
  100a6d:	39 fa                	cmp    %edi,%edx
  100a6f:	b8 00 00 00 00       	mov    $0x0,%eax
  100a74:	0f 4c c1             	cmovl  %ecx,%eax
  100a77:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  100a7a:	e9 3f fb ff ff       	jmpq   1005be <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
  100a7f:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
  100a82:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
  100a85:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
  100a89:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
  100a8d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  100a93:	e9 a4 fa ff ff       	jmpq   10053c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
  100a98:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  100a9e:	e9 a4 f8 ff ff       	jmpq   100347 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
  100aa3:	8d 50 bd             	lea    -0x43(%rax),%edx
  100aa6:	80 fa 35             	cmp    $0x35,%dl
  100aa9:	77 d7                	ja     100a82 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
  100aab:	0f b6 d2             	movzbl %dl,%edx
  100aae:	3e ff 24 d5 c0 12 10 	notrack jmpq *0x1012c0(,%rdx,8)
  100ab5:	00 
        }
    }
}
  100ab6:	48 83 c4 58          	add    $0x58,%rsp
  100aba:	5b                   	pop    %rbx
  100abb:	41 5c                	pop    %r12
  100abd:	41 5d                	pop    %r13
  100abf:	41 5e                	pop    %r14
  100ac1:	41 5f                	pop    %r15
  100ac3:	5d                   	pop    %rbp
  100ac4:	c3                   	retq   
  100ac5:	90                   	nop

0000000000100ac6 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
  100ac6:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
  100aca:	48 c7 07 28 15 10 00 	movq   $0x101528,(%rdi)
  100ad1:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100ad8:	00 
  100ad9:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
  100adc:	85 f6                	test   %esi,%esi
  100ade:	78 18                	js     100af8 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100ae0:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
  100ae6:	7f 0f                	jg     100af7 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
  100ae8:	48 63 f6             	movslq %esi,%rsi
  100aeb:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
  100af2:	00 
  100af3:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
  100af7:	c3                   	retq   
        cell_ += cursorpos;
  100af8:	8b 05 fe 84 fb ff    	mov    -0x47b02(%rip),%eax        # b8ffc <cursorpos>
  100afe:	48 98                	cltq   
  100b00:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
  100b07:	00 
  100b08:	48 89 47 08          	mov    %rax,0x8(%rdi)
  100b0c:	c3                   	retq   
  100b0d:	90                   	nop

0000000000100b0e <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
  100b0e:	f3 0f 1e fa          	endbr64 
  100b12:	55                   	push   %rbp
  100b13:	48 89 e5             	mov    %rsp,%rbp
  100b16:	53                   	push   %rbx
  100b17:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b1b:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
  100b22:	00 
  100b23:	72 18                	jb     100b3d <console_printer::scroll()+0x2f>
  100b25:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
  100b28:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
  100b2c:	75 23                	jne    100b51 <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
  100b2e:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
  100b35:	00 
    }
}
  100b36:	48 83 c4 08          	add    $0x8,%rsp
  100b3a:	5b                   	pop    %rbx
  100b3b:	5d                   	pop    %rbp
  100b3c:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
  100b3d:	ba b8 14 10 00       	mov    $0x1014b8,%edx
  100b42:	be 1f 02 00 00       	mov    $0x21f,%esi
  100b47:	bf 8a 0d 10 00       	mov    $0x100d8a,%edi
  100b4c:	e8 a6 01 00 00       	callq  100cf7 <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
  100b51:	ba 00 0f 00 00       	mov    $0xf00,%edx
  100b56:	be a0 80 0b 00       	mov    $0xb80a0,%esi
  100b5b:	bf 00 80 0b 00       	mov    $0xb8000,%edi
  100b60:	e8 d3 f5 ff ff       	callq  100138 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
  100b65:	ba a0 00 00 00       	mov    $0xa0,%edx
  100b6a:	be 00 00 00 00       	mov    $0x0,%esi
  100b6f:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
  100b74:	e8 0c f6 ff ff       	callq  100185 <memset>
        cell_ -= CONSOLE_COLUMNS;
  100b79:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
  100b80:	00 
  100b81:	eb b3                	jmp    100b36 <console_printer::scroll()+0x28>
  100b83:	90                   	nop

0000000000100b84 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
  100b84:	f3 0f 1e fa          	endbr64 
  100b88:	55                   	push   %rbp
  100b89:	48 89 e5             	mov    %rsp,%rbp
  100b8c:	41 55                	push   %r13
  100b8e:	41 54                	push   %r12
  100b90:	53                   	push   %rbx
  100b91:	48 83 ec 08          	sub    $0x8,%rsp
  100b95:	48 89 fb             	mov    %rdi,%rbx
  100b98:	41 89 f5             	mov    %esi,%r13d
  100b9b:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100b9e:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100ba2:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100ba8:	72 14                	jb     100bbe <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
  100baa:	48 89 df             	mov    %rbx,%rdi
  100bad:	e8 5c ff ff ff       	callq  100b0e <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
  100bb2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  100bb6:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
  100bbc:	73 ec                	jae    100baa <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
  100bbe:	41 80 fd 0a          	cmp    $0xa,%r13b
  100bc2:	74 1e                	je     100be2 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
  100bc4:	48 8d 50 02          	lea    0x2(%rax),%rdx
  100bc8:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  100bcc:	45 0f b6 ed          	movzbl %r13b,%r13d
  100bd0:	45 09 ec             	or     %r13d,%r12d
  100bd3:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
  100bd7:	48 83 c4 08          	add    $0x8,%rsp
  100bdb:	5b                   	pop    %rbx
  100bdc:	41 5c                	pop    %r12
  100bde:	41 5d                	pop    %r13
  100be0:	5d                   	pop    %rbp
  100be1:	c3                   	retq   
        int pos = (cell_ - console) % 80;
  100be2:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100be8:	48 89 c1             	mov    %rax,%rcx
  100beb:	48 89 c6             	mov    %rax,%rsi
  100bee:	48 d1 fe             	sar    %rsi
  100bf1:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  100bf8:	66 66 66 
  100bfb:	48 89 f0             	mov    %rsi,%rax
  100bfe:	48 f7 ea             	imul   %rdx
  100c01:	48 c1 fa 05          	sar    $0x5,%rdx
  100c05:	48 89 c8             	mov    %rcx,%rax
  100c08:	48 c1 f8 3f          	sar    $0x3f,%rax
  100c0c:	48 29 c2             	sub    %rax,%rdx
  100c0f:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  100c13:	48 c1 e0 04          	shl    $0x4,%rax
  100c17:	89 f2                	mov    %esi,%edx
  100c19:	29 c2                	sub    %eax,%edx
  100c1b:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
  100c1d:	41 83 cc 20          	or     $0x20,%r12d
  100c21:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  100c25:	48 8d 71 02          	lea    0x2(%rcx),%rsi
  100c29:	48 89 73 08          	mov    %rsi,0x8(%rbx)
  100c2d:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
  100c31:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
  100c34:	83 f8 50             	cmp    $0x50,%eax
  100c37:	75 e8                	jne    100c21 <console_printer::putc(unsigned char, int)+0x9d>
  100c39:	eb 9c                	jmp    100bd7 <console_printer::putc(unsigned char, int)+0x53>
  100c3b:	90                   	nop

0000000000100c3c <console_printer::move_cursor()>:
void console_printer::move_cursor() {
  100c3c:	f3 0f 1e fa          	endbr64 
    cursorpos = cell_ - console;
  100c40:	48 8b 47 08          	mov    0x8(%rdi),%rax
  100c44:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100c4a:	48 d1 f8             	sar    %rax
  100c4d:	89 05 a9 83 fb ff    	mov    %eax,-0x47c57(%rip)        # b8ffc <cursorpos>
}
  100c53:	c3                   	retq   

0000000000100c54 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
  100c54:	f3 0f 1e fa          	endbr64 
  100c58:	55                   	push   %rbp
  100c59:	48 89 e5             	mov    %rsp,%rbp
  100c5c:	41 56                	push   %r14
  100c5e:	41 55                	push   %r13
  100c60:	41 54                	push   %r12
  100c62:	53                   	push   %rbx
  100c63:	48 83 ec 20          	sub    $0x20,%rsp
  100c67:	89 fb                	mov    %edi,%ebx
  100c69:	41 89 f4             	mov    %esi,%r12d
  100c6c:	49 89 d5             	mov    %rdx,%r13
  100c6f:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
  100c72:	89 fa                	mov    %edi,%edx
  100c74:	c1 ea 1f             	shr    $0x1f,%edx
  100c77:	89 fe                	mov    %edi,%esi
  100c79:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c7d:	e8 44 fe ff ff       	callq  100ac6 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
  100c82:	4c 89 f1             	mov    %r14,%rcx
  100c85:	4c 89 ea             	mov    %r13,%rdx
  100c88:	44 89 e6             	mov    %r12d,%esi
  100c8b:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100c8f:	e8 38 f6 ff ff       	callq  1002cc <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
  100c94:	85 db                	test   %ebx,%ebx
  100c96:	78 1a                	js     100cb2 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
  100c98:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  100c9c:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
  100ca2:	48 d1 f8             	sar    %rax
}
  100ca5:	48 83 c4 20          	add    $0x20,%rsp
  100ca9:	5b                   	pop    %rbx
  100caa:	41 5c                	pop    %r12
  100cac:	41 5d                	pop    %r13
  100cae:	41 5e                	pop    %r14
  100cb0:	5d                   	pop    %rbp
  100cb1:	c3                   	retq   
        cp.move_cursor();
  100cb2:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  100cb6:	e8 81 ff ff ff       	callq  100c3c <console_printer::move_cursor()>
  100cbb:	eb db                	jmp    100c98 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000100cbd <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
  100cbd:	f3 0f 1e fa          	endbr64 
  100cc1:	55                   	push   %rbp
  100cc2:	48 89 e5             	mov    %rsp,%rbp
  100cc5:	48 83 ec 50          	sub    $0x50,%rsp
  100cc9:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  100ccd:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  100cd1:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
  100cd5:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
  100cdc:	48 8d 45 10          	lea    0x10(%rbp),%rax
  100ce0:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  100ce4:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  100ce8:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
  100cec:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
  100cf0:	e8 5f ff ff ff       	callq  100c54 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
  100cf5:	c9                   	leaveq 
  100cf6:	c3                   	retq   

0000000000100cf7 <assert_fail(char const*, int, char const*)>:
    }
    console_printf(CPOS(23, 0), 0xC000, "%s", buf);
    sys_panic(nullptr);
}

void assert_fail(const char* file, int line, const char* msg) {
  100cf7:	f3 0f 1e fa          	endbr64 
  100cfb:	55                   	push   %rbp
  100cfc:	48 89 e5             	mov    %rsp,%rbp
  100cff:	48 89 f9             	mov    %rdi,%rcx
  100d02:	41 89 f0             	mov    %esi,%r8d
  100d05:	49 89 d1             	mov    %rdx,%r9
    console_printf(CPOS(23, 0), 0xC000,
  100d08:	ba 30 15 10 00       	mov    $0x101530,%edx
  100d0d:	be 00 c0 00 00       	mov    $0xc000,%esi
  100d12:	bf 30 07 00 00       	mov    $0x730,%edi
  100d17:	b0 00                	mov    $0x0,%al
  100d19:	e8 9f ff ff ff       	callq  100cbd <console_printf(int, int, char const*, ...)>
    register uintptr_t rax asm("rax") = syscallno;
  100d1e:	b8 03 00 00 00       	mov    $0x3,%eax
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  100d23:	bf 00 00 00 00       	mov    $0x0,%edi
  100d28:	0f 05                	syscall 
//    Panic.
[[noreturn]] inline void sys_panic(const char* msg) {
    make_syscall(SYSCALL_PANIC, (uintptr_t) msg);

    // should never get here
    while (true) {
  100d2a:	eb fe                	jmp    100d2a <assert_fail(char const*, int, char const*)+0x33>
