#!/usr/bin/env bash
set -e

# Validação: certificar de que está na raiz com templates
if [ ! -d "templates/commands" ]; then
  echo "❌ Erro: execute este script na raiz do repositório contendo 'templates/commands'."
  exit 1
fi

# 1. Remover sobras do repositório oficial que ainda possam existir
FILES_TO_REMOVE=(
  "AGENTS.md" "CHANGELOG.md" "CONTRIBUTING.md" 
  "SECURITY.md" "media"
)
for item in "${FILES_TO_REMOVE[@]}"; do
  if [ -e "$item" ]; then
    git rm -rf --ignore-unmatch "$item" 2>/dev/null || rm -rf "$item"
    echo "🧹 Removido: $item"
  fi
done

# 2. Criar diretórios locais
mkdir -p .agent/workflows .specify/memory

# 3. Gerar workflows a partir dos templates de comando
echo "⚙️ Gerando workflows em .agent/workflows/..."

COMMANDS=(
  "constitution"
  "specify"
  "clarify"
  "plan"
  "tasks"
  "implement"
  "converge"
  "analyze"
)

for cmd in "${COMMANDS[@]}"; do
  SRC="templates/commands/${cmd}.md"
  DEST=".agent/workflows/speckit-${cmd}.md"
  
  if [ -f "$SRC" ]; then
    cp "$SRC" "$DEST"
    echo "  ✔ Gerado: $DEST"
  else
    echo "  ⚠ Template ausente: $SRC (pulando)"
  fi
done

echo ""
echo "✅ Concluído! Arquivos gerados e prontos para inspeção."
