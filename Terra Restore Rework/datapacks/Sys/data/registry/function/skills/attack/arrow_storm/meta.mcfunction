# 箭雨
# 向前方发射大量箭矢

#数值
#数值

data modify storage registry:skill temp append value \
{\
    id:4,\
    sid:"arrow_storm",\
    type:"damage",\
    flags:["DEX","damage"],\
    mp_cost:120,\
    cd:120,min_cd:100,\
    icon:"arrow",\
    entry:"registry:skills/attack/arrow_storm/enter",\
    lore:[\
        {},\
        {}\
    ]\
}