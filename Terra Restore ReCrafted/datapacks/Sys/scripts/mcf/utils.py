def safe_int(val):
    try:
        return int(val)
    except:
        return 0

def safe_float(val):
    try:
        return float(val)
    except:
        return 0

def general_info(row, col_map):
    zh_name = row[col_map["中文名"]].value
    en_prefix = row[col_map["英文前缀"]].value
    score = safe_int(row[col_map["评分"]].value)
    rarity = safe_int(row[col_map["稀有度"]].value) if row[col_map["稀有度"]].value else 0
    prefix_id = "" + en_prefix.strip().lower().replace(" ", "_").replace("-", "_")
    negative = "1b" if rarity<0 else "0b"
    return zh_name, score, rarity, prefix_id, negative

def get_stats(attributes, attr_indices, row):
    stats = []
    for attr in attributes:
        if attr not in ["STR", "CON", "DEX", "POW", "EDU", "INT", "crit_chance", "crit_damage"]:
            continue
        val = row[attr_indices[attr]].value
        val = safe_float(val)
        if val != 0:
            if attr in ["crit_chance", "crit_damage"]:
                add = safe_int(val * 10)
                stats.append(f"{attr}:{{add:{add}}}")
            else:
                scale = round(val / 100, 3)
                stats.append(f"{attr}:{{scale:{scale}d}}")
    return stats

def get_atts(attributes, attr_indices, row):
    atts = []
    for attr in attributes:
        if attr not in ["melee_damage","attack_speed","reach","knockback","sweep"]:
            continue
        val = row[attr_indices[attr]].value
        val = safe_int(val)
        if val != 0:
            if attr in ["attack_speed","reach","sweep"]:
                add = round(val / 100, 3)
                atts.append(f"{attr}:{{op:\"add\",value:{add}d}}")
            else:
                scale = round(val / 100, 3)
                atts.append(f"{attr}:{{op:\"scale\",value:{scale}d}}")
    return atts