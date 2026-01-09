function dfh:logic/default_revive

function #dfh:on_revive

tag @s add dfh.reset_hp
scoreboard players set @s dfh.monitor.HP 10000
function dfh:logic/monitor/reset_shield