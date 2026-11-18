// Задание 4: for (i = 0; i < n; i++) { if (RAM[i] < RAM[108 + i]) { i = i * i; } }

// i = 0
@i
M=0

(LOOP)
    // Проверка условия цикла: i < n
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGE

    // Получаем RAM[108 + i] -> сохраняем во временный R13
    @108
    D=A
    @i
    A=D+M
    D=M
    @R13
    M=D

    // Получаем RAM[i] и сравниваем: RAM[i] - RAM[108 + i]
    @i
    A=M
    D=M         // D = RAM[i]
    @R13
    D=D-M       // D = RAM[i] - RAM[108 + i]

    // Если RAM[i] >= RAM[108 + i] (D >= 0), пропускаем блок if
    @STEP
    D;JGE

    // Блок IF: вычисляем i = i * i
    @i
    D=M
    @R14        // Счетчик умножения = i
    M=D
    @R15        // Аккумулятор произведения = 0
    M=0

(SQUARE_LOOP)
    @R14
    D=M
    @SQUARE_END
    D;JEQ

    @i
    D=M
    @R15
    M=D+M       // R15 += i

    @R14
    M=M-1
    @SQUARE_LOOP
    0;JMP

(SQUARE_END)
    // Записываем результат i * i обратно в i
    @R15
    D=M
    @i
    M=D

(STEP)
    // Инкремент цикла for (i++)
    @i
    M=M+1

    @LOOP
    0;JMP

(END)
@END
0;JMP
