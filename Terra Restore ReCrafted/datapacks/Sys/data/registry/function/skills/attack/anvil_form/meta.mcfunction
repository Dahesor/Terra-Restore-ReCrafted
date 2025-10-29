# 铁砧形态
# 进入持续%s时间的铁砧形态
# 期间在下落中近战击中敌人时，
# 若脚下2格内有方块，
# 则立刻以超高速下砸至地面上

#数值
   scoreboard players set s.anvil_form.STR const 15
   scoreboard players set s.anvil_form.CON const 15
#数值

data modify storage registry:skill temp append value \
\
{type:"damage",sid:"anvil_form",id:6,flags:["STR","buff","CON"],mp_cost:80,cd:40,min_cd:40,icon:"anvil",\
entry:"registry:skills/attack/anvil_form/entry",\
lore:[{with:[{type:"expression",stats:"STR",extra:"%",name:"s.anvil_form.STR",target:{name:"s.anvil_form.CON",stats:"CON",extra:"%"}}]},{},{},{}]}