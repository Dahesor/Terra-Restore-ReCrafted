execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"click"}}}] run playsound ui.button.click master @s ~ ~ ~ 1 1 1
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"click_high"}}}] run playsound ui.button.click master @s ~ ~ ~ 1 1.4 1
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"ding"}}}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"dong"}}}] run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"deny"}}}] run playsound terra:ui.denied master @s ~ ~ ~ 1 1.3 1
