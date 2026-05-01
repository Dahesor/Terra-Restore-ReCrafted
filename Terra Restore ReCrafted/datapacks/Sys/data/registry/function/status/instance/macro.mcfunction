$data modify storage registry:status this set from storage registry:status data[{id:"$(id)"}]
data modify storage registry:status instance set value {instance:0,content:[{text:""}]}
data modify storage registry:status instance.id set from storage registry:status this.id
scoreboard players add #Status_Instance data 1
execute store result storage registry:status instance.instance int 1 run scoreboard players get #Status_Instance data
data modify storage registry:status instance.content append from storage registry:status this.body
execute if data storage registry:status this.extra run data modify storage registry:status instance.content append from storage registry:status this.extra
