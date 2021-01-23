# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s libConsumeLevel 1
# 消耗累计
##疲劳累计
scoreboard players add @s libraryFatigue 1
scoreboard players remove @s[nbt={"ActiveEffects":[{"Id":15b}]}] libraryFatigue 2
#
