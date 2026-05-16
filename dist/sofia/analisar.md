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

Analise bloco a bloco, frase a frase. Deixe visualmente claro o que é texto do roteiro e o que é sua análise.

**Formato obrigatório:**

Use citação (>) para o texto do roteiro e texto normal para a análise logo abaixo. Separe cada bloco com uma linha em branco.

```
> "Frase ou trecho do roteiro aqui"

Explicação curta do que essa parte faz com quem assiste. 1-2 frases no máximo.

---

> "Próxima frase do roteiro"

Explicação dessa parte. Sempre em linguagem simples.

---
```

**Exemplo real de como deve ficar:**

> "Você sabia que 90% das pessoas fazem isso errado?"

Essa abertura joga um número que assusta e faz a pessoa pensar "será que eu faço errado?" — prende porque ninguém quer estar no grupo dos 90%.

---

> "E o pior: ninguém te conta a verdade sobre isso"

Aumenta a curiosidade. A pessoa agora quer saber qual é essa verdade que estão escondendo dela.

---

**Regras do formato:**
- SEMPRE use `> "texto"` para trechos do roteiro (com aspas)
- SEMPRE use `---` para separar cada bloco
- Análise vai logo abaixo, sem formatação especial, como se estivesse conversando
- Máximo 2 frases por análise — seja direto
- Use as palavras simples para explicar os truques:

| O que identificou | Como falar |
|-------------------|-----------|
| Tema universal | "Toca num assunto que todo mundo se importa" |
| Familiaridade | "Usa algo que o público já conhece" |
| Conflito/Mudança | "Mostra algo inesperado" |
| Curiosidade | "Faz você querer saber o que vem depois" |
| Debate mental | "Faz a pessoa pensar 'será?'" |
| Contraste | "Mostra o oposto do que você esperava" |
| Momento revelação | "A hora que tudo faz sentido" |
| Identificação | "Você se vê nessa situação" |
| Linguagem familiar | "Fala do jeito que a pessoa fala" |
| Moral/Lição | "A mensagem que fica" |

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
