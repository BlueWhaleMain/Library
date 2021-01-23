# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute unless block ~ ~ ~ minecraft:crafting_table store success score @s libTemp run kill @e[distance=..3,sort=nearest,type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}]
# 销毁工作台物品
execute if block ~ ~ ~ minecraft:crafting_table store success score @s[scores={libTemp=..0}] libTemp run setblock ~ ~ ~ minecraft:air replace
# 销毁工作台
tag @s[scores={libTemp=..0}] add no_recycle
scoreboard players set @s libTemp 0
execute store success score @s[tag=!no_recycle] libTemp run give @p[tag=shooting_crafting_table] minecraft:crafting_table
# 归还工作台
execute if score @s libTemp matches 1.. run tag @p[tag=shooting_crafting_table] remove shooting_crafting_table
execute if score @s[tag=!no_recycle] libTemp matches ..0 run give @p minecraft:crafting_table
# 降级
kill
# 自毁
tag @s add died
# 标记为生命周期结束
