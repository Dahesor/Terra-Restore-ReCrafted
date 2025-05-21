# 小火球术
# 向前发射一颗小火球
# 造成(%s)的魔法伤害
# 如果可能，点燃目标

#数值
   scoreboard players set s.small_fireball.INT const 20
   scoreboard players set s.small_fireball.EDU const 5
#数值

data modify storage registry:skill temp append value \
\
{type:"damage",sid:"small_fireball",id:3,flags:["INT","damage"],mp_cost:120,cd:100,min_cd:50,icon:"terra:skill/small_fireball",\
entry:"registry:skills/attack/small_fireball/entry",\
lore:[{},{with:[{type:"expression",stats:"INT",extra:"%",name:"s.small_fireball.INT",target:{name:"s.small_fireball.EDU",stats:"EDU",extra:"%"}}]},{}]}