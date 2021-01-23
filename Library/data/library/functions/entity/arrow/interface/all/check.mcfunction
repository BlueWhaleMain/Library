# (c) Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[tag=library_shoot] run function library:entity/arrow/interface/library_shoot/check
# 这是弹幕
execute at @s unless entity @p[distance=..64] run kill
# 周围64格没有玩家时清除自身（原版优化）
