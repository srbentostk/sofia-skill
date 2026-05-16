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

- "Esse vídeo é do seu nicho? Qual é o seu público?"
- "Quer entender alguma parte específica?"

## REGRA DE BREVIDADE

**Analise FRASE A FRASE. Toda frase do roteiro ganha sua análise. Mas a análise de cada frase tem que ser CURTA.**

- Cada frase do roteiro = 1 bloco separado com análise
- Máximo 1 frase de análise por frase do roteiro. UMA.
- Vá direto pro ponto: o que essa frase faz com quem assiste.
- Não explique o porquê do porquê. Só o porquê.
- Nunca pule frases. Todas são analisadas.

## Formato da análise

> "Trecho do roteiro"

O que faz: [1 frase curta].

---

**Exemplo de como deve ficar:**

> "Você sabia que 90% das pessoas fazem isso errado?"

Joga um número que assusta. A pessoa pensa "será que eu faço errado?" e fica.

---

> "E o pior: ninguém te conta a verdade sobre isso"

Aumenta a curiosidade. Agora ela quer saber qual é essa verdade.

---

> "Mas a real é que isso aqui muda tudo"

O "mas" puxa o tapete. Tava num lugar, agora tá em outro.

---

**Regras:**
- `> "texto"` pro roteiro, texto normal pra análise
- `---` entre blocos
- 1 frase por análise. Curta. Direta.
- NUNCA agrupe frases. Cada frase do roteiro = 1 bloco separado.
- Aponte o principal que essa frase faz. Não liste vários truques.

## Abertura

Destaque rápido:
- O que faz parar? [1 frase]
- Nota: X/10

## Resumão (3 linhas)

1. A ideia central em 1 frase
2. O que carrega o vídeo (qual princípio tá fazendo o trabalho pesado — em palavras simples)
3. O que daria pra melhorar (sugestão prática conectada a um princípio, 1 frase)

## Depois, pergunte

> "Quer escrever um roteiro com base nisso, melhorar um que você já tem, ou entender alguma parte melhor?"
