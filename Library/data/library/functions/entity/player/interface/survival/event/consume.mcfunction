# Copyright by BlueWhale. All Rights Reserved.
scoreboard players remove @s libConsumeLevel 16
# 移除消耗
scoreboard players add @s[scores={ctm_since_rest=1..},nbt=!{ActiveEffects:[{Id:16b}]}] libraryFatigue 1
# 疲劳
effect give @s minecraft:hunger 1 200 true
# 食物水平
scoreboard players add @s libThirsty 1
# 口渴
