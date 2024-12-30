# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
# Убедитесь, что все необходимые файлы существуют
touch src/__init__.py
touch src/python_app/__init__.py
touch tests/__init__.py
# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
# Убедитесь, что все необходимые файлы существуют
touch src/__init__.py
touch src/python_app/__init__.py
touch tests/__init__.py
# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
# Убедитесь, что все необходимые файлы существуют
touch src/__init__.py
touch src/python_app/__init__.py
touch tests/__init__.py
# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
# Убедитесь, что все необходимые файлы существуют
touch src/__init__.py
touch src/python_app/__init__.py
touch tests/__init__.py
# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
# Убедитесь, что все необходимые файлы существуют
touch src/__init__.py
touch src/python_app/__init__.py
touch tests/__init__.py
# Пересоздаем виртуальное окружение
rm -rf .venv
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
PYTHONPATH=/root poetry run pytest -v
git init
git add .
git commit -m "Initial commit with main configuration"
# Обновляем зависимости
poetry install
# Переустанавливаем pre-commit hooks
pre-commit uninstall
pre-commit install
# Проверяем работу pre-commit
pre-commit run --all-files
# Обновляем зависимости
poetry install
# Переустанавливаем pre-commit hooks
pre-commit uninstall
pre-commit install
# Проверяем работу pre-commit
pre-commit run --all-files
# Переустановка зависимостей
poetry install
# Переустановка pre-commit hooks
pre-commit uninstall
pre-commit install
# Проверка работы pre-commit
pre-commit run --all-files
git push -u origin main
# Переустановка зависимостей
poetry install
# Переустановка pre-commit hooks
pre-commit uninstall
pre-commit install
# Проверка работы pre-commit
pre-commit run --all-files
# Удалить pre-commit хуки
pre-commit uninstall
# Очистить кэш pre-commit
rm -rf ~/.cache/pre-commit
# Переустановить pre-commit хуки
pre-commit install
# Проверить работу
pre-commit run --all-files
# Очистить кэш и переустановить hooks
rm -rf ~/.cache/pre-commit
pre-commit clean
pre-commit install
# Запустить проверку
pre-commit run --all-files
# Очистить кэш pre-commit
rm -rf ~/.cache/pre-commit
# Переустановить pre-commit хуки
pre-commit uninstall
pre-commit install
# Проверить работу
pre-commit run --all-files
# Очистить кэш pre-commit
rm -rf ~/.cache/pre-commit
# Переустановить pre-commit хуки
pre-commit uninstall
pre-commit install
# Проверить работу
pre-commit run --all-files
# Очистить кэш pre-commit
rm -rf ~/.cache/pre-commit
# Переустановить pre-commit хуки
pre-commit uninstall
pre-commit install
# Проверить работу
pre-commit run --all-files
# Инициализируем Git если еще не инициализирован
git init
# Добавляем все файлы
git add .
# Делаем первый коммит
git commit -m "Initial project setup with Python and Node.js configuration"
# Переименовываем основную ветку в main
git branch -M main
# Удалить существующий remote если есть
git remote remove origin
# Добавить новый remote
git remote add origin https://github.com/oleg121203/KOD.git
# Создать и переключиться на main ветку
git checkout -b main
# Добавить все файлы и сделать первый коммит
git add .
git commit -m "Initial project setup"
# Отправить в репозиторий
git push -u origin main
# Создать и переключиться на dev ветку
git checkout -b dev
# Отправить dev ветку
git push -u origin dev
# Проверяем наличие SSH ключей
ls -la ~/.ssh
# Если директории нет или нет ключей, создаем новый
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t ed25519 -C "oleg1203@gmail.com"
# Показываем публичный ключ для добавления в GitHub
cat ~/.ssh/id_ed25519.pub
# Проверяем SSH соединение
ssh -T git@github.com
# Обновляем remote URL на SSH
git remote set-url origin git@github.com:oleg121203/KOD.git
# Пробуем push снова
git add .
git commit -m "Initial project setup"
git push -u origin main
# Проверяем SSH соединение
ssh -T git@github.com
# Обновляем remote URL на SSH
git remote set-url origin git@github.com:oleg121203/KOD.git
# Пробуем push снова
git add .
git commit -m "Initial project setup"
git push -u origin main
# Установка Git LFS
apt-get install git-lfs
git lfs install
# Очистка кэша Git
git rm -r --cached .
git clean -fd
# Удаление больших файлов из истории
git filter-branch --force --tree-filter 'rm -rf .vscode-server' HEAD
# Переинициализация репозитория
git add .
git commit -m "Clean up large files and add Git LFS"
git push -f origin main
# Переустановка pre-commit
pre-commit clean
pre-commit install
pre-commit run --all-files
# Переустановка pre-commit
pre-commit clean
pre-commit install
pre-commit run --all-files
# Очистить кэш pre-commit
rm -rf ~/.cache/pre-commit
# Переустановить pre-commit
pip install --force-reinstall pre-commit
# Установить хуки заново
pre-commit uninstall
pre-commit install
# Запустить проверку
pre-commit run --all-files
# Очистка кэша
rm -rf ~/.cache/pre-commit
rm -rf ~/.cache/pip
# Переустановка зависимостей
poetry install
# Переустановка pre-commit
pre-commit clean
pre-commit uninstall
pre-commit install
# Проверка
pre-commit run --all-files
# Очистка кэша
rm -rf ~/.cache/pre-commit
rm -rf ~/.cache/pip
# Переустановка зависимостей
poetry install
# Переустановка pre-commit
pre-commit clean
pre-commit uninstall
pre-commit install
# Проверка
pre-commit run --all-files
# Очистка кэша
rm -rf ~/.cache/pre-commit
rm -rf ~/.cache/pip
# Переустановка зависимостей
poetry install
# Переустановка pre-commit
pre-commit clean
pre-commit uninstall
pre-commit install
# Запуск проверки
pre-commit run --all-files
# Деактивируем текущее окружение
deactivate
# Удаляем старое окружение
rm -rf .venv
# Устанавливаем Python 3.10
apt-get update && apt-get install -y python3.10-venv
# Создаем новое окружение с Python 3.10
python3.10 -m venv .venv
source .venv/bin/activate
# Переустанавливаем зависимости
poetry env use python3.10
poetry install
# Запускаем pre-commit
pre-commit run --all-files
# Проверяем установленные версии Python
python3.10 --version || apt-get update && apt-get install -y python3.10-venv
# Деактивируем текущее окружение
deactivate
# Удаляем старое виртуальное окружение
rm -rf .venv
# Создаем новое виртуальное окружение с Python 3.10
python3.10 -m venv .venv
# Активируем виртуальное окружение
source .venv/bin/activate
# Говорим Poetry использовать Python 3.10
poetry env use python3.10
# Проверяем версию Python
python --version  # Должно показать Python 3.10.x
# Переустанавливаем зависимости
poetry install
# Запускаем тесты
poetry run pytest
# Обновляем список пакетов
apt-get update
# Устанавливаем Python 3.10
apt-get install -y python3.10 python3.10-dev python3.10-distutils
# Устанавливаем pip для Python 3.10
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.10 get-pip.py
# Создаем новое виртуальное окружение
python3.10 -m pip install virtualenv
python3.10 -m virtualenv .venv
source .venv/bin/activate
# Обновляем poetry.lock
poetry lock --no-update
# Устанавливаем зависимости
poetry install
# Проверяем установку
poetry run which pytest
poetry run pytest
# Обновляем список пакетов
apt-get update
# Устанавливаем Python 3.10
apt-get install -y python3.10 python3.10-dev python3.10-distutils
# Устанавливаем pip для Python 3.10
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.10 get-pip.py
# Создаем новое виртуальное окружение
python3.10 -m pip install virtualenv
python3.10 -m virtualenv .venv
source .venv/bin/activate
# Обновляем poetry.lock
poetry lock --no-update
# Устанавливаем зависимости
poetry install
# Проверяем установку
poetry run which pytest
poetry run pytest
# Проверяем статус
git status
# Добавляем все файлы
git add .
# Создаем коммит
git commit -m "Initial project setup with Python 3.10 and Node.js configuration"
# Переименовываем текущую ветку в main если нужно
git branch -M main
# Добавляем удаленный репозиторий (если еще не добавлен)
git remote add origin git@github.com:oleg121203/KOD.git
# Отправляем изменения в удаленный репозиторий
git push -u origin main
# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[\033[0m\]"
# Git branch
parse_git_branch() {     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }
# Prompt
export PS1="${RED}\$(parse_git_branch)${RESET}${GREEN}KOD${RESET}${BLUE}\w${YELLOW}\$ ${RESET}"
# Environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PYTHONPATH=/app
export NODE_ENV=development# Удаление старых коммитов
cd /app
rm -rf .git
# Инициализация нового репозитория
git init
git branch -M main
# Создание .gitignore
cat > .gitignore << EOF
# Python
__pycache__/
*.py[cod]
.env
venv/
.pytest_cache/

