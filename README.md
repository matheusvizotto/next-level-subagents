# next-level-subagents

> Subagents prontos pra Claude Code. Time de IA rodando em paralelo no teu Mac.

Cada arquivo aqui é um **Claude Code Subagent** instalável. Você baixa, copia pra `~/.claude/agents/`, abre o Claude Code, e o time já tá lá.

Não precisa programar. Não precisa API key. Funciona no plano Claude Pro/Max.

---

## Precisa de um vault primeiro

Os subagents `vault-keeper` e `decision-tracker` leem e escrevem numa estrutura de pastas do Obsidian (`01 Daily/`, `02 Context/`, `03 Projects/`, `03 Intelligence/decisions/`).

Se você ainda não tem um vault montado nesse formato, clona o starter kit (grátis):

```bash
git clone https://github.com/matheusvizotto/next-level-ai.git meu-vault
```

Abre como vault no Obsidian e os subagents funcionam direto, sem ajuste. Se já tem teu próprio vault, edita a seção `CUSTOMIZE THIS` no topo de cada subagent pra apontar pras tuas pastas.

Starter kit completo: [github.com/matheusvizotto/next-level-ai](https://github.com/matheusvizotto/next-level-ai)

---

## Como instalar

### Modo rápido (1 comando)

```bash
curl -fsSL https://raw.githubusercontent.com/matheusvizotto/next-level-subagents/main/install.sh | bash
```

Esse script copia todos os subagents do `agents/` pra `~/.claude/agents/`.

### Modo manual

```bash
git clone https://github.com/matheusvizotto/next-level-subagents.git
cp next-level-subagents/agents/*.md ~/.claude/agents/
```

Reinicia o Claude Code (se já estava aberto) pra carregar os subagents novos.

---

## Subagents disponíveis

| Subagent | O que faz |
|---|---|
| [`vault-keeper`](agents/vault-keeper.md) | Lê tua pasta Obsidian e responde com contexto histórico. A memória de longo prazo do time. |
| [`social-agent`](agents/social-agent.md) | Rascunha respostas pra Telegram/Discord/iMessage com contexto do teu vault, no teu tom de voz. |
| [`decision-tracker`](agents/decision-tracker.md) | Lê conversas e captura as decisões em registros estruturados no Obsidian. |
| [`research-agent`](agents/research-agent.md) | Audita anúncios públicos, gera variações de copy, estrutura plano de mídia, detecta fadiga. |

> Esses 4 são a fundação, livres pra baixar. Os subagents avançados (o que edita vídeo, o coordenador que roda tudo em paralelo, e os bônus) ficam na imersão. Detalhes abaixo.

---

## Como usar depois de instalar

Abre Claude Code numa pasta qualquer. Pede direto:

```
vault-keeper, quais foram minhas 3 maiores decisões esse mês?
```

Claude detecta a description do subagent e delega. O subagent roda no contexto próprio dele, faz o trabalho, devolve o resultado.

Pra ver o time todo trabalhando em paralelo (depois de instalar todos):

```
Ctrl+A  → abre o Agent View
```

Boris Cherny (criador do Claude Code) demonstrou exatamente esse padrão no Code w/ Claude SF (Maio/2026). Aqui rodando 24/7 enquanto você dorme.

---

## Pré-requisitos

- macOS, Linux ou WSL
- Claude Code instalado e logado (plano Pro ou Max)
- Para o `research-agent`: nada extra (usa busca web nativa)
- Para o `social-agent`: opcionalmente um bot de Telegram/Discord pra automação (veja o brief dentro do arquivo)

Cada subagent tem uma seção "CUSTOMIZE THIS" no topo do arquivo. Edita pra apontar pras tuas pastas do Obsidian e teu tom de voz.

---

## Estrutura do repo

```
next-level-subagents/
├── README.md
├── install.sh
├── agents/
│   ├── vault-keeper.md
│   ├── social-agent.md
│   ├── decision-tracker.md
│   └── research-agent.md
├── examples/
└── LICENSE
```

---

## Quem fez

Matheus Vizotto. Growth marketing e IA. Fundador da Mindex Studio, criador do AI OS Builder.

PT-BR primeiro. Tudo aberto. Use, modifique, contribua.

---

## Licença

MIT. Use à vontade. Atribuição opcional mas valorizada.

---

## Imersão "Time de IA"

Os 4 subagents desse repo são a fundação. Na imersão eu mostro o que NÃO tá aqui:

- **reel-editor** — subagent que edita teu vídeo vertical sozinho
- **coordinator completo** — orquestrando 5 subagents em paralelo (Agent View)
- **1-2 subagents bônus** — surpresa pra quem tá na imersão
- **Customização pro teu trabalho específico**
- **Acesso vitalício à comunidade** — onde isso continua crescendo

Data, preço e vagas atualizados na página da imersão.

→ [Inscrever na imersão](https://matheusvizotto.com/pt-br/imersao-segundo-cerebro)

---

## Pra quem quer só os subagents grátis

Comenta `LISTA` num dos meus reels do @matheusvizotto e eu te mando o **PDF Quick-start dos 4 subagents** que aprofunda o setup, exemplos e personalização.
