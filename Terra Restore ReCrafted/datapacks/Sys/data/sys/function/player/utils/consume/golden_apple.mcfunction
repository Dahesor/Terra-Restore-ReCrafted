advancement revoke @s only sys:food_trigger/golden_apple
scoreboard players operation $this dfh.Absorb = @s dfh.Absorb
scoreboard players add $this dfh.Absorb 400
scoreboard players operation $this dfh.Absorb < #400 calculator
scoreboard players operation @s dfh.Absorb > $this dfh.Absorb