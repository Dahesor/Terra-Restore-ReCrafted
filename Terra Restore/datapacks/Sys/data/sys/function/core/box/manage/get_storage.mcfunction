# $(id)

$data modify storage sys:loot_box test set from storage sys:loot_box data[{id:$(id)}]
$data remove storage sys:loot_box data[{id:$(id)}]
data modify storage sys:loot_box data prepend from storage sys:loot_box test