#视效
playsound block.fire.ambient master @s ~ ~ ~ 1 2
playsound entity.player.hurt_on_fire master @a ~ ~ ~ 1 1.4
particle soul_fire_flame ~ ~1 ~ 0.1 0.05 0.1 0.5 100 normal

#计算燃血
scoreboard players operation #lost_hp calculator = @s dfh.HP
scoreboard players operation #lost_hp calculator /= #100 calculator
scoreboard players operation #lost_hp calculator /= #2 calculator
scoreboard players operation #lost_hp_10tick calculator = #lost_hp calculator
scoreboard players operation #lost_hp_10tick calculator /= #2 calculator
scoreboard players operation #lost_hp calculator -= #lost_hp_10tick calculator

#计算增益
scoreboard players operation #inc_attack calculator = #lost_hp_10tick calculator
scoreboard players operation #inc_attack calculator *= @s POW
scoreboard players operation #inc_attack calculator *= s.soul_fire.scale const
scoreboard players operation #inc_attack calculator /= #100 calculator

#立刻消耗生命值
scoreboard players operation #lost_hp calculator *= #100 calculator
scoreboard players operation @s dfh.HP -= #lost_hp calculator

#半秒后消耗剩余生命值
data modify storage dah.sch:new new set value {offline:"pause",run:"return 0",time:10}
data modify storage temp run set value {int:0}
execute store result storage temp run.int int 100 run scoreboard players get #lost_hp_10tick calculator
function registry:skills/attack/soul_fire/__get_hp_burn with storage temp run
function dah.sch:new

#给予属性修饰器
execute store result storage temp run.int int 1 run scoreboard players get #inc_attack calculator
function registry:skills/attack/soul_fire/__grant_buff with storage temp run

#计划在持续时间结束后移除属性修饰器
data modify storage dah.sch:new new set value {offline:"delay",run:"attribute @s attack_damage modifier remove registry:skill/soul_fire",time:10}
execute store result storage dah.sch:new new.time int 20 run scoreboard players get s.soul_fire.duration const
function dah.sch:new