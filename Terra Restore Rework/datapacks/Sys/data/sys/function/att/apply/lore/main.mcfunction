data modify storage sys:data lore set value ['""','{"translate": "sys.modifiers.mainhand","color": "gray","italic": false}']
function sys:att/apply/lore/dmg/dmg
function sys:att/apply/lore/attspd/apd
execute if data storage sys:mod result[{id:"attack_damage",operation:"add_multiplied_base"}] run function sys:att/apply/lore/extras/attmult
execute if data storage sys:mod result[{id:"entity_interaction_range"}] run function sys:att/apply/lore/extras/range with storage sys:mod result[{id:"entity_interaction_range"}]
execute if data storage sys:mod result[{id:"attack_knockback"}] run function sys:att/apply/lore/extras/knock with storage sys:mod result[{id:"attack_knockback"}]
execute if data storage sys:mod result[{id:"sweeping_damage_ratio"}] run function sys:att/apply/lore/extras/sweep
execute if data storage sys:mod result[{id:"movement_speed"}] run function sys:att/apply/lore/extras/speed
execute if data storage sys:mod result[{id:"knockback_resistance"}] run function sys:att/apply/lore/extras/kn_resis
execute if data storage sys:mod result[{id:"explosion_knockback_resistance"}] run function sys:att/apply/lore/extras/ex_kn_resis
execute if data storage sys:mod result[{id:"safe_fall_distance"}] run function sys:att/apply/lore/extras/safe_fall with storage sys:mod result[{id:"safe_fall_distance"}]

execute unless data storage sys:data item.components."minecraft:lore" run return run data modify storage sys:data item.components."minecraft:lore" set from storage sys:data lore
data modify storage temp test set from storage sys:data item.components."minecraft:lore"[0]
execute if data storage temp {test:'{"translate":"identification.click"}'} run data remove storage sys:data item.components."minecraft:lore"[0]
data modify storage sys:data item.components."minecraft:lore" append from storage sys:data lore[]