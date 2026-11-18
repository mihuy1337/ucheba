// Задание 6: Динамический смайл 16x8 по смещению из R0 (top*32 + left/16)

// Вычисляем стартовый адрес: addr = SCREEN + R0
@SCREEN
D=A
@R0
D=D+M
@addr
M=D

// Строка 0: 7224
@7224
D=A
@addr
A=M
M=D

@32
D=A
@addr
M=D+M

// Строка 1: 7224
@7224
D=A
@addr
A=M
M=D

@32
D=A
@addr
M=D+M

// Строка 2: 7224
@7224
D=A
@addr
A=M
M=D

@32
D=A
@addr
M=D+M

// Строка 3: 0
@addr
A=M
M=0

@32
D=A
@addr
M=D+M

// Строка 4: 0
@addr
A=M
M=0

@32
D=A
@addr
M=D+M

// Строка 5: 24582
@24582
D=A
@addr
A=M
M=D

@32
D=A
@addr
M=D+M

// Строка 6: 14364
@14364
D=A
@addr
A=M
M=D

@32
D=A
@addr
M=D+M

// Строка 7: 4080
@4080
D=A
@addr
A=M
M=D

(END)
@END
0;JMP
