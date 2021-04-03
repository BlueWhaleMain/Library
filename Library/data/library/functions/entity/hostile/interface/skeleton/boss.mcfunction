# Copyright by BlueWhale. All Rights Reserved.
# 检查libDefFever
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libDefFever=0..}] libScoreCheck 1
scoreboard players set @s[scores={libDefFever=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libDefFever 0
# 检查libDefValue
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libDefValue=0..}] libScoreCheck 1
scoreboard players set @s[scores={libDefValue=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libDefValue 0
# 附近玩家移除抗性提升（KR
effect clear @p[distance=..32,gamemode=survival,level=19..] minecraft:resistance
execute if score @s libDefValue matches 1.. if entity @p[level=19..,distance=..16] run tag @s add g
execute if score @s libDefValue matches ..0 if score @s libDefFever matches 1.. if entity @p[level=19..,distance=..16] run tag @s add tp
execute if score @s libDefValue matches ..0 if score @s libDefFever matches ..0 if entity @p[level=19..,distance=..16] run tag @s add sleep
