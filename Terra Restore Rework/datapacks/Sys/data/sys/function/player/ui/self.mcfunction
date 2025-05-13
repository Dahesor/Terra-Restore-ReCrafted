execute if score @s ui matches 1.. run function sys:player/ui/foolproof/interactions/check_close
execute if items entity @s player.cursor *[custom_data~{ui:{}}] run function sys:player/ui/foolproof/restore
execute if score @s ui matches 1.. if items entity @s hotbar.* *[custom_data~{ui:{}}] run function sys:player/ui/foolproof/redirect
execute if score @s ui.drop_slot matches 1.. at @s run function sys:player/ui/foolproof/dropped_item
execute if score @s ui.drop_head matches 1.. at @s run function sys:player/ui/foolproof/dropped_head

execute if entity @s[tag=riding_container] if function sys:player/ui/foolproof/interactions/if_still_riding run function sys:player/ui/foolproof/interactions/riding_stop
execute if score @s zcache_timer matches 1.. run return run function sys:player/ui/foolproof/interactions/wait_to_save
execute if entity @s[tag=reading_container] if function sys:player/ui/foolproof/interactions/check_rot run function sys:player/ui/foolproof/interactions/free_to_open


execute unless score @s ui matches ..0 run return fail
execute store result score #temp calculator if items entity @s container.* player_head[custom_data~{ui:{id:'head',head:1b}}]
execute unless score #temp calculator matches 1 run function sys:player/ui/foolproof/fill_head