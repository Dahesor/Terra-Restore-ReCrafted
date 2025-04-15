advancement revoke @s only sys:item_in
execute if entity @s[tag=stop_att] run return fail
execute store result score #temp calculator run clear @s #sys:may_att[!custom_data~{att_lock:1b}] 0
execute unless score #temp calculator matches 1.. run return fail

#execute if items entity @s container.* #sys:may_att[!custom_data~{parsed:1b}] run function sys:att/mentions/exhusion

execute if score @s mentionCD matches 1.. run return fail
tellraw @s {"translate": "att.hint","color": "green","with": [{"score": {"name": "#temp","objective": "calculator"},"color": "yellow"}]}
scoreboard players set @s mentionCD 120