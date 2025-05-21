function sys:att/apply/lore/to_percentage
execute if data storage data di{sign:"-"} run data modify storage data sum_text.color set value "red"
execute if data storage data di{sign:"+"} run data modify storage data sum_text.color set value "#1da8f2"
data modify storage data sum_text.with[1].extra[0] set from storage data text
data modify storage data lore append from storage data sum_text