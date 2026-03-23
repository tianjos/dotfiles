#!/usr/bin/env bash
set -e

source "$(dirname "$0")/../utils/detect-os.sh"

OS=$(detect_os)

echo "🔧 Instalando dependências base ($OS)..."

if [ "$OS" = "linux" ]; then
  sudo apt update
  sudo apt install -y curl git unzip build-essential
elif [ "$OS" = "mac" ]; then
  if ! command -v brew &> /dev/null; then
    echo "Instalando Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew install git curl
else
  echo "❌ OS não suportado"
  exit 1
fi

echo "✅ Base pronta"