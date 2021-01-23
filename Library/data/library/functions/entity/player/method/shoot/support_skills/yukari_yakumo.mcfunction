# (c) Copyright by BlueWhale. All Rights Reserved.
playsound library:item.support_yukari_yakumo.in player @a ~ ~1 ~ 1.0
# 播放声音：入间隙
effect give @s minecraft:resistance 1 10 true
# 抗性提升
tp @s ^ ^ ^10
# 移动
tag @s add slow_falling
# 给予缓降
tag @s add library_tp_spy
# 准备检查
