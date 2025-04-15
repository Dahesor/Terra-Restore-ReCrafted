#Get original damage
execute store result score $temp hp_cache run data get storage sys:data mobData.Health 100
execute store result score $temp2 hp_cache run data get storage sys:data mobData.AbsorptionAmount 100
scoreboard players operation $temp hp_cache += $temp2 hp_cache
scoreboard players operation $base_damage dmg = @s hp_cache
scoreboard players operation $base_damage dmg -= $temp hp_cache
scoreboard players operation $original_damage dmg = $base_damage dmg