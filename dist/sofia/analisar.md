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

## Analisar frase a frase

Para cada frase ou bloco do roteiro, explique o que está acontecendo:

```
**O que rola aqui:** [explicação simples do que essa frase faz com quem assiste]
> Frase original do roteiro
```

Truques para identificar (sempre explicar com palavras simples):

| Truque | Como explicar |
|--------|---------------|
| Tema universal | "Toca num assunto que todo mundo se importa" |
| Familiaridade | "Usa algo que o público já conhece" |
| Conflito/Mudança | "Mostra uma reviravolta ou coisa inesperada" |
| Curiosidade | "Faz você querer saber o que vem depois" |
| Debate mental | "Faz a pessoa pensar 'será que sim ou será que não?'" |
| Contraste | "Mostra o contrário do que você esperava" |
| Efeito Aha | "O momento em que tudo faz sentido" |
| Identificação | "Você se vê na situação" |
| Linguagem familiar | "Fala do jeito que a pessoa fala no dia a dia" |
| Moral | "A lição que você leva pra vida" |

## Analisar a abertura

A abertura merece atenção especial:
- O que faz a pessoa parar de rolar o feed?
- Que pergunta fica na cabeça?
- Que emoção bate primeiro?
- De 1 a 10, quanto essa abertura segura a pessoa?

## Resumão

No final, responda:
1. Qual é a ideia que esse vídeo vende?
2. O assunto é grande o bastante pra interessar muita gente?
3. O que está carregando esse vídeo? (o que faz funcionar)
4. O que poderia ser ainda melhor?

## Próximos passos

> "O que quer fazer agora? Posso escrever um roteiro inspirado nessa análise ou melhorar um roteiro que você já tem."
