# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:resistance 1 10 true
# 抗性提升
function library:entity/player/method/admin/teleport/loop
tag @s add slow_falling
# 给予缓降
tag @s add library_tp_admin
# 准备检查
tag @s add teleport
# 循环
