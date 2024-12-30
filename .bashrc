# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[\033[0m\]"

# Git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Git aliases
alias gl='git log --oneline --decorate --graph --all'
alias gs='git status -sb'
alias gd='git diff --color-words'

# Docker aliases
alias d='sudo docker'
alias dc='sudo docker compose'
alias dcb='sudo docker compose build'
alias dcu='sudo docker compose up'
alias dcd='sudo docker compose down'
alias dcl='sudo docker compose logs'
alias dcp='sudo docker compose ps'
alias dcr='sudo docker compose restart'

# Prompt
export PS1="${RED}\$(parse_git_branch)${RESET}${GREEN}KOD${RESET}${BLUE}\w${YELLOW}\$ ${RESET}"

# Git configuration
export GIT_AUTHOR_NAME="Oleg Kizyma"
export GIT_AUTHOR_EMAIL="oleg1203@gmail.com"
export GIT_COMMITTER_NAME="Oleg Kizyma"
export GIT_COMMITTER_EMAIL="oleg1203@gmail.com"

# Poetry configuration
export POETRY_HOME="/root/.local/poetry"
export POETRY_CACHE_DIR="/root/.cache/poetry"
export POETRY_VIRTUALENVS_PATH="/root/DOK/.venv"
export POETRY_VIRTUALENVS_CREATE=true
export POETRY_VIRTUALENVS_IN_PROJECT=true
export PATH="$POETRY_HOME/bin:$PATH"

# Python paths
export PYTHONPATH="/root/DOK"
export VIRTUAL_ENV="/root/DOK/.venv"
export PATH="$VIRTUAL_ENV/bin:$PATH"

# Environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export NODE_ENV=development
