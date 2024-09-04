$execute if data storage sys:data {terra:[$(id)]} run return fail
execute unless items entity @s weapon echo_shard[custom_data~{is_terra:1b}] run return fail
$execute unless items entity @s weapon echo_shard[custom_data~{terra:$(id)b}] run tellraw @a {"translate": "error.invalid_number","color": "red","with": [{"translate":"function.Sys.data.sys.function.plugin.base.restore.check_hand.line2","color": "yellow"}]}
$execute unless items entity @s weapon echo_shard[custom_data~{terra:$(id)b}] run return run playsound terra:ui.denied master @s ~ ~ ~ 1 1.3

$data modify storage sys:data terra append value $(id)

execute if score #temp calculator matches 1 run return run function sys:plugin/base/restore/entries/1
execute if score #temp calculator matches 2 run return run function sys:plugin/base/restore/entries/2
execute if score #temp calculator matches 3 run return run function sys:plugin/base/restore/entries/3
execute if score #temp calculator matches 4 run return run function sys:plugin/base/restore/entries/4
execute if score #temp calculator matches 5 run return run function sys:plugin/base/restore/entries/5
execute if score #temp calculator matches 6 run return run function sys:plugin/base/restore/entries/6
execute if score #temp calculator matches 7 run return run function sys:plugin/base/restore/entries/7
execute if score #temp calculator matches 8 run return run function sys:plugin/base/restore/entries/8
execute if score #temp calculator matches 9 run return run function sys:plugin/base/restore/entries/9
execute if score #temp calculator matches 10 run return run function sys:plugin/base/restore/entries/10
execute if score #temp calculator matches 11 run return run function sys:plugin/base/restore/entries/11
execute if score #temp calculator matches 12 run return run function sys:plugin/base/restore/entries/12
execute if score #temp calculator matches 13 run return run function sys:plugin/base/restore/entries/13
execute if score #temp calculator matches 14 run return run function sys:plugin/base/restore/entries/14
execute if score #temp calculator matches 15 run return run function sys:plugin/base/restore/entries/15
execute if score #temp calculator matches 16 run return run function sys:plugin/base/restore/entries/16