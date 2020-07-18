#Copyright by BlueWhale. All Rights Reserved.
execute store result score #LibDifficulty libTemp run difficulty
#更新难度
execute store result score #LibMobGriefing libTemp run gamerule mobGriefing
#更新规则：生物破坏
schedule function library:main/1s 1s
#loop
