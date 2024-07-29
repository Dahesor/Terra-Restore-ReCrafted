
$execute unless entity $(by) if data storage dah.sch:task this.force run return run function dah.sch:z_private/exe/cases/no_entity with storage dah.sch:task this
$execute unless entity $(by) unless data storage dah.sch:task this.force if data storage dah.sch:task this.debug run function dah.sch:z_private/debug/missing_as

$execute as $(by) positioned $(pos_x) $(pos_y) $(pos_z) rotated $(rot_x) $(rot_y) run $(run)

execute if data storage dah.sch:task this.debug run function dah.sch:z_private/debug/finished
return 1