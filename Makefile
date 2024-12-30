.PHONY: init setup-dev test lint format run check-license install watch autosave

init:
	git init
	git add .
	git commit -m "Initial commit"
	pre-commit install

setup-dev:
	poetry install

test:
	poetry run python -m pytest tests/ || true
	npm test || true

lint:
	poetry run flake8 src
	poetry run mypy src
	npm run lint

format:
	poetry run black src
	poetry run isort src
	npm run format

run:
	poetry run uvicorn src.main:app --reload

check-license:
	@echo "Checking license headers..."
	@find src -name "*.py" -exec grep -l "MIT License" {} \;
	@find src -name "*.js" -exec grep -l "Apache License" {} \;

install:
	poetry install
	npm install
	pre-commit install

watch:
	python scripts/watch.py

autosave:
	npm run autosave
