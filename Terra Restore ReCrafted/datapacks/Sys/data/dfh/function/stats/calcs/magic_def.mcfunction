scoreboard players operation #temp dfh.calculator = @s dfh.ench_defence

execute if score #temp dfh.calculator matches 1.. run function dfh:stats/calcs/magic_def_parse
execute if score #temp dfh.calculator matches 1.. run function dah.actbar_mixer:append/before