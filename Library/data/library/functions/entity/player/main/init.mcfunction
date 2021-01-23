# (c) Copyright by BlueWhale. All Rights Reserved.
execute if score #LibEntityPlayer libScoreCheck matches 1 run say updating player...
###注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
###提示：如果与其他数据包冲突，请检查本函数，原因同上
##变量：使用
scoreboard objectives add used_COAS minecraft.used:minecraft.carrot_on_a_stick {"translate":"score.library.used_COAS"}
scoreboard objectives add _used_COAS minecraft.used:minecraft.carrot_on_a_stick {"translate":"score.library._used_COAS"}
# 使用胡萝卜钓竿
#
##变量：虚拟
scoreboard objectives add libraryFat dummy {"translate":"score.library.libraryFat"}
# 肥胖度
scoreboard objectives add libraryFatigue dummy {"translate":"score.library.libraryFatigue"}
# 疲劳度
scoreboard objectives add libThirsty dummy {"translate":"score.library.libThirsty"}
# 口渴度
scoreboard objectives add libConsumeLevel dummy {"translate":"score.library.libConsumeLevel"}
# 消耗程度
scoreboard objectives add libConsumeLvlCac dummy {"translate":"score.library.libConsumeLvlCac"}
# 消耗程度计算缓存
scoreboard objectives add libAtkFever dummy {"translate":"score.library.libAtkFever"}
# 攻击亢奋程度
scoreboard objectives add libDefFever dummy {"translate":"score.library.libDefFever"}
# 防御专注程度
scoreboard objectives add libAtkValue dummy {"translate":"score.library.libAtkValue"}
# 攻击附加参数
scoreboard objectives add libDefValue dummy {"translate":"score.library.libDefValue"}
# 防御附加参数
scoreboard objectives add libAtk dummy {"translate":"score.library.libAtk"}
# 攻击计算参数
scoreboard objectives add libDef dummy {"translate":"score.library.libDef"}
# 防御计算参数
scoreboard objectives add libHealth dummy {"translate":"score.library.libHealth"}
# 生命计算参数
scoreboard objectives add libFood dummy {"translate":"score.library.libFood"}
# 饱和计算参数（肥胖支出）
scoreboard objectives add libSleepTime dummy {"translate":"score.library.libSleepTime"}
# 睡觉时间戳
scoreboard objectives add libSleepEff dummy {"translate":"score.library.libSleepEff"}
# 睡眠效率（常量）
#
##只读变量：饱和度
scoreboard objectives add libraryFood food {"translate":"score.library.libraryFood"}
#
##只读变量：生命值
scoreboard objectives add libraryHealth health {"translate":"score.library.libraryHealth"}
#
##变量：自上次睡觉
scoreboard objectives add ctm_since_rest minecraft.custom:minecraft.time_since_rest {"translate":"score.library.ctm_since_rest"}
#
##变量：死亡次数
scoreboard objectives add libDeathCount deathCount {"translate":"score.library.libDeathCount"}
#
##变量：吃蛋糕次数
scoreboard objectives add ctm_eatCake minecraft.custom:minecraft.eat_cake_slice {"translate":"score.library.ctm_eatCake"}
#
##变量：游泳（厘米）
scoreboard objectives add ctm_swim_cm minecraft.custom:minecraft.swim_one_cm {"translate":"score.library.ctm_swim_cm"}
#
##变量：行走（厘米）
scoreboard objectives add ctm_walk_cm minecraft.custom:minecraft.walk_one_cm {"translate":"score.library.ctm_walk_cm"}
scoreboard objectives add slw_walk_cm minecraft.custom:minecraft.walk_one_cm {"translate":"score.library.slw_walk_cm"}
#
##变量：水上行走（厘米）
scoreboard objectives add ctm_WOW_cm minecraft.custom:minecraft.walk_on_water_one_cm {"translate":"score.library.ctm_WOW_cm"}
#
##变量：水下行走（厘米）
scoreboard objectives add ctm_WUW_cm minecraft.custom:minecraft.walk_under_water_one_cm {"translate":"score.library.ctm_WUW_cm"}
#
##变量：疾跑（厘米）
scoreboard objectives add ctm_sprint_cm minecraft.custom:minecraft.sprint_one_cm {"translate":"score.library.ctm_sprint_cm"}
scoreboard objectives add slw_sprint_cm minecraft.custom:minecraft.sprint_one_cm {"translate":"score.library.slw_sprint_cm"}
#
##变量：爬梯子（厘米）
scoreboard objectives add ctm_climb_cm minecraft.custom:minecraft.climb_one_cm {"translate":"score.library.ctm_climb_cm"}
#
##变量：跳跃次数
scoreboard objectives add ctm_jump minecraft.custom:minecraft.jump {"translate":"score.library.ctm_jump"}
scoreboard objectives add slw_jump minecraft.custom:minecraft.jump {"translate":"score.library.slw_jump"}
#
##变量：潜行时间
scoreboard objectives add ctm_sneak_time minecraft.custom:minecraft.sneak_time {"translate":"score.library.ctm_sneak_time"}
scoreboard objectives add slw_sneak_time minecraft.custom:minecraft.sneak_time {"translate":"score.library.slw_sneak_time"}
#
##变量：潜行距离
scoreboard objectives add ctm_CO_cm minecraft.custom:minecraft.crouch_one_cm {"translate":"score.library.crouch_one_cm"}
#
##变量：造成伤害
scoreboard objectives add ctm_damage_dealt minecraft.custom:minecraft.damage_dealt {"translate":"score.library.ctm_damage_dealt"}
scoreboard objectives add slw_damage_dealt minecraft.custom:minecraft.damage_dealt {"translate":"score.library.slw_damage_dealt"}
#
##变量：受到伤害
scoreboard objectives add ctm_damage_taken minecraft.custom:minecraft.damage_taken {"translate":"score.library.ctm_damage_taken"}
scoreboard objectives add slw_damage_taken minecraft.custom:minecraft.damage_taken {"translate":"score.library.slw_damage_taken"}
#
##变量：触发器
scoreboard objectives add showVersion trigger {"translate":"score.library.showVersion"}
#
##执行
function #library:entity/player/open
scoreboard players set #LibEntityPlayer libTemp 3
execute if score #LibEntityPlayer libScoreCheck matches 0 run say Player load success!
execute if score #LibEntityPlayer libScoreCheck matches 1 run say Player update success!
#
