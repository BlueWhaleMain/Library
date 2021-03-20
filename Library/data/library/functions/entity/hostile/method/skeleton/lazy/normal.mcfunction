# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:slowness 60 1 true
# 50%几率控制
execute if predicate library:random/50 run tag @p[gamemode=survival,distance=..32] add BlueHeart
# 控制
tag @p[gamemode=survival,distance=..5] add BlueHeart
