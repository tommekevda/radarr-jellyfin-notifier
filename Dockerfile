FROM python:3.12-slim

WORKDIR /app

COPY uv.lock .

RUN pip install --no-cache-dir uv && uv install

COPY . .

EXPOSE 5001

CMD ["uv", "run", "main.py"]
