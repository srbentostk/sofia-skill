# Sofia Skills

Versão gratuita da Sofia para o app Claude. Funciona com qualquer plano, incluindo o gratuito.

A Sofia analisa vídeos virais, escreve roteiros e melhora seus textos usando princípios de engajamento.

## Como instalar

Abra o **Terminal** e cole este comando:

```
curl -sSL https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.sh | bash
```

Pronto. Feche e abra o app Claude.

**No Windows**, abra o PowerShell e cole:

```
irm https://raw.githubusercontent.com/srbentostk/sofia-skill/main/install.ps1 | iex
```

## Como usar

No app Claude, digite:

- `/sofia-analisar` + link do vídeo — analisa por que um vídeo funciona
- `/sofia-roteiro` — escreve um roteiro para vídeo viral
- `/sofia-melhorar` — critica e melhora um roteiro

## Exemplos

**Analisar um vídeo:**
> "Sofia, analisa esse vídeo: https://youtube.com/watch?v=XXXXX"

**Escrever um roteiro:**
> "/sofia-roteiro"
> A Sofia vai te fazer perguntas sobre o tema e o público, sugerir aberturas e escrever versões completas.

**Melhorar um roteiro:**
> Cole seu roteiro e use "/sofia-melhorar"
> Ela avalia com honestidade e reescreve corrigindo os problemas.

## Diferença entre Sofia Skills e Sofia Plugin

| | Sofia Skills (este) | Sofia Plugin |
|---|---|---|
| Plano necessário | Qualquer (incluindo grátis) | Pro ou superior |
| Instalação | 1 comando no Terminal | 2 comandos na aba Code |
| Funcionalidades | Analisar, escrever, melhorar | Tudo + dashboard, exportar, aprender |
| Atualização | Rodar o instalador de novo | `claude plugin update sofia` |

## Como atualizar

Rode o mesmo comando de instalação novamente. Ele sobrescreve com a versão nova.
