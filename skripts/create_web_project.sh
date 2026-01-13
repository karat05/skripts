#!/bin/bash

# Запрашиваем имя проекта
read -p "Введите имя папки проекта: " project_name

# Проверяем, что имя не пустое
if [ -z "$project_name" ]; then
    echo "Ошибка: имя проекта не может быть пустым."
    exit 1
fi

# Проверяем, существует ли уже такая папка
if [ -d "$project_name" ]; then
    echo "Ошибка: папка '$project_name' уже существует."
    exit 1
fi

# Создаём структуру папок
mkdir -p "$project_name"/css "$project_name"/js

# Создаём index.html
cat > "$project_name/index.html" <<EOF
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Мой проект</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Привет, мир!</h1>
    <script src="js/script.js"></script>
</body>
</html>
EOF

# Создаём css/style.css
cat > "$project_name/css/style.css" <<EOF
/* Стили для проекта */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}
EOF

# Создаём js/script.js
cat > "$project_name/js/script.js" <<EOF
// Скрипт для проекта
console.log("Проект '$project_name' успешно загружен!");
EOF

echo "✅ Проект '$project_name' создан!"
echo "Структура:"
echo "$project_name/"
echo "├── index.html"
echo "├── css/"
echo "│   └── style.css"
echo "└── js/"
echo "    └── script.js"