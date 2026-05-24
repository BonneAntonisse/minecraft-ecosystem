import os
import json
from PIL import Image, ImageDraw

OUTPUT = r"C:\Users\bonne\AppData\Roaming\.minecraft\resourcepacks\orbital_weapons"

WEAPONS = [
    {"name": "stab_rod",      "cmd_id": 1001, "bg": (40,  0,  120), "accent": (120, 60, 255), "label": "Stab Shot"},
    {"name": "nuke_rod",      "cmd_id": 1002, "bg": (180, 60,  0),  "accent": (255, 200, 0),  "label": "Nuke Shot"},
    {"name": "lawnuke_rod",   "cmd_id": 1003, "bg": (0,  100,  20), "accent": (0,  255, 80),  "label": "Law-Nuke Shot"},
    {"name": "lightning_rod2","cmd_id": 1004, "bg": (20,  20,  80), "accent": (255, 255, 0),  "label": "Lightning Strike"},
    {"name": "meteor_rod",    "cmd_id": 1005, "bg": (120,  0,   0), "accent": (255, 100, 0),  "label": "Meteor Strike"},
    {"name": "blackhole_rod",  "cmd_id": 1006, "bg": (5,    0,  20), "accent": (150,   0, 255), "label": "Black Hole"},
    {"name": "timestop_rod",  "cmd_id": 1007, "bg": (0,  120, 200), "accent": (200, 230, 255), "label": "Timestop"},
    {"name": "doomsday_rod",  "cmd_id": 1008, "bg": (80,   0,   0), "accent": (255,  50,   0), "label": "Doomsday"},
    {"name": "chicken_rod",  "cmd_id": 1009, "bg": (200, 160,   0), "accent": (255, 220,   0), "label": "Chicken Rain"},
]

def make_texture(bg, accent, path):
    img = Image.new("RGBA", (16, 16), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    # Gekleurde achtergrond rechthoek
    d.rectangle([1, 1, 14, 14], fill=(*bg, 255))
    # Rand in accent kleur
    d.rectangle([0, 0, 15, 15], outline=(*accent, 255))
    d.rectangle([2, 2, 13, 13], outline=(*accent, 180))
    # Diagonale stok
    for i in range(4, 14):
        d.point((i, 15 - i), fill=(*accent, 255))
        if i < 13:
            d.point((i+1, 15 - i), fill=(*accent, 150))
    img.save(path)

def main():
    tex_dir  = os.path.join(OUTPUT, "assets", "minecraft", "textures", "item")
    model_dir = os.path.join(OUTPUT, "assets", "minecraft", "models", "item")
    items_dir = os.path.join(OUTPUT, "assets", "minecraft", "items")
    os.makedirs(tex_dir,   exist_ok=True)
    os.makedirs(model_dir, exist_ok=True)
    os.makedirs(items_dir, exist_ok=True)

    # pack.mcmeta — pack_format 57 voor 26.x
    with open(os.path.join(OUTPUT, "pack.mcmeta"), "w") as f:
        json.dump({"pack": {"pack_format": 57, "description": "Orbital Weapons"}}, f, indent=2)

    cases = []
    for w in WEAPONS:
        make_texture(w["bg"], w["accent"], os.path.join(tex_dir, f"{w['name']}.png"))

        model = {
            "parent": "minecraft:item/handheld_rod",
            "textures": {"layer0": f"minecraft:item/{w['name']}"}
        }
        with open(os.path.join(model_dir, f"{w['name']}.json"), "w") as f:
            json.dump(model, f, indent=2)

        cases.append({
            "when": float(w["cmd_id"]),
            "model": {"type": "minecraft:model", "model": f"minecraft:item/{w['name']}"}
        })

    def make_select(fallback_model):
        return {
            "type": "minecraft:select",
            "property": "minecraft:custom_model_data",
            "index": 0,
            "cases": cases,
            "fallback": {"type": "minecraft:model", "model": fallback_model}
        }

    # assets/minecraft/items/fishing_rod.json (nieuw formaat 1.21.4+)
    fishing_rod_item = {
        "model": {
            "type": "minecraft:condition",
            "property": "minecraft:fishing_rod/cast",
            "on_false": make_select("minecraft:item/fishing_rod"),
            "on_true":  make_select("minecraft:item/fishing_rod_cast")
        }
    }
    with open(os.path.join(items_dir, "fishing_rod.json"), "w") as f:
        json.dump(fishing_rod_item, f, indent=2)

    print("Resource pack klaar!")
    for w in WEAPONS:
        print(f"  {w['label']}: custom_model_data={w['cmd_id']}")

if __name__ == "__main__":
    main()
