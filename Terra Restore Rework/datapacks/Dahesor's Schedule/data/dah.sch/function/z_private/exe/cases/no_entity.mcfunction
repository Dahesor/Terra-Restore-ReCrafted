$execute positioned $(pos_x) $(pos_y) $(pos_z) rotated $(rot_x) $(rot_y) run $(run)

execute if data storage dah.sch:task this.debug run function dah.sch:z_private/debug/finished
return 1