FROM python:3.11-slim

# Налаштування Python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Робоча папка
WORKDIR /app

# 1. Копіюємо файл із залежностями
COPY requirements.txt .

# 2. Встановлюємо бібліотеки
RUN pip install --no-cache-dir -r requirements.txt

# 3. Копіюємо весь інший код
COPY . .

# 4. Запускаємо сервер uvicorn
# --host 0.0.0.0 дозволяє доступ ззовні контейнера
# --reload перезапускає сервер, коли ти змінюєш код
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]