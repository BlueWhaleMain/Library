# Copyright by BlueWhale. All Rights Reserved.
# 附近玩家移除抗性提升（KR
effect clear @p[distance=..16,level=19..,gamemode=survival] minecraft:resistance

tag @s[scores={libDefValue=1..}] add g
tag @s[scores={libDefValue=..0,libDefFever=1..}] add tp

scoreboard players remove @s[tag=g] libThirsty 1
scoreboard players remove @s[tag=tp] libThirsty 4
scoreboard players set @s libraryRandomMax 20
scoreboard players set @s libraryRandomMin 0
scoreboard players operation @s libraryRandomMin -= @s libThirsty
scoreboard players set @s[scores={libraryRandomMin=..-1}] libraryRandomMin 0
scoreboard players set @s[scores={libraryRandomMin=20..}] libraryRandomMin 19
function library:method/math/random
tag @s[scores={libraryRandom=19..}] add speak

tag @s[scores={libDefValue=..0,libDefFever=..0}] add sleep
