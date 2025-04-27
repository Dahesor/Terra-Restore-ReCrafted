data modify storage dah.sch:task run set from storage dah.sch:new new
execute if data storage dah.sch:task run.in run function dah.sch:z_private/parse/in_handler
execute if data storage dah.sch:task run.flags run function dah.sch:z_private/parse/flags_handler with storage dah.sch:task run