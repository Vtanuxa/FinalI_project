#!/bin/bash

echo "Введите имя:"
read name
echo "Введите номер телефона:"
read phone

if [ ! -f contacts.csv ]; then
    echo "Имя,Номер телефона" > contacts.csv
fi

echo "$name,$phone" >> contacts.csv

echo "Данные успешно добавлены в таблицу."

sed 's/,/:,/g' contacts.csv | column -t -s: | sed 's/ ,/|/g'