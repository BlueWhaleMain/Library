# Copyright by BlueWhale. All Rights Reserved.
# 冒头
execute positioned ~ ~1 ~ unless block ~ ~ ~ #library:tp_head_safe run function library:entity/player/method/system/tp_check/loop
# 位置修正
execute if block ~ ~ ~ #library:tp_body_safe run tp @s ~ ~ ~
execute unless block ~ ~ ~ #library:tp_body_safe run tp @s ~ ~1 ~
