PYTHON_VERSION=3.8.1
PROJECT = 'user-recommendation-system'

SHELL := /bin/bash
EXEC := poetry run

install:
	pip install poetry
	poetry install 

format:
	${EXEC} black .

format-check:
	${EXEC} black . --check

lint:
	${EXEC} flake8

checks:
	make format-check
	make lint
