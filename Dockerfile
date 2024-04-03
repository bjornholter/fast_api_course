FROM python:3.11-slim
LABEL authors="bjorn"

COPY ..

RUN pip install -r requirements.txt

CMD ["uvicorn","main:app ", "--reload", "--host", "0.0.0.0", "--port", "80"]