FROM python:3.9


COPY ./src /app
COPY requirements.txt /app/requirements.txt

WORKDIR /app

ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run"]
