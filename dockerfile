FROM python:3.6-buster

EXPOSE 443

WORKDIR /app
COPY . /app

RUN apt-get -y update && \
    apt-get -y install sqlite3 && \
    rm -rf /var/lib/apt/lists/*  && \
    pip install --no-cache-dir -r requirements.txt

CMD ["uwsgi", "--http", "127.0.0.1:443", "--module", "wsgi:app"]
