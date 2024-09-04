tellraw @a[tag=in_boss_army] ["[",{"translate":"boss.army.name","color":"red"},"] ",{"translate":"boss.army.line.3"}]
effect give @s speed infinite 2 true
scoreboard players set boss_army_start data 2
bossbar remove sys:boss_army_skele
effect clear @s resistance
effect give @s resistance infinite 1