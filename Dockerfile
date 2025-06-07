FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir uv && uv sync

EXPOSE 5001

CMD ["uv", "run", "main.py"]
