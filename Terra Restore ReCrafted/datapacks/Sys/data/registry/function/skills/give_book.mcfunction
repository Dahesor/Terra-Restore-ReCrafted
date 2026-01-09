$function registry:skills/book_data {id:$(id)}

summon item ~ ~ ~ {Item:{id:"barrier"},PickupDelay:10s,Tags:["new_skill_book"]}
execute as @n[type=item,tag=new_skill_book] run data modify entity @s Item set from storage data item
execute as @n[type=item,tag=new_skill_book] run data modify entity @s PickupDelay set value 0s
execute as @n[type=item,tag=new_skill_book] run tag @s remove new_skill_book