# JavaScript
node_modules/
npm-debug.log

# IDE
.vscode/
.vscode-server/
.idea/
.history/

# Logs & temp
*.log
tmp/
.tmp/
logs/

# Build
dist/
build/
*.egg-info/
EOF

# Добавление всех файлов и создание первого коммита
git add .
git commit -m "Initial commit: базовая структура проекта KOD

- Python/Node.js окружение
- Docker конфигурация
- CircleCI pipeline
- Poetry и npm настройки
- Базовая структура проекта"
# Проверка
git log --oneline# Удаление старых коммитов
cd /app
rm -rf .git
# Инициализация нового репозитория
git init
git branch -M main
# Создание .gitignore
cat > .gitignore << EOF
# Python
__pycache__/
*.py[cod]
.env
venv/
.pytest_cache/

# JavaScript
node_modules/
npm-debug.log

# IDE
.vscode/
.vscode-server/
.idea/
.history/

# Logs & temp
*.log
tmp/
.tmp/
logs/

# Build
dist/
build/
*.egg-info/
EOF

# Добавление всех файлов и создание первого коммита
git add .
git commit -m "Initial commit: базовая структура проекта KOD

- Python/Node.js окружение
- Docker конфигурация
- CircleCI pipeline
- Poetry и npm настройки
- Базовая структура проекта"
# Проверка
git log --oneline# Удаление старых коммитов
cd /app
rm -rf .git
# Инициализация нового репозитория
git init
git branch -M main
# Создание .gitignore
cat > .gitignore << EOF
# Python
__pycache__/
*.py[cod]
.env
venv/
.pytest_cache/

# JavaScript
node_modules/
npm-debug.log

# IDE
.vscode/
.vscode-server/
.idea/
.history/

# Logs & temp
*.log
tmp/
.tmp/
logs/

# Build
dist/
build/
*.egg-info/
EOF

# Добавление всех файлов и создание первого коммита
git add .
git commit -m "Initial commit: базовая структура проекта KOD

- Python/Node.js окружение
- Docker конфигурация
- CircleCI pipeline
- Poetry и npm настройки
- Базовая структура проекта"
# Проверка
git log --oneline
аем скрипт исполняемым
chmod +x reset-git.sh
# Запускаем сброс Git истории
./reset-git.sh
# Проверяем результат
git log --oneline
аем скрипт исполняемым
chmod +x reset-git.sh
# Запускаем сброс Git истории
./reset-git.sh
# Проверяем результат
git log --oneline
/.bashrc
gl  # Используйте новый алиас для просмотра лога
# Делаем скрипт исполняемым
chmod +x reset-git.sh
# Запускаем сброс Git истории
./reset-git.sh
# Проверяем результат
git log --oneline
