$data modify storage dah.sch:task run set value $(extra)
execute if data storage dah.sch:task run.as run function dah.sch:z_private/parse/as_handler with storage dah.sch:task run
execute if data storage dah.sch:task run.in run function dah.sch:z_private/parse/in_handler with storage dah.sch:task run
execute if data storage dah.sch:task run.flags run function dah.sch:z_private/parse/flags_handler with storage dah.sch:task run
execute if data storage dah.sch:task run.at_time run function dah.sch:z_private/parse/time_handler with storage dah.sch:task run