
scoreboard players operation #wiggle dfh.calculator = $gametime dfh.calculator
scoreboard players operation #wiggle dfh.calculator %= #20 dfh.calculator

#tellraw @a {score:{name:"#wiggle", objective:"dfh.calculator"}}

data modify storage dah:actbar new.text[].font set value "dfh:hud"

execute if score #wiggle dfh.calculator matches 0 run return run function dfh:hp/wiggle/pose/1
execute if score #wiggle dfh.calculator matches 1 run return run function dfh:hp/wiggle/pose/2
execute if score #wiggle dfh.calculator matches 2 run return run function dfh:hp/wiggle/pose/3
execute if score #wiggle dfh.calculator matches 3 run return run function dfh:hp/wiggle/pose/4
execute if score #wiggle dfh.calculator matches 4 run return run function dfh:hp/wiggle/pose/5
execute if score #wiggle dfh.calculator matches 5 run return run function dfh:hp/wiggle/pose/6
execute if score #wiggle dfh.calculator matches 6 run return run function dfh:hp/wiggle/pose/7
execute if score #wiggle dfh.calculator matches 7 run return run function dfh:hp/wiggle/pose/8
execute if score #wiggle dfh.calculator matches 8 run return run function dfh:hp/wiggle/pose/9
execute if score #wiggle dfh.calculator matches 9 run return run function dfh:hp/wiggle/pose/10
execute if score #wiggle dfh.calculator matches 10 run return run function dfh:hp/wiggle/pose/11
execute if score #wiggle dfh.calculator matches 11 run return run function dfh:hp/wiggle/pose/12
execute if score #wiggle dfh.calculator matches 12 run return run function dfh:hp/wiggle/pose/13
execute if score #wiggle dfh.calculator matches 13 run return run function dfh:hp/wiggle/pose/14
execute if score #wiggle dfh.calculator matches 14 run return run function dfh:hp/wiggle/pose/15
execute if score #wiggle dfh.calculator matches 15 run return run function dfh:hp/wiggle/pose/16
execute if score #wiggle dfh.calculator matches 16 run return run function dfh:hp/wiggle/pose/17
execute if score #wiggle dfh.calculator matches 17 run return run function dfh:hp/wiggle/pose/18
execute if score #wiggle dfh.calculator matches 18 run return run function dfh:hp/wiggle/pose/19
execute if score #wiggle dfh.calculator matches 19 run return run function dfh:hp/wiggle/pose/20