#Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute positioned ^ ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#上
execute positioned ^ ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#下
execute positioned ^1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond"}},distance=..0.4,tag=] run scoreboard players add @s libTemp 1
#右
execute positioned ^1 ^ ^ unless entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:diamond"}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#补充检查
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:diamond ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute positioned ^-1 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#左
execute positioned ^1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#右上
execute positioned ^1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#右下
execute positioned ^-1 ^1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#左上
execute positioned ^-1 ^-1 ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run scoreboard players remove @s libTemp 1
#左下
