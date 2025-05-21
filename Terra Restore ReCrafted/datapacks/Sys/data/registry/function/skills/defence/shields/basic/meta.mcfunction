# 木牌凝聚术
# 命令草木的力量在副手凝聚，形成一面维持%s秒的盾牌。
# 使用盾牌格挡大部分物理或弹射物攻击时，降低原伤害的(%1$s + %2$s)%

#数值
    scoreboard players set s.basic_shield.TIME const 7
    scoreboard players set s.basic_shield.BASE const 70
    scoreboard players set s.basic_shield.CON const 50
    scoreboard players set s.basic_shield.POW const 25
#数值

data modify storage registry:skill temp append value \
{\
    id:5,\
    sid:"basic_shield",\
    key:"shield",\
    slot_limit:{right:1b,off:0b,shift:0b},\
    type:"defence",\
    flags:["CON","defence","POW"],\
    mp_cost:120,\
    cd:120,min_cd:100,\
    icon:"shield",\
    entry:"registry:skills/defence/shields/basic/enter",\
    lore:[\
        {},\
        {with:[{type:"const",name:"s.basic_shield.TIME"}]},\
        {},\
        {},\
        {with:[{type:"const",name:"s.basic_shield.BASE"},{type:"expression",stats:"CON",name:"s.basic_shield.CON",extra:"%",target:{extra:"%",name:"s.basic_shield.POW",stats:"POW"}}]},\
        {}\
    ]\
}