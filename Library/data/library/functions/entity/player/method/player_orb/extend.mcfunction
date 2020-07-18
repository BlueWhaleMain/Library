#Copyright by BlueWhale. All Rights Reserved.
loot give @s[scores={libTemp=5..}] loot library:items/player_1up
clear @s[scores={libTemp=5..}] minecraft:paper{id:"library:player_orb"} 5
playsound library:player.extend player @a ~ ~1 ~ 1.0
#播放声音：残机扩充
function library:entity/player/method/message/init
#初始化标题
title @s actionbar {"translate":"system.library.player.extend"}
#Extend!