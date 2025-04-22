# 战吼
# 大吼一声，获得%s的护盾
# 并使周围敌人小幅度减速

#数值
   scoreboard players set s.battle_cry.CON const 20
   scoreboard players set s.battle_cry.EDU const 5
#数值

data modify storage registry:skill temp append value \
\
{type:"defence",sid:"battle_cry",id:2,flags:["CON","defence"],mp_cost:120,cd:300,min_cd:240,icon:"terra:skill/battle_cry",\
entry:"registry:skills/defence/battle_cry/entry",\
lore:[{with:[{type:"expression",extra:"%",name:"s.battle_cry.CON",stats:"CON",target:{name:"s.battle_cry.EDU",extra:"%",stats:"EDU"}}]},{}]}