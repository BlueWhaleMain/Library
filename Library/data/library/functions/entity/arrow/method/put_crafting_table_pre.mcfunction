# Copyright by BlueWhale. All Rights Reserved.
execute unless block ~ ~ ~ #library:air unless block ~ ~ ~ minecraft:water run function library:entity/arrow/method/cancel_crafting_table
# 箭在不对的位置
execute if block ~ ~ ~ #library:air run function library:entity/arrow/method/put_crafting_table
execute if block ~ ~ ~ minecraft:water run function library:entity/arrow/method/put_crafting_table
# 空气和水
