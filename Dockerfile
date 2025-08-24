FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .

RUN apt-get update -y && apt-get install awscli -y
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
ENV PORT=8000
CMD ["python3", "app.py"]