# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:slowness 60 0 true
# 控制
effect give @a[gamemode=survival,distance=..16] minecraft:slowness 2 255 true
# 交通指挥（
execute if predicate library:random/30 run effect give @p[gamemode=survival,level=19..,distance=..16,nbt={OnGround:true}] minecraft:levitation 2 16 true
