# Sofia Skill

Versão gratuita da Sofia para o app Claude. Funciona com qualquer plano, incluindo o gratuito.

A Sofia analisa vídeos virais, escreve roteiros e melhora seus textos usando princípios de engajamento.

## Como instalar

### Opção 1: Arrastar e instalar (mais fácil)

1. Baixe o arquivo `sofia-skill.zip` [clicando aqui](https://github.com/srbentostk/sofia-skill/raw/main/sofia-skill.zip)
2. Descompacte o ZIP (duplo clique)
3. Abra o Finder e vá para a pasta oculta: pressione `Cmd + Shift + G` e cole `~/.claude/skills/`
4. Arraste a pasta `sofia` para dentro de `skills`
5. Feche e abra o app Claude

### Opção 2: Comando no Terminal (Mac/Linux)

Abra o **Terminal** e cole:

```
curl -sSL https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.sh | bash
```

Pronto. Feche e abra o app Claude.

### Opção 3: Comando no PowerShell (Windows)

Abra o **PowerShell** e cole:

```
irm https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.ps1 | iex
```

## Como usar

No app Claude, você pode:

- Digitar `/sofia` para ativar a Sofia diretamente
- Ou simplesmente conversar — a Sofia ativa sozinha quando detecta que você quer analisar, escrever ou melhorar

**Exemplos:**

> "Sofia, analisa esse vídeo: https://youtube.com/watch?v=XXXXX"

> "Me ajuda a escrever um roteiro sobre finanças pessoais"

> (cola um roteiro) "O que acha desse roteiro? Melhora pra mim"

## O que a Sofia faz

| Função | O que faz |
|--------|-----------|
| Analisar | Explica frase a frase por que um vídeo funciona |
| Escrever | Guia você passo a passo na criação de um roteiro |
| Melhorar | Critica com honestidade e reescreve corrigindo problemas |

## Como atualizar

Rode o mesmo comando de instalação novamente, ou baixe o ZIP de novo e substitua a pasta.

## Estrutura

```
~/.claude/skills/sofia/
├── SKILL.md              ← Entrada principal (router)
├── analisar.md           ← Instruções de análise
├── roteiro.md            ← Instruções de escrita
├── melhorar.md           ← Instruções de melhoria
└── references/           ← Base de conhecimento
    ├── principios.md
    ├── diagnostico.md
    ├── estruturas-de-roteiro/
    └── elementos-viciantes/
```
