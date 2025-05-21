scoreboard players set #dy calculator -2
execute positioned ~ ~-2 ~ if function sys:player/utils/tp/reciver/record_here run return 1
scoreboard players set #dy calculator -1
execute positioned ~ ~-1 ~ if function sys:player/utils/tp/reciver/record_here run return 1
scoreboard players set #dy calculator 0
execute positioned ~ ~ ~ if function sys:player/utils/tp/reciver/record_here run return 1
scoreboard players set #dy calculator 1
execute positioned ~ ~1 ~ if function sys:player/utils/tp/reciver/record_here run return 1
scoreboard players set #dy calculator 2
execute positioned ~ ~2 ~ if function sys:player/utils/tp/reciver/record_here run return 1
return fail