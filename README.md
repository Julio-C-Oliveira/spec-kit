Adaptado para o Antigravity.

# 1. Crie e acesse a pasta do seu novo projeto
mkdir meu-novo-projeto
cd meu-novo-projeto
git init

# 2. Copie as pastas .agent e templates do seu repositório spec-kit local
```
cp -r /caminho/para/o/seu/spec-kit/.agent /caminho/para/o/seu/spec-kit/templates .
```

# 3. Crie a pasta onde o agente salvará a constituição e as features
mkdir -p .specify/memory specs

**A raiz do projeto vai ficar assim:**
```
meu-novo-projeto/
├── .agent/              <- Antigravity lê os workflows daqui
│   └── workflows/
│       ├── speckit-constitution.md
│       ├── speckit-specify.md
│       └── ...
├── templates/           <- Modelos de spec.md, plan.md, etc.
├── .specify/
│   └── memory/          <- Onde será gravada a constitution.md
├── specs/               <- Onde o agente criará as pastas de features
└── (arquivos do seu código que virão depois)
```
# 3. Primeiros passos no Antigravity
- Abra o projeto na pasta.
- Rode o comando inicial
    ```
    /speckit-constitution descrição do projeto... Ex: O projeto é uma API Node.js usando Fastify, TypeScript estrito, banco PostgreSQL com Drizzle ORM e testes unitários com Vitest. Todo código novo deve ter tipagem estrita e testes cobrindo fluxos felizes e de erro.
    ```

# 4. Criar a feature
- /speckit-constitution (regras do repositório)
- /speckit-specify (o que e por que)
- /speckit-clarify (tira dúvidas e casos de borda)
- /speckit-plan (arquitetura e modelos)
- /speckit-tasks (quebra em checklist atômico)
- /speckit-analyze (auditoria cruzada: Spec <-> Plan <-> Tasks)
- /speckit-implement (codificação assistida)
- /speckit-converge (auditoria final: Código <-> Spec)
