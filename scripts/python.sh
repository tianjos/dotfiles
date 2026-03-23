#!/usr/bin/env bash
set -e

echo "🐍 Instalando ambiente Python com uv..."

# Instalar uv (se não existir)
if ! command -v uv &> /dev/null; then
  echo "Instalando uv..."
  curl -Ls https://astral.sh/uv/install.sh | sh
fi

# Garantir que o PATH está correto (uv instala em ~/.local/bin)
export PATH="$HOME/.local/bin:$PATH"

# Verifica instalação
if ! command -v uv &> /dev/null; then
  echo "❌ uv não encontrado no PATH. Reinicie o terminal e tente novamente."
  exit 1
fi

# Criar ambiente virtual global (opcional)
UV_ENV="$HOME/.venvs/dev"

if [ ! -d "$UV_ENV" ]; then
  echo "Criando virtualenv padrão..."
  uv venv "$UV_ENV"
fi

# Ativar venv
source "$UV_ENV/bin/activate"

# Instalar ferramentas Python
uv pip install \
  black \
  isort \
  pyright \
  ruff

echo "✅ Python + uv prontos"