#!/usr/bin/env bash
set -e

echo "🦀 Instalando Rust..."

if ! command -v rustup &> /dev/null; then
  curl https://sh.rustup.rs -sSf | sh -s -- -y
fi

source "$HOME/.cargo/env"

rustup component add rust-analyzer

echo "✅ Rust pronto"