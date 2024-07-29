scoreboard players set result dah.sch.ram 0
execute if data storage dah.sch:task this.by store result score result dah.sch.ram run function dah.sch:z_private/exe/out with storage dah.sch:task this
execute unless data storage dah.sch:task this.by store result score result dah.sch.ram run function dah.sch:z_private/exe/cases/no_entity with storage dah.sch:task this

execute if score result dah.sch.ram matches 0 if data storage dah.sch:task this.debug run function dah.sch:z_private/debug/error