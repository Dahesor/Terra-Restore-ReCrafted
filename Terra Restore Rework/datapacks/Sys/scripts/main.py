from lang.entry import *
from mcf.find import *

if __name__ == "__main__":
    source = "scripts/大地复苏_prefix.xlsx"
    types = ["generic","armor","melee"]
    generate_mcfunction(source, types=types)
    generate_lang_json(source, output_dir="../../../../resourcepacks/Resource Pack for Terra Restore/lang/assets/", types=types)
