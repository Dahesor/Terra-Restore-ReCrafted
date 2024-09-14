scoreboard players set boss_1_bow data 0
setblock 347 49 -784 red_stained_glass
function #dah.sch:set {time:20,run:"setblock 347 49 -784 yellow_stained_glass",extra:{flags:["no_entity"]}}
function #dah.sch:set {time:40,run:"setblock 347 49 -784 green_stained_glass",extra:{flags:["no_entity"]}}
function #dah.sch:set {time:60,run:"setblock 347 49 -784 air",extra:{flags:["no_entity"]}}
schedule function sys:core/events/boss_wither/moves/spawn_bow 3s
setblock 347 49 -808 cake[bites=0]
setblock 347 49 -760 cake[bites=0]