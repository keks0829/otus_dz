#!/usr/bin/env python3

import json
import random

# Функция генерации метрик в нужном формате
def generate_metrics():
    info = {}
    data = []

    for i in range(1, 4):
        metric_name = f"otus_important_metrics_{i}"  # Имя метрики
        metric_value = random.randint(1, 100)  # Случайное значение от 1 до 100
        
        # Добавляем метрику в секцию "info"
        info[metric_name] = {
            "expires": metric_value
        }
        
        # Добавляем имя метрики в секцию "data"
        data.append({
            "name": metric_name
        })

    # Формируем JSON
    result = {
        "info": info,
        "data": data
    }
    
    return json.dumps(result, indent=4)

# Проверка, запущен ли скрипт напрямую
if __name__ == "__main__":
    print(generate_metrics())

