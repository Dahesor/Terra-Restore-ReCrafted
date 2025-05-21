scoreboard players operation $region calculator = #region calculator
function sys:mob/factors/attributes/region_factors

scoreboard players operation factor options = mobSpeedFactor options
function sys:mob/factors/speed/prepare
scoreboard players operation factor options = mobAttributeFactor options
function sys:mob/factors/attributes/prepare
scoreboard players operation factor options = mobCountFactor options
function sys:mob/factors/count/get_value