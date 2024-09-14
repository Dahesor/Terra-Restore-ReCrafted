data modify storage sys:data tp append from storage sys:data test
execute store result score $from calculator run data get storage sys:data test.by
execute if score $from calculator matches 1.. run function sys:core/tp/ann_player with storage sys:data test
execute if score $from calculator matches ..-100 run function sys:core/tp/ann_system with storage sys:data test