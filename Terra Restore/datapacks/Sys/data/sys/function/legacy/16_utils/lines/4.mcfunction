execute if score 16_line_4 data matches 1 run return fail

scoreboard players set 16_line_4 data 1

tellraw @a[scores={region=16}] {"translate":"area.16.line.4"}
tp @a[scores={region=16..17}] ~ ~ ~