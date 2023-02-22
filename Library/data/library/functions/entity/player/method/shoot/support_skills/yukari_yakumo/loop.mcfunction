# Copyright by BlueWhale. All Rights Reserved.
scoreboard players remove #TeleportMax libTemp 1
# 冒头
execute if score #TeleportMax libTemp matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ #library:tp_head_safe run function library:entity/player/method/shoot/support_skills/yukari_yakumo/loop
# 位置修正
execute if score #TeleportMax libTemp matches 1.. positioned ^ ^ ^1 unless block ~ ~ ~ #library:tp_body_safe run function library:entity/player/method/shoot/support_skills/yukari_yakumo/loop
# 移动
execute if score #TeleportMax libTemp matches 15 run tp @s ^ ^ ^10
execute unless score #TeleportMax libTemp matches 15 run tp @s ~ ~ ~
# 补救
execute unless block ~ ~1 ~ #library:tp_head_safe run function library:entity/player/method/system/tp_check/spectator
execute unless block ~ ~ ~ #library:tp_body_safe run function library:entity/player/method/system/tp_check/spectator
