#!/bin/bash

# Поиск файлов и папок на диске
files=$(find /c/users/Татьяна -type f | wc -l)
directories=$(find /c/users/Татьяна -type d | wc -l)
# Вывод результатов
echo "Количество файлов: $files"
echo "Количество папок: $directories"
# Распределение по группам
if [ $files -gt $directories ]; then
echo "Больше файлов, чем папок"
elif [ $files -lt $directories ]; then
 echo "Больше папок, чем файлов"
else
echo "Равное количество файлов и папок"
fi