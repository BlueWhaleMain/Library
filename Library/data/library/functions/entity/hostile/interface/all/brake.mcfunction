# Copyright by BlueWhale. All Rights Reserved.
execute if block ~ ~ ~ #library:hostile_brake run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~1 ~ #library:hostile_brake run setblock ~ ~1 ~ minecraft:air destroy
# 破坏玩家工事
execute if entity @s[type=#library:undead/hostile] if block ~ ~ ~ #library:weak_light run setblock ~ ~ ~ minecraft:air destroy
execute if entity @s[type=#library:undead/hostile] if block ~ ~1 ~ #library:weak_light run setblock ~ ~1 ~ minecraft:air destroy
# 亡灵生物破坏弱光源
execute if entity @s[type=minecraft:blaze] if block ~ ~ ~ minecraft:air if entity @e[distance=..1,type=minecraft:item] run setblock ~ ~ ~ minecraft:fire destroy
# 烈焰人点燃地上的物品
