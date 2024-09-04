execute if score 14_3_in_use data matches 1.. run return fail
scoreboard players set 14_3_in_use data 1

function sys:legacy/14_utils/tnts
execute positioned 3357 180 -693 as @a[distance=..5] at @s if block ~ ~-1.9 ~ bedrock run effect give @s resistance 7 10 true
execute positioned 3357 180 -693 as @a[distance=..5] at @s if block ~ ~-1.9 ~ bedrock run tp @s 3365 183 -693
function #dah.sch:set {time:101,run:'scoreboard players reset 14_3_in_use',extra:{flags:["no_entity"]}}
