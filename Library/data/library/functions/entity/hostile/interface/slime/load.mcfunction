# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTouhouCTime 400
# 初始化符卡时间
scoreboard players set @s libTouhouCEscape 0
# 初始化符卡冷却
scoreboard players operation @s libTouhouCTime *= #LibDifficulty libTemp
# 根据难度提升符卡时间
execute store result score @s libraryFat run data get entity @s Size
# 获取自身大小
scoreboard players operation @s[scores={libraryFat=2..}] libTouhouCTime *= @s libraryFat
# 根据大小获得符卡时间
data merge entity @s[scores={libraryFat=..0}] {DeathLootTable:"library:entities/touhou_small_gift"}
data merge entity @s[scores={libraryFat=1..2}] {DeathLootTable:"library:entities/touhou_gift"}
data merge entity @s[scores={libraryFat=3..}] {DeathLootTable:"library:entities/touhou_full_gift"}
# 添加战利品表
