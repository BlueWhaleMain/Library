# Copyright by BlueWhale. All Rights Reserved.
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:soul_soil",Count:1b}}
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0 10
# 灵魂火焰
function library:entity/item/method/campfire_extinguished
