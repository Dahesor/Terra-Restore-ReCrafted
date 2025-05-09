from mcf.parser import *

def type_armor(ws):
    col_map = ["中文名", "英文前缀", "评分", "稀有度"]
    attributes = ["STR", "CON", "DEX", "POW", "EDU", "INT", "crit_chance", "crit_damage"]
    slots = ["helmet","chestplate","leggings","boots"]
    return general_(ws, col_map, attributes,slots=slots)

def type_generic(ws):
    col_map = ["中文名", "英文前缀", "评分", "稀有度"]
    attributes = ["crit_chance", "crit_damage"]
    slots = ["helmet","chestplate","leggings","boots","sword","axe","bow","crossbow"]
    return general_(ws, col_map, attributes,slots=slots)

def type_melee(ws):
    col_map = ["中文名", "英文前缀", "评分", "稀有度"]
    attributes = ["crit_chance", "crit_damage","melee_damage","attack_speed","reach","knockback"]
    slots = ["sword","axe"]
    return general_(ws, col_map, attributes,slots=slots)