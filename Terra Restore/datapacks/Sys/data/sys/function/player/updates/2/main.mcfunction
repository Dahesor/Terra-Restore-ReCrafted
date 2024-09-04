scoreboard players add @s version 1

playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.7

tellraw @s {"text": "[§aUpdate§r] 下线期间数据包发生了更新。现在是数据版本1。\n - 使用右键的任意非技能行为后的0.25秒内将不会触发技能，以免误触\n - 修复了词条拥有重复ID的BUG。\n - §b旧版装备需要你手动修复：将他们脱下并放置于背包内（不在盔甲栏位，不在快捷栏），随后关闭并打开玩家页面。\n - 封闭了旧版的1.8配方系统。"}