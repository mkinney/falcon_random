build:
	docker build -t falcon-random:latest .

run:
	docker run -d -p 8000:8000 falcon-random:latest

clean:
	@./clean_docker.bash

test:
	py.test -v test_app.py

lint:
	pylint *.py
	yamllint .*.yml

all: lint clean build run test

.PHONY: build run clean test lint
