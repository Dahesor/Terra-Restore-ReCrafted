execute if items entity @s weapon *[custom_data~{stats:{crit_chance:{}}}] run return run data get entity @s SelectedItem.components."minecraft:custom_data".stats.crit_chance.add
return 0