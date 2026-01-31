$function registry:skills/book_data {id:$(id)}
$data modify storage data run set value $(id)
data modify storage data text set from storage data item.components."minecraft:item_name".with[0]
data remove storage data text.color

loot give @s loot registry:uit/skill_book