#Some exmples of how to use this lib.
#Do not execute this function
return fail


#Exmple 1
data modify storage dlm: ticket set value {on_load:"say hello?"}
function dlm:temp_ticket_here

#Exmple 2
data modify storage dlm: ticket set value {id:"dlm:example/1",dimension:"overworld",pos:[10,20],to:[10,3,60],on_load:"say loaded"}
function dlm:new_ticket

#Exmple 3
data modify storage dlm: ticket set value {id:"dlm:example/2",dimension:"overworld",pos:{x:1000,z:-35653},on_load:["execute in overworld run setblock 1000 300 -35653 diamond_block","say loaded and placed diamond block!"],life:{type:"indefinite"}}
function dlm:new_ticket

#Exmple 4
data modify storage dlm: ticket set value {id:"dlm:example/3",dimension:"the_nether",pos:{x:-1000,z:3653},on_load:["execute in the_nether run setblock -1000 100 3653 emerald_block","say loaded and placed emerald block!"],life:{type:"temp"}}
function dlm:new_ticket

#Exmple 5
data modify storage dlm: ticket set value {id:"dlm:example/4",pos:{x:1000,z:1000},to:[1400, 0, 1020],on_load:["fill 1000 200 1000 1400 200 1020 stone","say Filled a lot of stone!"],life:{type:"wait",time:100}}
function dlm:new_ticket