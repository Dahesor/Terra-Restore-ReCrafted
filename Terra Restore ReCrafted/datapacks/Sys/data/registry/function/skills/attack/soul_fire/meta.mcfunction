# 灵魂火
# 在接下来的0.5秒内
# 消耗当前生命值的50%
# 每消耗2点生命值，
# 增加%1$s的基础攻击力，持续%2$s秒

#数值
scoreboard players set s.soul_fire.duration const 10
scoreboard players set s.soul_fire.scale const 3
#数值

data modify storage registry:skill temp append value \
{\
    id: 7,\
    sid: "soul_fire",\
    type: "buff",\
    flags:["POW","damage","buff"],\
    mp_cost: 60,\
    var: 0,\
    cd: 300, min_cd: 200,\
    icon:"soul_sand",\
    entry:"registry:skills/attack/soul_fire/entry",\
    lore:[\
        {},\
        {},\
        {},\
        {with:[{type:"stats",extra:"%",stats:"POW",name:"s.soul_fire.scale"},{type:"const",name:"s.soul_fire.duration"}]},\
    ]\
}