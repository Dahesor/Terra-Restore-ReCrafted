execute if items entity @s weapon *[custom_data~{stats:{crit_damage:{}}}] run return run data get entity @s SelectedItem.components."minecraft:custom_data".stats.crit_damage.add
return 0