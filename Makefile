install:
	pip install -r requirements.txt

dev:
	FLASK_APP=src/server.py flask run

up:
	docker-compose up -d
