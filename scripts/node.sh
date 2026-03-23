#!/usr/bin/env bash
set -e

echo "🟢 Instalando ambiente Node..."

# Instala NVM (se não tiver)
if [ ! -d "$HOME/.nvm" ]; then
  echo "Instalando NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# Carrega NVM
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# Instala Node LTS
nvm install --lts
nvm use --lts

# LSPs e ferramentas
npm install -g \
  typescript \
  typescript-language-server \
  vscode-langservers-extracted \
  prettier \
  eslint \
  @tailwindcss/language-server

echo "✅ Node + LSPs prontos"