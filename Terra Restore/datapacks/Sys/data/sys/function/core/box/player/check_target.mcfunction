execute on target unless entity @s[tag=interation_temp] run return fail
execute unless data entity @s interaction.player run return fail
scoreboard players operation #temp calculator = @s loot_box
data remove entity @s interaction