function sys:plugin/base/restore/mod


fill -17 34 -81 -12 34 -86 minecraft:glowstone replace minecraft:redstone_lamp
clone 901 3 23 914 21 36 901 78 23
clone 887 3 23 900 21 36 887 78 23
clone 873 3 23 886 21 36 873 78 23
clone 865 3 23 872 12 36 865 78 23
clone 865 3 9 872 21 22 865 78 9
clone 873 3 9 886 21 22 873 78 9
clone 887 3 9 900 20 22 887 78 9
clone 901 3 9 914 21 22 901 78 9
clone 901 3 -4 914 21 8 901 78 -4
clone 885 3 -4 900 21 8 885 78 -4
clone 871 3 -4 884 21 8 871 78 -4
clone 865 3 -4 870 21 8 865 78 -4
execute as @e[type=sheep,tag=coca] at @s run tp @s ~ ~75 ~

function sys:plugin/base/restore/mod_after