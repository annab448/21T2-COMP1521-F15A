# x in $t0 
# y in $t1
main:
    
    la   $a0, prompt                # printf("Enter a number: ");
    li   $v0, 4 
    syscall 

    li   $v0, 5                     # scanf("%d", &x);
    syscall 
    move $t0, $v0

    blt  $t0, 46340, square         # printf("square too big for 32 bits\n");
    la   $a0, too_big 
    li   $v0, 4 
    syscall 

    j    end                        # goto end;
square:
    mul  $t1, $t0, $t0              # y = x * x;

    move $a0, $t1                   # printf("%d", y);
    li   $v0, 1 
    syscall

    li   $a0, '\n'                  # printf("\n");
    li   $v0, 11
    syscall

end:

    li   $v0, 0                     # return 0;
    jr   $ra

    .data 
prompt:
    .asciiz "Enter a number: "
too_big:
    .asciiz "square too big for 32 bits\n"
