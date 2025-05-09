from mcf.utils import *

def general_(ws, _col_map_in, attributes, slots):
    # 读取表头
    headers = [cell.value.strip() if cell.value else "" for cell in next(ws.iter_rows(min_row=1, max_row=1))]

    # 找出各列索引
    col_map = {key: headers.index(key) for key in _col_map_in}
    for attr in attributes:
        if attr not in headers:
            headers.append(attr)

    attr_indices = {attr: headers.index(attr) for attr in attributes}

    # 生成 .mcfunction 行
    lines = []
    for row in ws.iter_rows(min_row=2):
        if (row[col_map["中文名"]].value is None) or (row[col_map["英文前缀"]].value) is None:
            continue
        zh_name, score, rarity, prefix_id, negative = general_info(row, col_map)

        # 构建属性 scale
        stats = get_stats(attributes, attr_indices, row)
        atts = get_atts(attributes, attr_indices, row)
        stats_effects = "{" + ",".join(stats) + "}"
        att_effects = "{" + ",".join(atts) + "}"

        # 添加注释与语句
        lines.append(f"# {zh_name}")
        lines.append(
            f'data modify storage registry:prefix new append value '
            f'{{id:"{prefix_id}",for:{slots},'
            f'negative:{negative},rarity:{rarity},stats_effects:{stats_effects},att_effects:{att_effects},value:{score}}}'
        )
        lines.append("")
    return lines
