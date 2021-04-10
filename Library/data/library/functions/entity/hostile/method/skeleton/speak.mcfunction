# Copyright by BlueWhale. All Rights Reserved.
# 播放声音：Sans说话
execute if score @s libThirsty matches ..0 run playsound library:entity.sans_speak hostile @a ~ ~1 ~ 1.0
scoreboard players add @s[scores={libThirsty=..0}] libThirsty 1
tag @s[scores={libThirsty=1..}] remove speak
