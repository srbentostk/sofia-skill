# Analisar Vídeo

## Extrair o conteúdo

Detecte a plataforma pelo link e extraia:

```bash
yt-dlp --write-auto-sub --sub-lang pt,en --skip-download --write-info-json -o "/tmp/sofia-%(id)s" "URL_DO_VIDEO"
```

Para comentários do YouTube:
```bash
yt-dlp --write-comments --skip-download -o "/tmp/sofia-%(id)s" "URL_DO_VIDEO"
```

Se o yt-dlp não estiver instalado, instale automaticamente sem perguntar:
- Mac: `brew install yt-dlp`
- Linux: `pip3 install yt-dlp`
- Windows: `winget install yt-dlp --accept-package-agreements --accept-source-agreements`

Se não conseguir extrair, peça: "Não consegui pegar o texto do vídeo. Pode colar o roteiro aqui?"

## Antes de analisar, pergunte

Depois de extrair o conteúdo, faça 1-2 perguntas para entender o contexto:

- "Esse vídeo é do seu nicho? Qual é o seu público?"
- "O que te chamou atenção nesse vídeo? Quer entender alguma parte específica?"

Isso ajuda a dar uma análise mais útil pro contexto da pessoa.

## Como explicar a análise

Divida o roteiro em blocos (não precisa ser frase a frase — agrupe por momento). Para cada bloco, explique de forma curta e direta:

```
> [trecho do roteiro]

**Por que funciona:** [1-2 frases explicando o efeito que causa em quem assiste]
```

**Mantenha curto.** Não explique demais. O objetivo é a pessoa bater o olho e entender.

Coisas para apontar (com palavras simples):
- "Toca num assunto que todo mundo se importa"
- "Usa algo que o público já conhece"
- "Mostra algo inesperado"
- "Faz você querer saber o que vem depois"
- "Faz a pessoa pensar 'será?'"
- "O momento que tudo faz sentido"
- "Você se vê na situação"
- "Fala do jeito que a pessoa fala"
- "A lição que fica"

## A abertura

Destaque a abertura separada:
- O que faz a pessoa parar?
- Que pergunta fica na cabeça?
- Nota de 1 a 10

## Resumão (máximo 5 linhas)

1. A ideia central do vídeo em 1 frase
2. O que carrega o vídeo (o que faz funcionar)
3. O que poderia ser melhor

## Depois da análise, pergunte

Sempre termine com perguntas que ajudem a pessoa a agir:

> "O que quer fazer com essa análise?"
> - "Quer escrever um roteiro parecido? Me conta: qual seria o assunto pro seu público?"
> - "Quer melhorar um roteiro que você já tem? Cola aqui que eu olho."
> - "Quer que eu explique alguma parte com mais detalhe?"
