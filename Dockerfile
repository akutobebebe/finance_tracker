# Використовуємо легку версію Linux з Python 3.11
FROM python:3.11-slim

# Налаштування, щоб Python не створював зайві файли .pyc
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Створюємо робочу папку всередині контейнера
WORKDIR /app

# Копіюємо файли з твого макбука в контейнер
COPY . .

# Команда, яка запуститься при старті
CMD ["python", "main.py"]