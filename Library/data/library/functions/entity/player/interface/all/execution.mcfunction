#Copyright by BlueWhale. All Rights Reserved.
##计算参数初始化
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libHealth=0..}] libScoreCheck 1
scoreboard players set @s[scores={libHealth=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libHealth 0
#检查libHealth
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libAtkFever=0..}] libScoreCheck 1
scoreboard players set @s[scores={libAtkFever=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libAtkFever 0
#检查libAtkFever
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libDefFever=0..}] libScoreCheck 1
scoreboard players set @s[scores={libDefFever=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libDefFever 0
#检查libDefFever
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libAtkValue=0..}] libScoreCheck 1
scoreboard players set @s[scores={libAtkValue=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libAtkValue 0
#检查libAtkValue
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libDefValue=0..}] libScoreCheck 1
scoreboard players set @s[scores={libDefValue=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libDefValue 0
#检查libDefValue
#
execute if entity @a[distance=..2,tag=admin,nbt={SelectedItem:{tag:{id:"admin_sword"}}}] run function library:entity/player/method/message/critical
execute if entity @s[tag=slow_falling] run function library:entity/player/method/state/slow_falling
#缓降
##组合动作
execute if entity @s[scores={slw_sneak_time=1..,slw_damage_dealt=1..}] run function library:entity/player/interface/all/event/backstab
#背刺
execute if entity @s[scores={slw_sprint_cm=1..,slw_jump=1..}] run function library:entity/player/interface/all/event/a_running_jump
#助跑跳
execute if entity @s[scores={slw_sprint_cm=1..,slw_damage_dealt=1..}] run function library:entity/player/interface/all/event/repel
#击退
execute if entity @s[scores={slw_jump=1..,slw_sneak_time=1..}] run function library:entity/player/interface/all/event/high_jump
#高跳
execute if entity @s[scores={slw_jump=1..,slw_damage_dealt=1..},nbt=!{"ActiveEffects":[{"Id":27b}]},nbt=!{"ActiveEffects":[{"Id":15b}]}] run function library:entity/player/interface/all/event/crit
#暴击
execute if entity @s[scores={slw_sprint_cm=1..,slw_jump=1..,slw_damage_dealt=1..},nbt=!{"ActiveEffects":[{"Id":27b}]},nbt=!{"ActiveEffects":[{"Id":15b}]}] run function library:entity/player/interface/all/event/hit_a_heart
#会心一击
execute if entity @s[scores={slw_sneak_time=1..,slw_jump=1..,slw_damage_dealt=1..},nbt=!{"ActiveEffects":[{"Id":27b}]},nbt=!{"ActiveEffects":[{"Id":15b}]}] run function library:entity/player/interface/all/event/backstab_crit
#致命一击
execute if entity @s[scores={slw_sneak_time=1..,slw_sprint_cm=1..,slw_jump=1..}] run function library:entity/player/interface/all/event/strength_a_running_jump
#蓄力助跑跳
execute if entity @s[scores={slw_sneak_time=1..,slw_sprint_cm=1..,slw_jump=1..,slw_damage_dealt=1..},nbt=!{"ActiveEffects":[{"Id":27b}]},nbt=!{"ActiveEffects":[{"Id":15b}]}] run function library:entity/player/interface/all/event/god
#God
#
tag @s[tag=teleport] remove teleport
#关闭传送循环
execute if score @s _used_COAS matches 1.. run function library:entity/player/interface/all/event/_used_carrot_on_a_stick
#使用胡萝卜钓竿
execute if score @s[scores={slw_sneak_time=1..}] _used_COAS matches 1.. run function library:entity/player/interface/all/event/sneak_used_carrot_on_a_stick
#潜行使用胡萝卜钓竿
###疲劳系统基本检查
##检查睡眠时间是否未定义
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libSleepTime=0..}] libScoreCheck 1
scoreboard players set @s[scores={libSleepTime=..-1}] libScoreCheck 1
#
execute if entity @s[scores={ctm_since_rest=..0,libScoreCheck=..0}] run scoreboard players operation @s libSleepTime = #LibTime libTemp
#查询时间
execute if entity @s[scores={ctm_since_rest=1..,libScoreCheck=1..}] run function library:entity/player/method/fatigue/sleep
#执行睡眠
scoreboard players set @s[scores={libraryFatigue=..-1}] libraryFatigue 0
#边界检查
##
###战斗系统
execute if score #LibDifficulty libTemp matches 0 run function library:entity/player/method/battle/clear
#难度为0清除
##按时间减少lib%sValue
scoreboard players remove @s[scores={libAtkValue=1..},tag=!is_already_bomb] libAtkValue 1
scoreboard players remove @s[scores={libDefValue=1..}] libDefValue 1
#
execute if entity @s[scores={libAtkFever=..-10}] run function library:entity/player/method/battle/attack
#恢复攻击
execute if score @s libAtkFever matches 1.. run function library:entity/player/method/battle/-attack
#降低atk
execute if score @s libDefFever matches 1.. run function library:entity/player/method/battle/-defend
#降低def
##ATK
scoreboard players operation @s libAtk = @s libAtkFever
scoreboard players operation @s libAtk += @s libAtkValue
#计算ATK
execute if score @s libAtk matches ..-10 run function library:entity/player/method/battle/weak
execute if score @s libAtk matches 10.. run function library:entity/player/method/battle/strength
#应用效果
#
##DEF
scoreboard players operation @s libDef = @s libDefFever
scoreboard players operation @s libDef += @s libDefValue
#计算DEF
execute if score @s libDef matches 10.. run function library:entity/player/method/battle/focus
#应用效果
#
advancement grant @s[scores={libAtkFever=199..,libDefFever=199..},advancements={library:battle/battle_fever=false}] only library:battle/battle_fever
#给予进度：攻守兼备
##
execute if entity @s[gamemode=survival] run function library:entity/player/interface/survival/execution
#执行生存模式逻辑
function library:entity/player/method/system/_reset_trigger
#重置触发器
scoreboard players enable @s showVersion
#启用触发器