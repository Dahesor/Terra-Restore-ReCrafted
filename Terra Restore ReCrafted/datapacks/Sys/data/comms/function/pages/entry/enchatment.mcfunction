data modify storage comms:unlocked temp set value {index:0}
execute store result storage comms:unlocked temp.index int 1 run scoreboard players get $this entry.archive
function comms:utils/get_entry/__enchantment with storage comms:unlocked temp

data modify storage comms:unlocked dialog.this set value {type:"confirmation",title:"",pause:false,can_close_with_escape:true,after_action:"none",no:{label:{"translate":"gui.done"},action:{type:"run_command",command:"/trigger menu.archive set -1"}},yes:{label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger menu.archive set 5"}},body:[{"type":"plain_message",contents:""}]}

data modify storage comms:unlocked dialog.this.title set from storage comms:unlocked run.ench.title
data modify storage comms:unlocked dialog.this.body append value {type:"item",item:{id:"barrier",components:{item_model:"air"}},width:32,height:32,description:["",{translate:"",color:"yellow",font:"terra:title"},"         "]}
data modify storage comms:unlocked dialog.this.body[-1].description[1].translate set from storage comms:unlocked run.ench.title.translate

data modify storage comms:unlocked dialog.this.body append value {"type":"plain_message",contents:"",width:400}
data modify storage comms:unlocked dialog.this.body append value {"type":"plain_message",contents:"",width:400}
data modify storage comms:unlocked dialog.this.body append value {"type":"plain_message",contents:"",width:400}
data modify storage comms:unlocked dialog.this.body append value {"type":"plain_message",contents:"",width:400}

data modify storage comms:unlocked dialog.this.body[-3].contents set from storage comms:unlocked run.ench.lines[0]
data modify storage comms:unlocked dialog.this.body[-2].contents set from storage comms:unlocked run.ench.lines[1]
data modify storage comms:unlocked dialog.this.body[-1].contents set from storage comms:unlocked run.ench.lines[2]


function comms:utils/__dialog with storage comms:unlocked dialog