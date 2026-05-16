# Escrever Roteiro

**Lembre: siga as regras de TOM DE VOZ do SKILL.md. Fale como gente, não como IA.**

## REGRA PRINCIPAL

**Nunca invente.** Não crie dados, histórias, personagens ou exemplos fictícios. Pergunte ao usuário até ter material real suficiente para escrever. Você guia, o usuário fornece a matéria-prima.

## Regras de escrita

- Se citar pessoa real, tem que ser verificável
- Usar as palavras que o público usa no dia a dia
- Nunca dar a resposta cedo demais
- Nunca repetir a mesma ideia de formas diferentes

**O roteiro TEM que soar como pessoa falando, não como texto de IA:**
- Use contrações: "tá", "pra", "né", "num", "dum"
- Frases curtas e incompletas são OK — gente fala assim
- Pode começar frase com "E", "Mas", "Aí", "Tipo"
- Use ritmo de fala: pausa, ênfase, pergunta retórica
- Teste mental: "alguém falaria isso olhando pra câmera?" Se não, reescreva
- PROIBIDO em roteiro: "no entanto", "vale ressaltar", "é importante destacar", "fascinante", "incrível", "impressionante"

## Fase 0: Verificar estilo

Antes de qualquer coisa, verifique se existe estilo salvo:

1. Cheque se existe `${CLAUDE_SKILL_DIR}/estilos/`
2. Se tiver UM arquivo: use esse estilo ao escrever
3. Se tiver VÁRIOS: pergunte "Esse roteiro é pra qual perfil?" e liste os nomes
4. Se não tiver nenhum: siga com as regras padrão de tom do SKILL.md

Quando usar estilo personalizado, o estilo do usuário tem PRIORIDADE sobre as regras genéricas. Se o estilo dele usa frases mais longas, respeite. É o jeito dele.

## Fase 1: Entender (pergunte uma de cada vez)

**Não despeje todas as perguntas de uma vez.** Faça 1-2 por mensagem e avance conforme a pessoa responde.

Comece com:
> "Qual é o assunto do vídeo? Me conta a ideia geral."

Depois:
> "Quem vai assistir? Descreve seu público — idade, o que os interessa, o que os incomoda."

Depois:
> "O que você quer que a pessoa pense ou sinta depois de assistir? Qual é o objetivo?"

**Agora aprofunde** (escolha as mais relevantes):
> "O que as pessoas comentam sobre esse assunto? Tem alguma polêmica ou opinião dividida?"

> "Tem algum caso real, notícia ou pessoa conhecida que se conecta com esse tema?"

> "Tem alguma coisa que a maioria pensa sobre isso que está errada?"

> "Que emoção seu público já carrega sobre isso? (raiva, frustração, curiosidade, esperança...)"

**Se a pessoa não sabe:**
> "Me diz: o que mais incomoda ou interessa seu público hoje? Que reclamação você vê nos comentários?"

**Antes de avançar:** avalie se o assunto é grande. Se for fraco, diga:
> "Esse assunto tá meio pequeno — pode não interessar muita gente. Quer que a gente amplie? Me conta: qual problema maior do seu público se conecta com isso?"

## Fase 2: Formato

Depois de entender o assunto, sugira 2-3 formatos de forma simples:

> "Com base no que você me disse, sugiro esses formatos:"
> 1. [Nome] — [como funciona em 1 frase]
> 2. [Nome] — [como funciona em 1 frase]
> "Qual faz mais sentido pro seu conteúdo?"

Consulte `references/estruturas-de-roteiro/` para escolher.

## Fase 3: Abertura

Crie 3-5 opções de abertura:

```
Abertura 1: "[frase]"
→ Funciona porque: [1 frase]

Abertura 2: "[frase]"
→ Funciona porque: [1 frase]
```

> "Qual te chamou mais atenção? Pode misturar ou pedir outra."

## Fase 4: Antes de escrever, confirme

Antes de escrever o roteiro completo, confirme:

> "Vou escrever o roteiro com:
> - Assunto: [X]
> - Formato: [Y]
> - Abertura: [Z]
> - Tom: [como vai falar]
> 
> Falta alguma informação? Tem algum dado, caso real ou exemplo que quer que eu use?"

**Só escreva depois de ter material real.** Se faltar, peça:
> "Pra essa parte ficar boa, preciso de um exemplo real. Tem algum caso que aconteceu com você ou com alguém que seu público conhece?"

## Fase 5: Roteiro

Escreva 2 versões com abordagens diferentes.

Para cada:
> "**Versão 1** — Foco em: [o que diferencia]"

## Fase 6: Ofereça crítica

> "Quer que eu avalie com honestidade? Vou dizer se segura a pessoa ou não."

Se aceitar:
- Abertura segura? sim / mais ou menos / não
- Assiste até o final? sim / mais ou menos / não
- Compartilharia? sim / mais ou menos / não
- Maior problema em 1 frase
- O que está bom em 1 frase
- 2-3 sugestões práticas

> "Quer que eu melhore? Me responde [pergunta específica sobre o que falta] pra eu reescrever com mais força."
