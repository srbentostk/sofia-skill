#!/bin/bash
# Sofia Skills — Instalador automático
# Uso: curl -sSL https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.sh | bash

set -e

REPO="https://github.com/srbentostk/sofia-skill"
SKILLS_DIR="$HOME/.claude/skills"
TEMP_DIR=$(mktemp -d)

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║     Sofia Skills — Instalando...         ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Criar pasta de skills se não existir
mkdir -p "$SKILLS_DIR"

# Baixar repo
echo "▸ Baixando Sofia Skills..."
if command -v git >/dev/null 2>&1; then
    git clone --depth 1 "$REPO.git" "$TEMP_DIR/sofia-skill" 2>/dev/null
else
    curl -sL "$REPO/archive/refs/heads/main.zip" -o "$TEMP_DIR/sofia.zip"
    unzip -q "$TEMP_DIR/sofia.zip" -d "$TEMP_DIR"
    mv "$TEMP_DIR/sofia-skill-main" "$TEMP_DIR/sofia-skill"
fi

# Copiar skills
echo "▸ Instalando skills..."
for skill in sofia-analisar sofia-roteiro sofia-melhorar; do
    mkdir -p "$SKILLS_DIR/$skill"
    cp "$TEMP_DIR/sofia-skill/$skill/SKILL.md" "$SKILLS_DIR/$skill/SKILL.md"
    echo "  ✓ $skill"
done

# Copiar referências (as skills precisam delas)
echo "▸ Copiando referências..."
mkdir -p "$SKILLS_DIR/sofia-analisar/references/estruturas-de-roteiro"
mkdir -p "$SKILLS_DIR/sofia-analisar/references/elementos-viciantes"
cp "$TEMP_DIR/sofia-skill/references/"*.md "$SKILLS_DIR/sofia-analisar/references/" 2>/dev/null
cp "$TEMP_DIR/sofia-skill/references/estruturas-de-roteiro/"*.md "$SKILLS_DIR/sofia-analisar/references/estruturas-de-roteiro/" 2>/dev/null
cp "$TEMP_DIR/sofia-skill/references/elementos-viciantes/"*.md "$SKILLS_DIR/sofia-analisar/references/elementos-viciantes/" 2>/dev/null

# Copiar referências para as outras skills também
for skill in sofia-roteiro sofia-melhorar; do
    cp -r "$SKILLS_DIR/sofia-analisar/references" "$SKILLS_DIR/$skill/"
done

# Limpar
rm -rf "$TEMP_DIR"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║                                                  ║"
echo "║   ✅  SOFIA INSTALADA!                           ║"
echo "║                                                  ║"
echo "║   Abra o app Claude e use:                       ║"
echo "║                                                  ║"
echo "║   /sofia-analisar  → analisa um vídeo viral      ║"
echo "║   /sofia-roteiro   → escreve um roteiro          ║"
echo "║   /sofia-melhorar  → critica e melhora roteiro   ║"
echo "║                                                  ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
