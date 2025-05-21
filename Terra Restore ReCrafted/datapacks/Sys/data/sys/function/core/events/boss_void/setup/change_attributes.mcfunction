$data merge entity @s {AbsorptionAmount:$(value)f}

scoreboard players set @s genericCD -90
scoreboard players set boss_void_anger data 1000
$scoreboard players add boss_void_anger data $(value)
scoreboard players operation boss_void_anger data /= #5 calculator