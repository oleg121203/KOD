#!/bin/bash

set -e

echo "Resetting Git history..."

# Remove old Git repository
rm -rf .git

# Initialize new repository
git init
git branch -M main

# Add .gitignore
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

# Create initial commit
git add .
git commit -m "Initial commit: базовая структура проекта KOD

- Python/Node.js окружение
- Docker конфигурация
- CircleCI pipeline
- Poetry и npm настройки
- Базовая структура проекта"

echo "Git history has been reset. New commit created:"
git log --oneline
