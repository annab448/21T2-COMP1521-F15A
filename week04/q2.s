# Store variable x in register $t0 and 
# store variable y in register $t1.
main:

    la   $a0, prompt    # printf("Enter a number: ");
    li   $v0, 4
    syscall

    li   $v0, 5         # scanf("%d", &x);
    syscall 
    move $t0, $v0
    
    mul  $t1, $t0, $t0

    move $a0, $t1       # printf("%d", y);
    li   $v0, 1  
    syscall 

    li   $a0, '\n'      # printf("\n");
    li   $v0, 11
    syscall

    li   $v0, 0         # return 0;
    jr   $ra

    .data 
prompt:
    .asciiz "Enter a number: " # char *
    
