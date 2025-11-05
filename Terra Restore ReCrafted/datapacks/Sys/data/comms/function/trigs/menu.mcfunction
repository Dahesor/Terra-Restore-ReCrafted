scoreboard players operation $this menu.archive = @s menu.archive
scoreboard players set @s menu.archive 0

scoreboard players enable @s menu.archive

execute if score $this menu.archive matches 100.. at @s run playsound ui.button.click ui @s ~ ~ ~ 1 1.1 1
execute if score $this menu.archive matches 100.. run scoreboard players remove $this menu.archive 100

execute if score $this menu.archive matches -1 run dialog clear @s
execute if score $this menu.archive matches -2 run return run dialog show @s comms:archive

execute if score $this menu.archive matches 5 run return run function comms:pages/enchantment