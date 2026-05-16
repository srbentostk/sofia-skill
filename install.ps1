# Sofia Skill — Instalador para Windows
# Uso: irm https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

$REPO = "https://github.com/srbentostk/sofia-skill/archive/refs/heads/main.zip"
$SKILLS_DIR = "$env:USERPROFILE\.claude\skills\sofia"
$TEMP = "$env:TEMP\sofia-skill-install"

Write-Host ""
Write-Host "  Sofia Skill — Instalando..." -ForegroundColor Cyan
Write-Host ""

# Limpar temp anterior
if (Test-Path $TEMP) { Remove-Item -Recurse -Force $TEMP }
New-Item -ItemType Directory -Force -Path $TEMP | Out-Null
New-Item -ItemType Directory -Force -Path "$SKILLS_DIR\references\estruturas-de-roteiro" | Out-Null
New-Item -ItemType Directory -Force -Path "$SKILLS_DIR\references\elementos-viciantes" | Out-Null

# Baixar
Write-Host "  Baixando..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $REPO -OutFile "$TEMP\sofia.zip"
Expand-Archive -Path "$TEMP\sofia.zip" -DestinationPath $TEMP -Force

$SRC = "$TEMP\sofia-skill-main\dist\sofia"

# Copiar skill
Write-Host "  Instalando skill..." -ForegroundColor Yellow
Copy-Item "$SRC\SKILL.md" "$SKILLS_DIR\SKILL.md" -Force
Copy-Item "$SRC\analisar.md" "$SKILLS_DIR\analisar.md" -Force
Copy-Item "$SRC\roteiro.md" "$SKILLS_DIR\roteiro.md" -Force
Copy-Item "$SRC\melhorar.md" "$SKILLS_DIR\melhorar.md" -Force

# Copiar referências
Write-Host "  Copiando referências..." -ForegroundColor Yellow
Copy-Item "$SRC\references\principios.md" "$SKILLS_DIR\references\" -Force
Copy-Item "$SRC\references\diagnostico.md" "$SKILLS_DIR\references\" -Force
Copy-Item "$SRC\references\regras-universais.md" "$SKILLS_DIR\references\" -Force
Copy-Item "$SRC\references\estruturas-de-roteiro\*.md" "$SKILLS_DIR\references\estruturas-de-roteiro\" -Force
Copy-Item "$SRC\references\elementos-viciantes\*.md" "$SKILLS_DIR\references\elementos-viciantes\" -Force

Write-Host "  OK Sofia" -ForegroundColor Green

# Limpar
Remove-Item -Recurse -Force $TEMP

Write-Host ""
Write-Host "  SOFIA INSTALADA!" -ForegroundColor Green
Write-Host ""
Write-Host "  Feche e abra o app Claude." -ForegroundColor White
Write-Host ""
Write-Host "  Use /sofia ou simplesmente converse:" -ForegroundColor White
Write-Host "    • Cole um link de video -> ela analisa" -ForegroundColor Gray
Write-Host "    • Peca um roteiro -> ela escreve" -ForegroundColor Gray
Write-Host "    • Cole um roteiro -> ela melhora" -ForegroundColor Gray
Write-Host ""
