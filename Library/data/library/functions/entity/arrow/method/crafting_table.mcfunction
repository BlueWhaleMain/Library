# Copyright by BlueWhale. All Rights Reserved.
execute unless entity @p[distance=..6,tag=shooting_crafting_table] run function library:entity/arrow/method/cancel_crafting_table
# 距离太远自动回收
execute if entity @s[nbt={inGround:true},tag=!cancel] run function library:entity/arrow/method/put_crafting_table_pre
# 接触到方块即判定是否生成工作台，忽略取消的情况
