#$(id)

function sys:player/uid/get
$data remove storage sys:data player[0].skill[{id:$(id)}]
$data modify storage sys:data player[0].skill append value {id:$(id)}