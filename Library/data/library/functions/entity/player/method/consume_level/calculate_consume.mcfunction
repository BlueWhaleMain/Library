# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players operation @s libTemp *= #LibDifficulty libTemp
# 根据难度决定消耗倍率
scoreboard players operation @s libConsumeLvlCac += @s libTemp
# 结果保存
execute if entity @s[scores={libConsumeLvlCac=50000..}] run function library:entity/player/method/consume_level/add
# 加速代谢
