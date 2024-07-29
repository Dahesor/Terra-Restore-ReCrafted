# $(task)
$data modify storage dah.sch:task run2 set value $(flags)
execute if data storage dah.sch:task {run2:["no_entity"]} run data remove storage dah.sch:task stash[-1].by
execute if data storage dah.sch:task {run2:["force_run"]} run data modify storage dah.sch:task stash[-1].force set value 1b
execute if data storage dah.sch:task {run2:["debug"]} run data modify storage dah.sch:task stash[-1].debug set value 1b

data modify storage dah.sch:task stash[-1].flags set from storage dah.sch:task run