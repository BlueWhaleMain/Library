# (c) Copyright by BlueWhale. All Rights Reserved.
kill @e[type=#library:projectile]
# 消弹
kill @e[type=minecraft:armor_stand,tag=library_shoot_target]
# 清除靶子
kill @e[type=minecraft:armor_stand,tag=library_tp_target]
# 清除传送目标
particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0 1
# 生成粒子：附魔
