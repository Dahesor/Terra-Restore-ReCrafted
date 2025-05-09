import openpyxl
import os
from mcf.types import *


def generate_mcfunction(xlsx_path, output_path="data/registry/function/prefix/",types=["generic"]):
    wb = openpyxl.load_workbook(xlsx_path, data_only=True)

    for type in types:
        ws = wb[type]
        parser = get_types(type)
        lines = parser(ws)
        this_path = os.path.join(output_path, type, "package.mcfunction")
        os.makedirs(os.path.dirname(this_path), exist_ok=True)
        # 写入文件
        with open(this_path, "w", encoding="utf-8") as f:
            f.write("\n".join(lines))
        print(f"✅ .mcfunction 文件已生成：{this_path}")

def get_types(type):
    if type == "generic":
        return type_generic
    elif type == "armor":
        return type_armor
    elif type == "melee":
        return type_melee
    else:
        raise ValueError("Invalid type")


