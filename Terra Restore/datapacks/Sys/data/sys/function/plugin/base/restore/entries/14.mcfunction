function sys:plugin/base/restore/mod

fill -26 34 -74 -21 34 -79 minecraft:glowstone replace minecraft:redstone_lamp
clone 954 3 -47 958 27 -20 954 109 -47
clone 934 3 -47 938 25 -20 934 109 -47
clone 929 3 -48 933 27 -21 929 109 -48
clone 949 3 -47 953 27 -20 949 109 -47
clone 944 3 -47 948 27 -20 944 109 -47
clone 939 3 -47 943 27 -20 939 109 -47
clone 924 3 -47 928 27 -20 924 109 -47

schedule function sys:plugin/base/restore/entries/post_14 2t

function sys:plugin/base/restore/mod_after