# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute positioned ^ ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..0.4,tag=] run scoreboard players add @s libTemp 1
# 上
execute positioned ^ ^1 ^ run particle minecraft:item minecraft:ender_pearl ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute positioned ^ ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.4,tag=] run scoreboard players add @s libTemp 1
# 下
execute positioned ^ ^-1 ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute positioned ^1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.4,tag=] run scoreboard players add @s libTemp 1
# 右
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute positioned ^-1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..0.4,tag=] run scoreboard players add @s libTemp 1
# 左
execute positioned ^-1 ^ ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute positioned ^1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 右上
execute positioned ^1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 右下
execute positioned ^-1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 左上
execute positioned ^-1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 左下1
