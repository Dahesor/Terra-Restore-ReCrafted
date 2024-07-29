scoreboard objectives add dah.belowName dummy
scoreboard objectives add dah.list dummy
scoreboard objectives add dah.Bcalc dummy
scoreboard objectives add dah.hp health
scoreboard objectives modify dah.list rendertype integer
scoreboard objectives modify dah.list numberformat blank
scoreboard objectives modify dah.list displayname {"text": "-","font": "dah.below:icon"}
scoreboard objectives modify dah.belowName rendertype integer
scoreboard objectives modify dah.belowName numberformat blank
scoreboard objectives modify dah.belowName displayname {"text": "-","font": "dah.below:icon"}
data modify storage dah.below:m t set value {}
execute unless score #fqt dah.Bcalc matches -2147483648.. run scoreboard players set #fqt dah.Bcalc 10