// Задание 3: for (i = 0; i < n; i++) { RAM[i] = RAM[i] + RAM[108 + i]; }

// i = 0
@i
M=0

(LOOP)
    // Проверка условия i < n (если i - n >= 0, выход)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGE

    // Находим адрес 108 + i и берем значение RAM[108 + i]
    @108
    D=A
    @i
    A=D+M       // A = 108 + i
    D=M         // D = RAM[108 + i]

    // Прибавляем RAM[i]
    @i
    A=M         // A = i
    D=D+M       // D = RAM[108 + i] + RAM[i]

    // Записываем обратно в RAM[i]
    @i
    A=M
    M=D

    // i++
    @i
    M=M+1

    @LOOP
    0;JMP

(END)
@END
0;JMP
