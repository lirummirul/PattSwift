#!/bin/bash

# Проверяем, что скрипт запущен от имени суперпользователя
if [ "$(id -u)" != "0" ]; then
    echo "Этот скрипт должен быть запущен от имени суперпользователя. Пожалуйста, запустите его с помощью sudo."
    exit 1
fi

# Проверяем, что утилита не установлена
if [ -f /usr/local/bin/pattSwift ]; then
    echo "Утилита pattSwift уже установлена."
    exit 0
fi

# Скачиваем утилиту
# echo "Скачивание утилиты pattSwift..."
# curl -L -o pattSwift.sh https://raw.githubusercontent.com/lirummirul/PattSwift/main/pattSwift.sh

# Делаем утилиту исполняемой
echo "Делаем утилиту pattSwift исполняемой..."
chmod +x pattSwift.sh

# Перемещаем утилиту в директорию /usr/local/bin/
echo "Перемещаем утилиту pattSwift в директорию /usr/local/bin/..."
mv pattSwift.sh /usr/local/bin/pattSwift

# Проверяем, что утилита установлена
if [ -f /usr/local/bin/pattSwift ]; then
    echo "Утилита pattSwift установлена успешно."
else
    echo "Установка утилиты pattSwift не удалась."
    exit 1
fi
