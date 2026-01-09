execute unless data storage sys:data player[0].skill[0].id run return run function sys:player/utils/skill_book/grant_skill

data modify storage temp skill set from storage sys:data player[0].skill
execute store result score #total_skill calculator run data get storage temp skill
execute store result score #changed calculator run data modify storage temp skill[].id set from storage data custom_data.skill_book.id
execute if score #total_skill calculator <= #changed calculator run return run function sys:player/utils/skill_book/grant_skill
return fail