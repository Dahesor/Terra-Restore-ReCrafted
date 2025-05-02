execute if score @s health matches ..20 unless entity @s[tag=hud.roll_1] run function sys:player/stats/updated
execute if score @s health matches 21..40 unless entity @s[tag=hud.roll_2] run function sys:player/stats/updated
execute if score @s health matches 41..60 unless entity @s[tag=hud.roll_3] run function sys:player/stats/updated