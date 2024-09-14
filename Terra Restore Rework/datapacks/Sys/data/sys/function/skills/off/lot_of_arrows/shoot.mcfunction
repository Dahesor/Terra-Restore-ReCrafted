#3

execute positioned ~ ~1 ~ facing entity @e[type=#sys:mobs,limit=5,distance=..14] eyes summon arrow run function sys:skills/off/lot_of_arrows/change_motion

scoreboard players set @s CD.off 180
playsound entity.arrow.shoot master @a