<&T as core::fmt::Debug>::fmt:
        mov     rdx, rsi
        mov     rax, qword ptr [rdi]
        mov     rdi, qword ptr [rax]
        mov     rsi, qword ptr [rax + 8]
        jmp     qword ptr [rip + _ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h71e2a9622d88626bE@GOTPCREL]

core::ptr::drop_in_place:
        ret

<example::using_fn::controller::Error<E> as core::fmt::Debug>::fmt:
        push    r14
        push    rbx
        sub     rsp, 40
        mov     rbx, rdi
        lea     rdx, [rip + .L__unnamed_1]
        lea     r14, [rsp + 16]
        mov     ecx, 6
        mov     rdi, r14
        call    qword ptr [rip + core::fmt::Formatter::debug_tuple@GOTPCREL]
        mov     qword ptr [rsp + 8], rbx
        lea     rdx, [rip + .L__unnamed_2]
        lea     rsi, [rsp + 8]
        mov     rdi, r14
        call    qword ptr [rip + core::fmt::builders::DebugTuple::field@GOTPCREL]
        mov     rdi, r14
        call    qword ptr [rip + core::fmt::builders::DebugTuple::finish@GOTPCREL]
        add     rsp, 40
        pop     rbx
        pop     r14
        ret

example::using_fn::controller::TargetController<T>::run:
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        push    rax
        mov     r12, rdi
        mov     ebx, 8
        lea     r13, [rip + .L__unnamed_3]
        lea     rbp, [rip + .LJTI3_0]
        lea     r15, [rip + .L__unnamed_4]
        mov     r14, qword ptr [rip + printf@GOTPCREL]
        jmp     .LBB3_1
.LBB3_8:
        add     qword ptr [r12], -1
.LBB3_9:
        add     rbx, 16
        cmp     rbx, 280
        je      .LBB3_10
.LBB3_1:
        mov     rax, qword ptr [rbx + r13 - 8]
        movsxd  rax, dword ptr [rbp + 4*rax]
        add     rax, rbp
        jmp     rax
.LBB3_5:
        mov     rsi, qword ptr [r12]
        mov     rdi, r15
        xor     eax, eax
        call    r14
        jmp     .LBB3_9
.LBB3_6:
        mov     rax, qword ptr [rbx + r13]
        mov     qword ptr [r12], rax
        jmp     .LBB3_9
.LBB3_7:
        add     qword ptr [r12], 1
        jmp     .LBB3_9
.LBB3_2:
        mov     rax, qword ptr [rbx + r13]
        cmp     rax, 7
        je      .LBB3_3
        imul    rax, qword ptr [r12]
        mov     qword ptr [r12], rax
        jmp     .LBB3_9
.LBB3_10:
        xor     eax, eax
.LBB3_11:
        mov     edx, 28
        add     rsp, 8
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret
.LBB3_3:
        lea     rax, [rip + .L__unnamed_5]
        jmp     .LBB3_11
.LJTI3_0:
        .long   .LBB3_5-.LJTI3_0
        .long   .LBB3_6-.LJTI3_0
        .long   .LBB3_7-.LJTI3_0
        .long   .LBB3_8-.LJTI3_0
        .long   .LBB3_9-.LJTI3_0
        .long   .LBB3_2-.LJTI3_0

example::main:
        sub     rsp, 88
        mov     qword ptr [rsp], 0
        mov     rdi, rsp
        call    example::using_fn::controller::TargetController<T>::run
        test    rax, rax
        je      .LBB4_2
        mov     qword ptr [rsp + 8], rax
        mov     qword ptr [rsp + 16], rdx
        lea     rax, [rsp + 8]
        mov     qword ptr [rsp + 24], rax
        lea     rax, [rip + <example::using_fn::controller::Error<E> as core::fmt::Debug>::fmt]
        mov     qword ptr [rsp + 32], rax
        lea     rax, [rip + .L__unnamed_6]
        mov     qword ptr [rsp + 40], rax
        mov     qword ptr [rsp + 48], 2
        mov     qword ptr [rsp + 56], 0
        lea     rax, [rsp + 24]
        mov     qword ptr [rsp + 72], rax
        mov     qword ptr [rsp + 80], 1
        lea     rdi, [rsp + 40]
        call    qword ptr [rip + std::io::stdio::_eprint@GOTPCREL]
.LBB4_2:
        add     rsp, 88
        ret

.L__unnamed_1:
        .ascii  "Target"

.L__unnamed_2:
        .quad   core::ptr::drop_in_place
        .quad   8
        .quad   8
        .quad   <&T as core::fmt::Debug>::fmt

.L__unnamed_7:
        .byte   10

.L__unnamed_4:
        .asciz  "%d\n"

.L__unnamed_5:
        .ascii  "multiplying by 7 is unlucky!"

.L__unnamed_3:
        .asciz  "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

.L__unnamed_8:
        .ascii  "Error: "

.L__unnamed_6:
        .quad   .L__unnamed_8
        .asciz  "\007\000\000\000\000\000\000"
        .quad   .L__unnamed_7
        .asciz  "\001\000\000\000\000\000\000"
