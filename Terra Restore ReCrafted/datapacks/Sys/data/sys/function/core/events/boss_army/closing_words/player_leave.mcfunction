tp @s 2577.08 115.00 -979.52
stopsound @s record
scoreboard players set @s music -6

execute if score 11_closing data matches 1.. run return fail

scoreboard players set 11_closing data 1
schedule function sys:core/events/boss_army/closing_words/fireworks 300t
function #dah.sch:set {time:100,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.11"}]',extra:["no_entity"]}
function #dah.sch:set {time:300,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.12"}]',extra:["no_entity"]}
function #dah.sch:set {time:500,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.13"}]',extra:["no_entity"]}
function #dah.sch:set {time:700,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.14"}]',extra:["no_entity"]}
function #dah.sch:set {time:900,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.15"}]',extra:["no_entity"]}
function #dah.sch:set {time:1100,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.16"}]',extra:["no_entity"]}
function #dah.sch:set {time:1300,run:'tellraw @a [{"translate":"front.head"}," ",{"translate":"front.line.17"}]',extra:["no_entity"]}

schedule function sys:core/events/boss_army/closing_words/setup_wool 1s