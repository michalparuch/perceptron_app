FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
COPY perceptron.py .
COPY model.pkl .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "perceptron.py"]