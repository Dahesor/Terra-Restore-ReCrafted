# 昂扬斗志
# 点燃自身的斗志，在接下来一段时间内
# 增加%s的物理攻击力
# 以及%s的移动速度

#数值
   scoreboard players set s.fighting_spirit.STR const 20
   scoreboard players set s.fighting_spirit.EDU const 5
#数值

data modify storage registry:skill temp append value \
\
{type:"damage",sid:"fighting_spirit",id:1,flags:["STR","damage"],mp_cost:120,cd:200,min_cd:150,\
entry:"registry:skills/attack/fighting_spirit/entry",\
lore:[{},{with:[{type:"expression",stats:"STR",name:"s.fighting_spirit.STR",target:{name:"s.fighting_spirit.EDU",stats:"EDU"}}]}]}