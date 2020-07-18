#Copyright by BlueWhale. All Rights Reserved.
scoreboard players reset @s libTouhouCFlag
#结束符卡
scoreboard players set @s libTouhouCEscape 20
#初始化符卡冷却
scoreboard players operation @s libTouhouCEscape /= #LibDifficulty libTemp
#根据难度降低符卡冷却