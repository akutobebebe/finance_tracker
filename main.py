import sys
import os

from fastapi import FastAPI

# Ось вона - змінна app, яку шукає Docker!
app = FastAPI(
    title="Finance Tracker API",
    description="Мій перший серйозний проєкт на FastAPI",
    version="1.0.0"
)

@app.get("/")
def read_root():
    return {"message": "Вітаю! API працює і підключено до Docker! 🚀"}