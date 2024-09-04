function sys:player/uid/get
data modify storage temp item set value []
data modify storage temp save set from storage sys:data player[0].pack
execute if data storage temp save[0] run function sys:player/ui/actions/inventory/sort_data