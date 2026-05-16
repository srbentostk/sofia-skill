# Sofia Skills — Instalador para Windows
# Uso: irm https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

$REPO = "https://github.com/srbentostk/sofia-skill/archive/refs/heads/main.zip"
$SKILLS_DIR = "$env:USERPROFILE\.claude\skills"
$TEMP = "$env:TEMP\sofia-skill-install"

Write-Host ""
Write-Host "  Sofia Skills — Instalando..." -ForegroundColor Cyan
Write-Host ""

# Limpar temp anterior
if (Test-Path $TEMP) { Remove-Item -Recurse -Force $TEMP }
New-Item -ItemType Directory -Force -Path $TEMP | Out-Null
New-Item -ItemType Directory -Force -Path $SKILLS_DIR | Out-Null

# Baixar
Write-Host "  Baixando..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $REPO -OutFile "$TEMP\sofia.zip"
Expand-Archive -Path "$TEMP\sofia.zip" -DestinationPath $TEMP -Force

$SRC = "$TEMP\sofia-skill-main"

# Copiar skills
$skills = @("sofia-analisar", "sofia-roteiro", "sofia-melhorar")
foreach ($skill in $skills) {
    $dest = "$SKILLS_DIR\$skill"
    New-Item -ItemType Directory -Force -Path $dest | Out-Null
    Copy-Item "$SRC\$skill\SKILL.md" "$dest\SKILL.md" -Force

    # Copiar referências
    $refDest = "$dest\references"
    if (Test-Path "$SRC\references") {
        Copy-Item -Recurse -Force "$SRC\references" $refDest
    }
    Write-Host "  OK $skill" -ForegroundColor Green
}

# Limpar
Remove-Item -Recurse -Force $TEMP

Write-Host ""
Write-Host "  SOFIA INSTALADA!" -ForegroundColor Green
Write-Host ""
Write-Host "  Abra o app Claude e use:" -ForegroundColor White
Write-Host "    /sofia-analisar  — analisa um video viral" -ForegroundColor Gray
Write-Host "    /sofia-roteiro   — escreve um roteiro" -ForegroundColor Gray
Write-Host "    /sofia-melhorar  — critica e melhora roteiro" -ForegroundColor Gray
Write-Host ""
