FROM nikolaik/python-nodejs:python3.10-nodejs16

# Установка и настройка локалей
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Проверка локалей
RUN locale && \
    echo "Locale generation completed."

# Установка базовых зависимостей
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Установка Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

WORKDIR /app

# Poetry configuration
ENV POETRY_HOME="/root/.local/poetry"
ENV POETRY_VIRTUALENVS_IN_PROJECT=true
ENV POETRY_VIRTUALENVS_CREATE=true
ENV PYTHONPATH="/app"

# Установка Poetry
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    poetry --version && \
    poetry config virtualenvs.in-project true

# Копирование файлов проекта
COPY pyproject.toml poetry.lock package*.json ./

# Установка зависимостей
RUN poetry install --no-root && \
    poetry run pip install google-generativeai && \
    npm install

# Копирование исходного кода
COPY src/ /app/src/
COPY tests/ /app/tests/

# Запуск тестов
RUN poetry run pytest tests/test_gemini.py -v

# Настройка Git с поддержкой UTF-8
RUN git config --global init.defaultBranch main && \
    git config --global user.name "Oleg Kizyma" && \
    git config --global user.email "oleg1203@gmail.com" && \
    git config --global core.quotepath false && \
    git config --global i18n.commitencoding utf-8 && \
    git config --global i18n.logoutputencoding utf-8

# Установка pre-commit
RUN pip install pre-commit && \
    pre-commit install

# Reset Git history script
COPY reset-git.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/reset-git.sh

EXPOSE 8000

CMD ["poetry", "run", "python", "-m", "src.python_app"]
