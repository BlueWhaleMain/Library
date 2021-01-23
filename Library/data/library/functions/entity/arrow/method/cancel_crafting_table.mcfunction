# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute store success score @s libTemp run give @p[tag=shooting_crafting_table] minecraft:crafting_table
# 归还工作台
execute if score @s libTemp matches 1.. run tag @p[tag=shooting_crafting_table] remove shooting_crafting_table
execute if score @s libTemp matches ..0 run give @p minecraft:crafting_table
# 降级
kill
# 自毁
tag @s add cancel
# 取消功能
