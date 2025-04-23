scoreboard players operation %count calculator = @s sub_ui
function sys:player/uid/get
data modify storage data skill set from storage sys:data player[0].skill
data modify entity 0-0-0-0-0 Items set value []
data modify storage sys:data Inv set value []

execute if score %count calculator matches 1.. run function sys:player/ui/actions/change_skill/render/step_to

execute if data storage data skill[0].id run function sys:player/ui/actions/change_skill/render/each

data modify entity 0-0-0-0-0 Items set from storage sys:data Inv
function sys:player/ui/actions/change_skill/render/fill_items