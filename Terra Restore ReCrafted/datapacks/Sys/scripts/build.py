from reg.status import write_status_outputs as status_main
from pathlib import Path

if __name__ == "__main__":
    status_main(Path("./mcdoc/reg/status_ids.mcdoc"),Path("../../../../resourcepacks/Resource Pack for Terra Restore/lang/assets/status/lang/en_us.json"),[Path("./data/registry/function/status/generic")])
