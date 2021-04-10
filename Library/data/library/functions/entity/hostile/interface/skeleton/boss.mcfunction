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
# 战斗
execute if entity @p[distance=..16,level=19..,gamemode=survival] run function library:entity/hostile/method/skeleton/battle
# 不能被传送
data modify entity @s PortalCooldown set value 60
