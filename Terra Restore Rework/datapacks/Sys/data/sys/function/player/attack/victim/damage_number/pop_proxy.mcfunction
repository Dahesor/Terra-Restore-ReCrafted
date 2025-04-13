#$(x) $(y) $(z)
# This function is called to pop the damage number from the entity's location

$execute positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run function sys:player/attack/victim/damage_number/pop