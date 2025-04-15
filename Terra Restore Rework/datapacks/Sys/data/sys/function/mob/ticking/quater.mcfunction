execute if entity @s[tag=flamming_soul] run function sys:mob/ticking/flamming_soul
execute if entity @s[tag=roar_spider] run function sys:mob/instances/ai
execute if entity @s[tag=prison_guard] run function sys:mob/instances/prison_guard/ai
execute if entity @s[tag=mad_witch] run function sys:mob/instances/mad_witch/ai
execute if entity @s[tag=tp_sender] run function sys:player/utils/tp/display/particle
execute if score @s enchant.corrosion matches 1.. run function sys:player/attack/enchant/corrosion_remove