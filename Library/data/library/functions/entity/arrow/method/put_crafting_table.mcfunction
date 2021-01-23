# Copyright by BlueWhale. All Rights Reserved.
setblock ~ ~ ~ minecraft:crafting_table replace
# 放置工作台
data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
# 清空运动状态
tag @s add waiting_crafting_table
# 标记为等待
tag @s add NoGravity
# 标记为反重力
tag @s remove crafting_table
# 移除放置标签
