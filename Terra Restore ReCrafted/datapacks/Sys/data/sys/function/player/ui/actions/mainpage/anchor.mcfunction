scoreboard players set @s ui 1
function sys:player/uid/get
data modify storage sys:data player[0].pack set from entity @s Inventory
function sys:player/ui/pages/mainpage