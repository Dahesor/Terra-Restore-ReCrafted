#初始化
data modify storage registry:weapon_type parser prepend value {chance:0,id:"null",modifiers:[]}
data modify storage registry:weapon_type parser[0].id set from storage registry:weapon_type raw[0].id
data modify storage temp run set value {id:"null",class:"null"}
data modify storage temp run.class set from storage registry:weapon_type class
data modify storage temp run.id set from storage registry:weapon_type raw[0].id

#生成名称
function registry:weapon_type/parser/display/name with storage temp run

#生成描述
function registry:weapon_type/parser/display/lore with storage temp run

#计算概率
function registry:weapon_type/parser/weight/calculate

#计算修饰符
function registry:weapon_type/parser/modifier/loop