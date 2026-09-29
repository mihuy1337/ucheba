
# 1. Создаем тестовый лог-файл, чтобы программа гарантированно запустилась без ошибок
with open("log.txt", "w", encoding="utf-8") as f:
    f.write("INFO: Запуск сервера\n")
    f.write("ERROR: Ошибка соединения\n")
    f.write("INFO: Запрос выполнен\n")
    f.write("ERROR: Неверный пароль\n")

# 2. Читаем лог и считаем ошибки
errors_count = 0

with open("log.txt", "r", encoding="utf-8") as f:
    for line in f:
        if "ERROR" in line:
            errors_count += 1
            print("Найдена ошибка:", line.strip())

print("Всего ошибок:", errors_count)