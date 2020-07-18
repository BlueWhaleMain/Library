#Copyright by BlueWhale. All Rights Reserved.
## 计算参数初始化
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCTime=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCTime=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCTime 0
# 检查libTouhouCTime
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCEscape=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCEscape=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCEscape 0
# 检查libTouhouCEscape
#
execute store result score @s libTemp run data get block ~ ~ ~ Items
execute if block ~ ~-1 ~ minecraft:lapis_block run scoreboard players remove @s[scores={libTouhouCTime=1..,libTemp=1..},tag=s] libTouhouCTime 1
# 充能倒计时
execute unless block ~ ~-1 ~ minecraft:lapis_block run scoreboard players remove @s[scores={libTouhouCEscape=1..,libTemp=1..},tag=s] libTouhouCEscape 1
# 冷却倒计时