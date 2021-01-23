# (c) Copyright by BlueWhale. All Rights Reserved.
execute store result score #PlayerPos libTemp run data get entity @s Pos[1]
# 获取自身Y轴
execute if score #PlayerPos libTemp matches ..1 run tp @s ~ 2 ~
# 错误修正
execute unless block ~ ~1 ~ #library:tp_head_safe run tp @s ~ ~1 ~
# 冒头
execute unless block ~ ~ ~ #library:tp_body_safe run tp @s ~ ~1 ~
# 位置修正
execute unless block ~ ~ ~ #library:tp_head_safe run effect give @s minecraft:resistance 1 10 true
# 抗性提升
effect give @s minecraft:invisibility 2 0 true
# 给予隐身
effect give @s minecraft:glowing 2 0 true
# 给予发光
tag @s[nbt={OnGround:false}] add slow_falling
# 给予缓降
