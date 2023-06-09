
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
  1c0008:	53                   	push   %rbx
// make_syscall
//    These functions define the WeensyOS system call calling convention.
//    We provide versions for system calls with 0-2 arguments.

inline uintptr_t make_syscall(int syscallno) {
    register uintptr_t rax asm("rax") = syscallno;
  1c0009:	b8 01 00 00 00       	mov    $0x1,%eax
    asm volatile ("syscall"
            : "+a" (rax)
            : /* all input registers are also output registers */
            : "cc", "memory", "rcx", "rdx", "rsi", "rdi", "r8", "r9",
              "r10", "r11");
  1c000e:	0f 05                	syscall 
    return rax;
  1c0010:	48 89 c3             	mov    %rax,%rbx
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
  1c0013:	ba 0f 20 1c 00       	mov    $0x1c200f,%edx
  1c0018:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    pid_t p = sys_getpid();

    // The heap starts on the page right after the 'end' symbol,
    // whose address is the first address not allocated to process code
    // or data.
    heap_top = (uint8_t*) round_up((uintptr_t) end, PAGESIZE);
  1c001f:	48 89 15 e2 0f 00 00 	mov    %rdx,0xfe2(%rip)        # 1c1008 <heap_top>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
  1c0026:	48 89 e0             	mov    %rsp,%rax

    // The bottom of the stack is the first address on the current
    // stack page (this process never needs more than one stack page).
    stack_bottom = (uint8_t*) round_down((uintptr_t) rdrsp() - 1, PAGESIZE);
  1c0029:	48 83 e8 01          	sub    $0x1,%rax
  1c002d:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  1c0033:	48 89 05 c6 0f 00 00 	mov    %rax,0xfc6(%rip)        # 1c1000 <stack_bottom>
    // Allocate heap pages until (1) hit the stack (out of address space)
    // or (2) allocation fails (out of physical memory).
    // TODO: Add your code here.

    
    while ((uintptr_t) heap_top < (uintptr_t) stack_bottom) {
  1c003a:	48 39 d0             	cmp    %rdx,%rax
  1c003d:	76 37                	jbe    1c0076 <process_main()+0x76>
}

inline uintptr_t make_syscall(int syscallno, uintptr_t arg0) {
    register uintptr_t rax asm("rax") = syscallno;
  1c003f:	b8 04 00 00 00       	mov    $0x4,%eax
    asm volatile ("syscall"
            : "+a" (rax), "+D" (arg0)
            :
            : "cc", "memory", "rcx", "rdx", "rsi", "r8", "r9", "r10", "r11");
  1c0044:	48 89 d7             	mov    %rdx,%rdi
  1c0047:	0f 05                	syscall 
        if (sys_page_alloc(heap_top) < 0) {
  1c0049:	85 c0                	test   %eax,%eax
  1c004b:	78 29                	js     1c0076 <process_main()+0x76>
            break;
        }
        *((uint8_t*) heap_top) = p;
  1c004d:	48 8b 05 b4 0f 00 00 	mov    0xfb4(%rip),%rax        # 1c1008 <heap_top>
  1c0054:	88 18                	mov    %bl,(%rax)
        heap_top += PAGESIZE;
  1c0056:	48 8b 05 ab 0f 00 00 	mov    0xfab(%rip),%rax        # 1c1008 <heap_top>
  1c005d:	48 05 00 10 00 00    	add    $0x1000,%rax
  1c0063:	48 89 05 9e 0f 00 00 	mov    %rax,0xf9e(%rip)        # 1c1008 <heap_top>
    while ((uintptr_t) heap_top < (uintptr_t) stack_bottom) {
  1c006a:	48 89 c2             	mov    %rax,%rdx
  1c006d:	48 39 05 8c 0f 00 00 	cmp    %rax,0xf8c(%rip)        # 1c1000 <stack_bottom>
  1c0074:	77 c9                	ja     1c003f <process_main()+0x3f>
    register uintptr_t rax asm("rax") = syscallno;
  1c0076:	b8 02 00 00 00       	mov    $0x2,%eax
              "r10", "r11");
  1c007b:	0f 05                	syscall 
    return rax;
  1c007d:	eb f7                	jmp    1c0076 <process_main()+0x76>
