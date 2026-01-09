data modify storage sys:data player[0].skill append value {id:0,sid:""}
data modify storage sys:data player[0].skill[-1].id set from storage data custom_data.skill_book.id
data modify storage sys:data player[0].skill[-1].sid set from storage data custom_data.skill_book.sid
return 1