scoreboard objectives add data dummy
scoreboard objectives add options dummy
scoreboard objectives add calculator dummy
scoreboard objectives add region dummy
scoreboard objectives add music dummy
scoreboard objectives add region_name dummy
scoreboard objectives add warped_stick used:warped_fungus_on_a_stick
scoreboard objectives add right_trigger used:carrot_on_a_stick
scoreboard objectives add death deathCount
scoreboard objectives add spawn_x dummy
scoreboard objectives add spawn_y dummy
scoreboard objectives add spawn_z dummy
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add genericCD dummy
scoreboard objectives add ui dummy
scoreboard objectives add UID dummy
scoreboard objectives add ui.drop_head dropped:player_head
scoreboard objectives add ui.drop_slot dropped:structure_void
scoreboard objectives add off.drop dropped:carrot_on_a_stick
scoreboard objectives add zcache_rot_x dummy
scoreboard objectives add zcache_rot_y dummy
scoreboard objectives add zcache_timer dummy
scoreboard objectives add tp trigger
scoreboard objectives add tp_cd dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add loot_box dummy
scoreboard objectives add showcaseCD dummy
scoreboard objectives add mentionCD dummy
scoreboard objectives add speedAttack dummy
scoreboard objectives add dropTemp dummy
scoreboard objectives add rolls.boss_wither dummy
scoreboard objectives add rolls.boss_army dummy
scoreboard objectives add rolls.boss_void dummy
scoreboard objectives add skill.right dummy
scoreboard objectives add skill.off dummy
scoreboard objectives add CD.right dummy
scoreboard objectives add CD.off dummy
scoreboard objectives add right.pause dummy
scoreboard objectives add version dummy
scoreboard objectives add in_challenge dummy
scoreboard objectives add STR dummy
scoreboard objectives add CON dummy
scoreboard objectives add DEX dummy
scoreboard objectives add INT dummy
scoreboard objectives add POW dummy
scoreboard objectives add EDU dummy
scoreboard objectives add CRIT.CHANCE dummy
scoreboard objectives add CRIT.DAM dummy
scoreboard objectives add sweep_counter dummy
scoreboard objectives add dmg dummy
scoreboard objectives add dmg_TimeStamp dummy
scoreboard objectives add hp_cache dummy

execute unless score %sys data matches 1.. run function sys:plugin/updates/1
scoreboard players set %sys version 1

scoreboard players set #-1 calculator -1
scoreboard players set #2 calculator 2
scoreboard players set #3 calculator 3
scoreboard players set #5 calculator 5
scoreboard players set #10 calculator 10
scoreboard players set #20 calculator 20
scoreboard players set #30 calculator 30
scoreboard players set #60 calculator 60
scoreboard players set #100 calculator 100
scoreboard players set #1000 calculator 1000

team add player "Player"
team add mob_army "mob_army"
team add iron_golem "iron_golem"
team modify player color yellow
team modify player seeFriendlyInvisibles true
team modify player friendlyFire false
team modify player collisionRule never
schedule function sys:core/entity_load 2s

return 1
scoreboard players set $gametime calculator 0
scoreboard players set #region calculator 0
scoreboard players set #crit_check dmg 0