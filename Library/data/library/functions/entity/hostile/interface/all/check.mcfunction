# Copyright by BlueWhale. All Rights Reserved.
# 周围16格有玩家时发起弹幕攻击
execute at @s[tag=hostile,tag=!not_allowed_touhou,scores={libTouhouCTime=1..,libTouhouCEscape=..0}] anchored eyes if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function library:entity/hostile/interface/all/card
# 破坏
execute at @s if score #LibMobGriefing libTemp matches 1.. run function library:entity/hostile/interface/all/break
##符卡运行
scoreboard players remove @s[scores={libTouhouCTime=1..}] libTouhouCTime 1
scoreboard players remove @s[scores={libTouhouCEscape=1..}] libTouhouCEscape 1
scoreboard players add @s[scores={libTouhouCTime=1..,libTouhouCEscape=..0,libTouhouCFlag=1..}] libTouhouCFlag 1
#
# 骷髅
execute at @s[type=minecraft:skeleton] run function library:entity/hostile/interface/skeleton/check
## Boss直接生成任务-无敌时间
data merge entity @s[tag=boss_spawn] {NoGravity:1b,Invulnerable:1b}
effect give @s[tag=boss_spawn] minecraft:slowness 1 255 true
#
