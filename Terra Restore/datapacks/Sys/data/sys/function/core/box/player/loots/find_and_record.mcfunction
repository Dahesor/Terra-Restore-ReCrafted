$execute if data storage sys:loot_box test{players:[{UID:$(UID)}]} run return 0
function sys:player/uid/get
data modify storage temp run set value {UID:0,UUID:"0-0-0-0-0"}
data modify storage temp run.UID set from storage sys:data player[0].UID
data modify storage temp run.UUID set from storage sys:data player[0].UUID
data modify storage sys:loot_box data[0].players append from storage temp run
return 1
