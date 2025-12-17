execute if entity @s[scores={dfh.item_fix=1..}] run function dfh:player/clear_item
execute if score virtual_health dfh.settings matches 1 run function dfh:player/vh
function dfh:hp/re_record
function dfh:player/read_data