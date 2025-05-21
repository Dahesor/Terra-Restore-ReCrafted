#limit
execute if data storage registry:skill data[0].slot_limit{right:1b,off:0b,shift:0b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_limit",with:[[{text:"1 ("},{keybind:"key.use"},{text:")"}]],color:"red"}
execute if data storage registry:skill data[0].slot_limit{right:0b,off:1b,shift:0b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_limit",with:[[{text:"2 ("},{keybind:"key.swapOffhand"},{text:")"}]],color:"red"}
execute if data storage registry:skill data[0].slot_limit{right:0b,off:0b,shift:1b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_limit",with:[[{text:"3 ("},{keybind:"key.sneak"},{text:")"}]],color:"red"}

#lock
execute if data storage registry:skill data[0].slot_limit{right:0b,off:1b,shift:1b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_locked",with:[[{text:"1 ("},{keybind:"key.use"},{text:")"}]],color:"red"}
execute if data storage registry:skill data[0].slot_limit{right:1b,off:0b,shift:1b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_locked",with:[[{text:"2 ("},{keybind:"key.swapOffhand"},{text:")"}]],color:"red"}
execute if data storage registry:skill data[0].slot_limit{right:1b,off:1b,shift:0b} run return run data modify storage registry:skill data[0].lore append value {translate:"skill.slot_locked",with:[[{text:"3 ("},{keybind:"key.sneak"},{text:")"}]],color:"red"}
