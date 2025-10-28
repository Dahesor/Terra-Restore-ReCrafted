scoreboard objectives add calculator dummy
scoreboard objectives add data dummy
scoreboard objectives add monitor.AIR air
scoreboard objectives add options dummy
scoreboard objectives add region dummy
scoreboard objectives add music dummy
scoreboard objectives add region_name dummy
scoreboard objectives add warped_stick used:warped_fungus_on_a_stick
scoreboard objectives add right_trigger used:carrot_on_a_stick
scoreboard objectives add health health
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
scoreboard objectives add off.drop_shield dropped:shield
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
scoreboard objectives add skill.shift dummy
scoreboard objectives add CD.right dummy
scoreboard objectives add CD.off dummy
scoreboard objectives add CD.shift dummy
scoreboard objectives add maxCD.right dummy
scoreboard objectives add maxCD.off dummy
scoreboard objectives add maxCD.shift dummy
scoreboard objectives add right.pause dummy
scoreboard objectives add version dummy
scoreboard objectives add in_challenge dummy
scoreboard objectives add STR dummy
scoreboard objectives add CON dummy
scoreboard objectives add DEX dummy
scoreboard objectives add INT dummy
scoreboard objectives add POW dummy
scoreboard objectives add EDU dummy
scoreboard objectives add base_STR dummy
scoreboard objectives add base_CON dummy
scoreboard objectives add base_DEX dummy
scoreboard objectives add base_INT dummy
scoreboard objectives add base_POW dummy
scoreboard objectives add base_EDU dummy
scoreboard objectives add self_att_pts dummy
scoreboard objectives add CRIT.CHANCE dummy
scoreboard objectives add CRIT.DAM dummy
scoreboard objectives add sweep_counter dummy
scoreboard objectives add dmg dummy
scoreboard objectives add dmg_TimeStamp dummy
scoreboard objectives add hp_cache dummy
scoreboard objectives add MAX_MP dummy
scoreboard objectives add MP dummy
scoreboard objectives add MP_REGEN dummy
scoreboard objectives add HP.dry dummy
scoreboard objectives add enchant.corrosion dummy
scoreboard objectives add sweep_recorder dummy
scoreboard objectives add registry dummy
scoreboard objectives add dodge_chance dummy
scoreboard objectives add inst.dodge_chance dummy
scoreboard objectives add hit_chance dummy
scoreboard objectives add const dummy
scoreboard objectives add sub_ui dummy
scoreboard objectives add display.SHIELD dummy
scoreboard objectives add highHpTick dummy
scoreboard objectives add max_hp_cache dummy
scoreboard objectives add saved_blink dummy
scoreboard objectives add HP.absorb dummy
scoreboard objectives add player_slot dummy

execute unless score %sys data matches 1.. run function sys:plugin/updates/1
scoreboard players set %sys version 1

scoreboard players set #-1 calculator -1
scoreboard players set #2 calculator 2
scoreboard players set #3 calculator 3
scoreboard players set #5 calculator 5
scoreboard players set #6 calculator 6
scoreboard players set #10 calculator 10
scoreboard players set #20 calculator 20
scoreboard players set #30 calculator 30
scoreboard players set #60 calculator 60
scoreboard players set #100 calculator 100
scoreboard players set #1000 calculator 1000
scoreboard players set #10000 calculator 10000

function sys:plugin/init/teams
schedule function sys:core/entity_load 2s
function registry:register_all

execute unless data storage data TimeStamp run data modify storage data TimeStamp set value 0L

gamerule pvp false

return 1
scoreboard players set $gametime calculator 0
scoreboard players set #region calculator 0
scoreboard players set #crit_check dmg 0
bossbar add sys:en ""

give @a writable_book[written_book_content={pages:[],author:"",title:""}]
