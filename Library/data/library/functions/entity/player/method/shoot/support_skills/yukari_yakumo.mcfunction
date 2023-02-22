# Copyright by BlueWhale. All Rights Reserved.
# 播放声音：入间隙
playsound library:item.support_yukari_yakumo.in player @a ~ ~1 ~ 1.0
# 给予隐身
effect give @s minecraft:invisibility 2 0 true
# 给予发光
effect give @s minecraft:glowing 2 0 true
# 传送距离最多16
scoreboard players set #TeleportMax libTemp 16
# 移动
execute positioned ^ ^ ^2 run function library:entity/player/method/shoot/support_skills/yukari_yakumo/loop
tag @s add slow_falling
tag @s add library_tp_spy
