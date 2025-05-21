# $(type)

data remove storage data pr
data modify storage data prefixs set value []

#获取可用前缀
$data modify storage data prefixs append from storage registry:prefix data[{for:["$(type)"]}]

#抽取一个前缀
data modify storage temp run set value {max:1}
execute store result score #temp calculator if data storage data prefixs[]
scoreboard players remove #temp calculator 1
execute store result storage temp run.max int 1 run scoreboard players get #temp calculator
execute store result storage temp run.max int 1 run function sys:plugin/math/_random_base_ with storage temp run
function sys:att/apply/prefix/_pickup_ with storage temp run
data remove storage data prefixs