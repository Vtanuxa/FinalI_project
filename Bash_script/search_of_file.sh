#!/bin/bash

echo "Введите имя файла, который вы ищете:"
read -p "Имя файла: " filename
directory="/c/test/Bash_script"
echo '============== ПОИСК... ============'
result=$(ls "$directory" | grep -i "$filename")
if [ -z "$result" ]; then
    echo "Файл не найден"
else
    file_path=$(find "$directory" -iname "$filename")
    if [ -z "$file_path" ]; then
        echo "Файл не найден"
    else
        echo "Файл найден: $file_path"
    fi
fi
