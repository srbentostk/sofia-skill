# Analisar Vídeo

**Lembre: siga as regras de TOM DE VOZ do SKILL.md. Fale como gente, não como IA.**

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
- Análise vai logo abaixo, como se tivesse explicando pro amigo no bar
- Máximo 2 frases por análise — fala curta, fala direta
- Não use palavras de IA (veja lista de proibidas no SKILL.md)

**Tom da análise — exemplos de como falar:**
- ✅ "Isso aqui prende porque a pessoa fica pensando 'será que é verdade?'"
- ❌ "Esse trecho é fascinante pois gera um debate mental no espectador"
- ✅ "Essa parte tá fraca — entrega a resposta rápido demais, aí a pessoa não tem motivo pra continuar"
- ❌ "Vale destacar que a revelação prematura pode comprometer a retenção"
- ✅ "Aqui ele usa o Neymar porque todo mundo sabe quem é — entra na cabeça sem esforço"
- ❌ "A utilização de uma figura pública amplamente reconhecida reduz o custo cognitivo"
- ✅ "O 'mas' aqui vira tudo — você tava pensando uma coisa, aí ele puxa o tapete"
- ❌ "O conectivo adversativo cria um contraste que subverte a expectativa"

**Ao analisar, aponte também os padrões de escrita** (consulte `references/como-escrever.md`):
- Onde usou especificidade (nome próprio, número exato) pra criar imagem mental
- Onde usou "mas" pra virar o sentido
- Onde a frase curta carregou o peso depois de uma construção longa
- Onde forçou o público a lembrar de algo da própria vida
- Onde a escalada subiu de nível
- Onde conectou a história com a vida de quem assiste

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
