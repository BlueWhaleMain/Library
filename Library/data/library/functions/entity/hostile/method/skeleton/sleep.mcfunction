# Copyright by BlueWhale. All Rights Reserved.
# 虚弱
effect give @s minecraft:weakness 1 255 true
# 缓慢
effect give @s minecraft:slowness 1 255 true
# 无视玩家
attribute @s minecraft:generic.follow_range base set 0
# 1血
data merge entity @s {NoGravity:0b,Invulnerable:0b,AbsorptionAmount:0f,Health:1f}
attribute @s minecraft:generic.max_health base set 1
# 云
execute at @s anchored eyes run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.2 1
tag @s remove sleep
