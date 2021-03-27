# Copyright by BlueWhale. All Rights Reserved.
# 虚弱
effect give @s minecraft:weakness 1 255 true
# 缓慢
effect give @s minecraft:slowness 1 255 true
# 无视玩家
attribute @s minecraft:generic.follow_range base set 0
# 1血
data modify entity @s AbsorptionAmount set value 0f
attribute @s minecraft:generic.max_health base set 1
data modify entity @s Health set value 1f
tag @s remove sleep
