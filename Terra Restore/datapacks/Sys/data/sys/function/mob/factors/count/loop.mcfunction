execute store result score $temp calculator run random value 1..100
execute if score $temp calculator > factor options run return fail
function sys:mob/factors/count/dupe
scoreboard players remove factor options 100
execute if score factor options matches 1.. run function sys:mob/factors/count/loop