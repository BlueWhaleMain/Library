#Copyright by BlueWhale. All Rights Reserved.
execute unless block ~ ~ ~ minecraft:crafting_table run function library:entity/arrow/method/break_crafting_table
# 工作台被拆
execute unless entity @p[distance=..6,tag=shooting_crafting_table] unless entity @s[tag=died] run function library:entity/arrow/method/break_crafting_table
# 销毁工作台