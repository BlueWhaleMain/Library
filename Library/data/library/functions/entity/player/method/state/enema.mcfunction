# Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/battle/clear
effect give @s minecraft:nausea 10 1 true
# 必须有食物水平才能呕吐
effect give @s[scores={libraryFood=1..}] minecraft:hunger 1 100 true
scoreboard players add @s libThirsty 5
scoreboard players add @s[scores={libraryFood=1..}] libFatigue 1
