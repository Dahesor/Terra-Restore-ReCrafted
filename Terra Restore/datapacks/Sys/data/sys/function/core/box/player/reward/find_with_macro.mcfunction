$execute unless data storage sys:loot_box test{players:[{UID:$(UID)}]} run return 0
$data remove storage sys:loot_box data[0].players[{UID:$(UID)}]
return 1
