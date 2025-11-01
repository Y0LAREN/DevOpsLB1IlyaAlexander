# Базовый образ
FROM python:3.9-slim

# Устанавливаем зависимости
RUN pip install flask

# Копируем приложение
COPY app.py /app/app.py

# Указываем рабочую директорию
WORKDIR /app

# Пробрасываем порт
EXPOSE 1234

# Команда запуска
CMD ["python", "app.py"]
