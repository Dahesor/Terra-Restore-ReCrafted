scoreboard players set @s right.pause 6
item replace entity @s weapon with air
playsound block.note_block.harp master @s ~ ~ ~ 1 1.2 1
tellraw @s {translate:"action.learn_success",color:"light_purple",with:[{storage:"data",nbt:"custom_data.skill_book.displayName",interpret:true}],hover_event:{action:"show_text",value:{storage:"data",nbt:"custom_data.skill_book.description[]",interpret:true,separator:"\n"}}}