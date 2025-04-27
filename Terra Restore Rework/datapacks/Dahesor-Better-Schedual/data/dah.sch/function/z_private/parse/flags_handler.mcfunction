
execute if data storage dah.sch:new new{flags:["no_executer"]} run data remove storage dah.sch:task this.by
execute if data storage dah.sch:new new{offline:"by_server"} run data modify storage dah.sch:task this.force set value 1b
execute if data storage dah.sch:new new{flags:["debug"]} run data modify storage dah.sch:task this.debug set value 1b