#!/usr/bin/env bash
set -e

REPO_URL="$1"

if [ -z "$REPO_URL" ]; then
  echo "Uso: dev-bootstrap <repo-url>"
  exit 1
fi

echo "📦 Clonando dotfiles..."
git clone "$REPO_URL" ~/.dotfiles

cd ~/.dotfiles

echo "⚙️ Rodando setup..."
bash scripts/setup.sh