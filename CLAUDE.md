# Minecraft Ecosystem — Projectdocumentatie

## Doel
Minecraft Java mods, datapacks en plugins ontwikkelen met een kennisgraaf (Neo4j) en semantische zoekfunctie (Ollama embeddings) als geheugen.

## Stack
| Component | Versie | Doel |
|---|---|---|
| Minecraft Java | 26.1.2 | Game |
| Neo4j Desktop | 1.6.3 | Knowledge graph + vector search |
| Ollama + nomic-embed-text | 0.24.0 | Lokale embeddings (gratis, geen API) |
| Python | 3.12 | Pipeline scripts |
| GitHub | — | Versiebeheer |

## Mapstructuur
```
minecraft-ecosystem/
├── mods/          ← Java mods (Fabric/Forge)
├── datapacks/     ← JSON datapacks voor vanilla+ gameplay
├── plugins/       ← Server plugins (Bukkit/Paper)
├── scripts/       ← Losse hulpscripts
└── pipeline/
    ├── embed.py            ← Indexeert code naar Neo4j
    ├── log_conversation.py ← Slaat gesprekken op in Neo4j
    └── requirements.txt
```

## Automatisering
- **Git hook** (`post-commit`): draait `embed.py` na elke commit
- **Claude Code hooks** (`UserPromptSubmit` + `Stop`): slaat elk gesprek op in Neo4j

## Neo4j
- URI: `bolt://localhost:7687`
- User: `neo4j`
- Credentials: zie `.env` (nooit committen)
- Nodes: `CodeFile` (code), `Message` (gesprekken)
- Vector index: `code_embedding` (768 dimensies, cosine similarity)

## Minecraft werelden
- `orbital` — hoofdwereld (Creative Mode)
- `orbital-test` — testwereld voor nieuwe features (Survival Mode)

## Credentials
Sla op in `.env` (staat in `.gitignore`):
```
NEO4J_PASSWORD=...
```

## Open plannen
Zie GitHub Issues.
