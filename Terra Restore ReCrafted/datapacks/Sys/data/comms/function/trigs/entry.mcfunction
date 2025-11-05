scoreboard players operation $this entry.archive = @s entry.archive
scoreboard players set @s entry.archive -1

execute if score @s screen.archive matches 5 run return run function comms:pages/entry/enchatment