FROM python:3.10-slim    
WORKDIR /app

COPY requirements.txt .
COPY setup.py .
COPY . .
RUN python -m pip install --upgrade pip setuptools wheel \
 && pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
ENV PORT=8000
CMD ["python", "app.py"]