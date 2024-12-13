.global _start

.section .data
msg: .ascii "y\n"

.section .text
_start:

l:
  mov $1, %rax
  mov $1, %rdi
  mov $msg, %rsi
  mov $2, %rdx
  syscall
  jnz l
      
  mov $60, %rax
  mov $0, %rdi
  syscall
