#Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTouhouCTime 1000
#初始化符卡时间
scoreboard players set @s libTouhouCEscape -10
#初始化符卡冷却
scoreboard players operation @s libTouhouCTime *= #LibDifficulty libTemp
#根据难度提升符卡时间
data merge entity @s {DeathLootTable:"library:entities/touhou_excellent_gift"}
#添加战利品表
