int g(int x)
{
    return x + 3;
}

int f(int x)
{
    return g(x);
}

int main(void)
{
    return f(8) + 1;
}

// assemble

g:
    pushl   %ebp
    movl    %esp,%ebp
    movl    $8(%esp),%eax
    addl    $3,%eax
    leave
    ret

f:
    pushl   %ebp
    movl    %esp,%ebp
    movl    $8(%esp),%eax
    pushl   %eax
    call    g
    leave
    ret
    
main:
    pushl   %ebp
    movl    %esp,%ebp
    subl    $4,%esp
    movl    $8,%esp
    call    f
    addl    $1,%eax
    leave
    ret
