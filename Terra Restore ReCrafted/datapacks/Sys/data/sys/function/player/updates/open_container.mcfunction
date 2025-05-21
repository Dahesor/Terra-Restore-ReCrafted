advancement revoke @s only sys:open_container
advancement revoke @s only sys:use_chest_minecart
tag @s add reading_container
scoreboard players set @s zcache_timer 10
function sys:player/ui/foolproof/interactions/container
function sys:player/trigs/fool/container