# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute positioned ^ ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 上
execute positioned ^ ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 下
execute positioned ^1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 右
execute positioned ^-1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 左
execute positioned ^1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 右上
execute positioned ^1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 右下
execute positioned ^-1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 左上
execute positioned ^-1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
# 左下
