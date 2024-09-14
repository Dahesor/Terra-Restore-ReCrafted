execute unless score #loop_5 calculator matches 3 run return fail
execute positioned ~2.2 ~0.5 ~2.2 run particle end_rod ~ ~ ~ -5.2 0 0 0.1 0 force
execute positioned ~-3.2 ~0.5 ~2.2 run particle end_rod ~ ~ ~ 0 0 -5.2 0.1 0 force
execute positioned ~-3.2 ~0.5 ~-3.2 run particle end_rod ~ ~ ~ 5.2 0 0 0.1 0 force
execute positioned ~2.2 ~0.5 ~-3.2 run particle end_rod ~ ~ ~ 0 0 5.2 0.1 0 force