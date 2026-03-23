#!/usr/bin/env bash

echo "🔧 Setup base..."
bash scripts/install/base.sh

echo "🧠 Setup Node..."
bash scripts/install/node.sh

echo "🦀 Setup Rust..."
bash scripts/install/rust.sh

echo "⚙️ Configurando Helix..."
make helix-link

echo "✅ Tudo pronto!"