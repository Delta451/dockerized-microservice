FROM python:3.11-slim

WORKDIR /app

COPY app/ /app
RUN pip install --no-cache-dir flask curl

EXPOSE 5000

HEALTHCHECK CMD curl --fail http://localhost:5000 || exit 1

CMD ["python", "app.py"]
