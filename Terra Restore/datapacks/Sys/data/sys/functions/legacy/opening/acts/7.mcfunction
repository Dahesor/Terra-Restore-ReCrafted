tp @a -759.39 49.00 107.41 180 -4.96
tp @a[scores={opening=2}] -760.58 49.00 96.70 0 0
tp @a[scores={opening=3}] -754.30 49.00 101.62 90 0
tp @a[scores={opening=4}] -765.70 49.00 102.68 -90 0
difficulty normal
function dah.sch:set {time:80,run:'tellraw @a ["[§aVuco§f] ",{"text":"英雄, 勿掉以輕心。Exiel的殘黨們依然對這片大地虎視眈眈, 他們不可信任, 是我們的重大威脅"}]'}
function dah.sch:set {time:400,run:'tellraw @a ["[§aVuco§f] ",{"text":"時間不多了, 英雄, 我得走了。恐怕我們不會再碰面了...我們全靠你了。你的旅程將由此開始, 祝你好運。"}]'}

schedule function sys:legacy/opening/end 37s
