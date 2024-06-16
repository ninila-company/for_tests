# Используем официальный образ Python
FROM python:3.11

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы проекта в рабочую директорию
COPY . /app

# Устанавливаем зависимости проекта
RUN pip install -r requirements.txt

# Прописываем команду для запуска Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
