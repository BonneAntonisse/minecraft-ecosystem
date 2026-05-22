import requests
from pathlib import Path
from neo4j import GraphDatabase

# --- Configuratie ---
NEO4J_URI = "bolt://localhost:7687"
NEO4J_USER = "neo4j"
NEO4J_PASSWORD = "Groen.parkiet8"
OLLAMA_URL = "http://localhost:11434/api/embeddings"
EMBED_MODEL = "nomic-embed-text"

REPO_ROOT = Path(__file__).parent.parent
SCAN_DIRS = ["mods", "datapacks", "plugins", "scripts"]
EXTENSIONS = {".py", ".java", ".json", ".mcfunction", ".yml", ".yaml", ".md"}


def get_embedding(text: str) -> list:
    response = requests.post(OLLAMA_URL, json={"model": EMBED_MODEL, "prompt": text})
    response.raise_for_status()
    return response.json()["embedding"]


def setup_index(session):
    session.run("""
        CREATE VECTOR INDEX code_embedding IF NOT EXISTS
        FOR (n:CodeFile) ON n.embedding
        OPTIONS {indexConfig: {
            `vector.dimensions`: 768,
            `vector.similarity_function`: 'cosine'
        }}
    """)


def upsert_file(session, file_path: Path, content: str, embedding: list):
    relative = str(file_path.relative_to(REPO_ROOT)).replace("\\", "/")
    parts = file_path.relative_to(REPO_ROOT).parts
    category = parts[0] if parts else "overig"

    session.run("""
        MERGE (f:CodeFile {path: $path})
        SET f.name      = $name,
            f.category  = $category,
            f.extension = $extension,
            f.content   = $content,
            f.embedding = $embedding
    """, path=relative, name=file_path.name, category=category,
        extension=file_path.suffix, content=content[:5000], embedding=embedding)


def search(session, query: str, top_k: int = 5):
    embedding = get_embedding(query)
    results = session.run("""
        CALL db.index.vector.queryNodes('code_embedding', $k, $embedding)
        YIELD node, score
        RETURN node.path AS pad, node.category AS categorie, score
        ORDER BY score DESC
    """, k=top_k, embedding=embedding)
    return results.data()


def main():
    driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASSWORD))

    with driver.session() as session:
        setup_index(session)
        print("Vector index klaar.\n")

        files_processed = 0
        for scan_dir in SCAN_DIRS:
            dir_path = REPO_ROOT / scan_dir
            if not dir_path.exists():
                continue
            for file_path in dir_path.rglob("*"):
                if file_path.suffix not in EXTENSIONS or not file_path.is_file():
                    continue
                content = file_path.read_text(encoding="utf-8", errors="ignore")
                if not content.strip():
                    continue
                print(f"  Verwerken: {file_path.name} ... ", end="", flush=True)
                embedding = get_embedding(content[:4000])
                upsert_file(session, file_path, content, embedding)
                files_processed += 1
                print("OK")

        print(f"\nKlaar — {files_processed} bestanden opgeslagen in Neo4j.")

    driver.close()


if __name__ == "__main__":
    main()
