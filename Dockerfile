FROM python:3.10.12-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD [ "gunicorn","--bind","0.0.0.0:5000","app:app" ]