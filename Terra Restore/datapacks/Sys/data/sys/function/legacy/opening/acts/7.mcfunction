tp @a -759.39 49.00 107.41 180 -4.96
tp @a[scores={opening=2}] -760.58 49.00 96.70 0 0
tp @a[scores={opening=3}] -754.30 49.00 101.62 90 0
tp @a[scores={opening=4}] -765.70 49.00 102.68 -90 0
difficulty normal
function dah.sch:set {time:80,run:'tellraw @a ["[§aVuco§f] ",{"text":"英雄, 勿掉以轻心。Exiel的残党们依然对这片大地虎视眈眈,他们不可信任, 是我们的重大威胁"}]'}
function dah.sch:set {time:400,run:'tellraw @a ["[§aVuco§f] ",{"text":"时间不多了, 英雄, 我得走了。恐怕我们不会再碰面了...我们全靠你了。你的旅程将由此开始, 祝你好运。"}]'}
schedule function sys:legacy/opening/end 37s
