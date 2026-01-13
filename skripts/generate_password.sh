#!/bin/bash

# Длина пароля
length=8

# Генерируем пароль из букв (заглавных и строчных) и цифр
password=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c "$length")

# Выводим результат
echo "Сгенерированный пароль: $password"