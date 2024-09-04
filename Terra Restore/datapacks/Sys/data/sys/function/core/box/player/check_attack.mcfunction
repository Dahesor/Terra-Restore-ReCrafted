execute on attacker unless entity @s[tag=interation_temp] run return fail
execute unless data entity @s attack.player run return fail
scoreboard players operation #temp calculator = @s loot_box
data remove entity @s attack