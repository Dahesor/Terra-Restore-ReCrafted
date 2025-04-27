$data modify storage dah.sch:task temp set from storage dah.sch:task player[{UID:$(UID)}]
$data remove storage dah.sch:task player[{UID:$(UID)}]
data modify storage dah.sch:task player prepend from storage dah.sch:task temp