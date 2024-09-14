tp @a -731.35 52.00 247.30 135 12
tp @a[scores={opening=2}] -731.70 52.00 226.30 45 12
tp @a[scores={opening=3}] -751.56 52.00 226.38 -45 12
tp @a[scores={opening=4}] -751.50 52.00 247.30 -135 12





schedule function sys:legacy/opening/acts/prepare_2 1t
function dah.sch:set {time:40,run:'tellraw @a ["[��aVuco��f] ",{"tranunction.legacy.opening.acts.2.line10"}]'}
schedule function sys:legacy/opening/acts/eplosion 30t append
schedule function sys:legacy/opening/acts/eplosion 50t append
schedule function sys:legacy/opening/acts/eplosion 70t append
schedule function sys:legacy/opening/acts/eplosion 90t append
schedule function sys:legacy/opening/acts/eplosion 110t append
schedule function sys:legacy/opening/acts/eplosion 130t append
schedule function sys:legacy/opening/acts/eplosion 150t append
schedule function sys:legacy/opening/acts/eplosion 170t append
schedule function sys:legacy/opening/acts/eplosion 190t append
schedule function sys:legacy/opening/acts/eplosion 210t append
schedule function sys:legacy/opening/acts/eplosion 230t append
schedule function sys:legacy/opening/acts/eplosion 250t append
schedule function sys:legacy/opening/acts/eplosion 270t append
schedule function sys:legacy/opening/acts/eplosion 140t append
schedule function sys:legacy/opening/acts/eplosion 160t append
schedule function sys:legacy/opening/acts/eplosion 180t append
schedule function sys:legacy/opening/acts/eplosion 200t append
schedule function sys:legacy/opening/acts/eplosion 220t append
schedule function sys:legacy/opening/acts/eplosion 240t append
schedule function sys:legacy/opening/acts/eplosion 260t append
schedule function sys:legacy/opening/acts/eplosion 280t append

schedule function sys:legacy/opening/acts/eplosion_heavy 340t append
schedule function sys:legacy/opening/acts/eplosion_heavy 360t append
schedule function sys:legacy/opening/acts/eplosion_heavy 380t append
function dah.sch:set {time:380,run:'fill -736 45 243 -748 45 230 minecraft:obsidian replace minecraft:end_portal'}
schedule function sys:legacy/opening/acts/fill_end_portals 380t
schedule function sys:legacy/opening/acts/3 500t
