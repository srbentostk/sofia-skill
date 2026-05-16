#!/bin/bash
# Sofia Skill — Instalador automático
# Uso: curl -sSL https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.sh | bash

set -e

REPO="https://github.com/srbentostk/sofia-skill"
SKILLS_DIR="$HOME/.claude/skills"
TEMP_DIR=$(mktemp -d)

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║     Sofia Skill — Instalando...          ║"
echo "╚══════════════════════════════════════════╝"
echo ""

# Criar pasta de skills se não existir
mkdir -p "$SKILLS_DIR/sofia/references/estruturas-de-roteiro"
mkdir -p "$SKILLS_DIR/sofia/references/elementos-viciantes"

# Baixar repo
echo "▸ Baixando Sofia..."
if command -v git >/dev/null 2>&1; then
    git clone --depth 1 "$REPO.git" "$TEMP_DIR/sofia-skill" 2>/dev/null
else
    curl -sL "$REPO/archive/refs/heads/main.zip" -o "$TEMP_DIR/sofia.zip"
    unzip -q "$TEMP_DIR/sofia.zip" -d "$TEMP_DIR"
    mv "$TEMP_DIR/sofia-skill-main" "$TEMP_DIR/sofia-skill"
fi

SRC="$TEMP_DIR/sofia-skill/dist/sofia"

# Copiar skill
echo "▸ Instalando skill..."
cp "$SRC/SKILL.md" "$SKILLS_DIR/sofia/SKILL.md"
cp "$SRC/analisar.md" "$SKILLS_DIR/sofia/analisar.md"
cp "$SRC/roteiro.md" "$SKILLS_DIR/sofia/roteiro.md"
cp "$SRC/melhorar.md" "$SKILLS_DIR/sofia/melhorar.md"
echo "  ✓ Sofia instalada"

# Copiar referências
echo "▸ Copiando referências..."
cp "$SRC/references/principios.md" "$SKILLS_DIR/sofia/references/"
cp "$SRC/references/diagnostico.md" "$SKILLS_DIR/sofia/references/"
cp "$SRC/references/regras-universais.md" "$SKILLS_DIR/sofia/references/"
cp "$SRC/references/estruturas-de-roteiro/"*.md "$SKILLS_DIR/sofia/references/estruturas-de-roteiro/"
cp "$SRC/references/elementos-viciantes/"*.md "$SKILLS_DIR/sofia/references/elementos-viciantes/"
echo "  ✓ Referências copiadas"

# Limpar
rm -rf "$TEMP_DIR"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║                                                  ║"
echo "║   ✅  SOFIA INSTALADA!                           ║"
echo "║                                                  ║"
echo "║   Feche e abra o app Claude.                     ║"
echo "║                                                  ║"
echo "║   Use /sofia ou simplesmente converse:           ║"
echo "║                                                  ║"
echo "║   • Cole um link de vídeo → ela analisa          ║"
echo "║   • Peça um roteiro → ela escreve                ║"
echo "║   • Cole um roteiro → ela melhora                ║"
echo "║                                                  ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
