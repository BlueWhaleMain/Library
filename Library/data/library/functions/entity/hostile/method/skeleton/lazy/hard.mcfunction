# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:slowness 60 0 true
# 控制
tag @p[gamemode=survival,distance=..32] add BlueHeart
# 50%几率交通指挥（
execute if predicate library:random/50 run tag @p[tag=BlueHeart,level=19..,nbt={OnGround:true}] add up
execute if predicate library:random/50 run tag @p[tag=BlueHeart,level=19..,nbt={OnGround:false}] add down
