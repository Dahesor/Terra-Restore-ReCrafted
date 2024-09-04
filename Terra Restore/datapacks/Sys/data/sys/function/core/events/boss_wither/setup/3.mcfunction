clone 303 56 -693 301 47 -678 311 62 -792
clone 329 56 -662 344 47 -660 339 62 -761
clone 370 56 -678 372 47 -693 380 62 -792
clone 344 56 -708 329 47 -710 339 62 -809
clone 362 34 -683 312 37 -687 322 49 -786
fill 382 50 -807 382 50 -797 minecraft:redstone_lamp
fill 382 50 -771 382 50 -761 minecraft:redstone_lamp
fill 311 50 -761 311 50 -771 minecraft:redstone_lamp
fill 311 50 -797 311 50 -807 minecraft:redstone_lamp
setblock 347 49 -808 cake[bites=0]
setblock 347 49 -760 cake[bites=0]

fill 373 48 -768 320 48 -801 air replace water
fill 373 48 -768 320 48 -801 air replace lava
execute if score boss_wither_diff data matches 2 run fill 373 48 -768 320 48 -801 water replace air
execute if score boss_wither_diff data matches 3 run fill 373 48 -768 320 48 -801 lava replace air