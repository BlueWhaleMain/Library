# Copyright by BlueWhale. All Rights Reserved.
# 更新难度
execute store result score #LibDifficulty libTemp run difficulty
# 更新规则：生物破坏
execute store result score #LibMobGriefing libTemp run gamerule mobGriefing
# 更新规则：死亡不掉落
execute store result score #LibKeepInventory libTemp run gamerule keepInventory
# 更新时间
execute store result score #LibDayTime libTemp run time query daytime
scoreboard players set #Lib1666 libTemp 1666
scoreboard players set #LibThousand libTemp 1000
scoreboard players set #Lib100 libTemp 100
## 小时
scoreboard players operation #LibHour libTemp = #LibDayTime libTemp
scoreboard players operation #LibMinute libTemp = #LibDayTime libTemp
scoreboard players operation #LibHour libTemp /= #LibThousand libTemp
#
## 分钟
scoreboard players operation #LibMinute libTemp %= #LibThousand libTemp
scoreboard players operation #LibMinute libTemp *= #Lib100 libTemp
scoreboard players operation #LibMinute libTemp /= #Lib1666 libTemp
#
## 换算
scoreboard players operation #LibHourBak libTemp = #LibHour libTemp
execute if score #LibHourBak libTemp matches 0..17 run scoreboard players add #LibHour libTemp 6
execute if score #LibHourBak libTemp matches 18.. run scoreboard players remove #LibHour libTemp 18
#
# loop
schedule function library:main/1s 1s
