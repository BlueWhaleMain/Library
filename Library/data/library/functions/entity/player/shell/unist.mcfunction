#(c) Copyright by BlueWhale. All Rights Reserved.
##变量：使用
scoreboard objectives remove used_COAS
scoreboard objectives remove _used_COAS
#使用胡萝卜钓竿
#
##变量：虚拟
scoreboard objectives remove libraryFat
#肥胖度
scoreboard objectives remove libraryFatigue
#疲劳度
scoreboard objectives remove libThirsty
#口渴度
scoreboard objectives remove libConsumeLevel
#消耗程度
scoreboard objectives remove libConsumeLvlCac
#消耗程度计算缓存
scoreboard objectives remove libAtkFever
#攻击亢奋程度
scoreboard objectives remove libDefFever
#防御专注程度
scoreboard objectives remove libAtkValue
#攻击附加参数
scoreboard objectives remove libDefValue
#防御附加参数
scoreboard objectives remove libAtk
#攻击计算参数
scoreboard objectives remove libDef
#防御计算参数
scoreboard objectives remove libHealth
#生命计算参数
scoreboard objectives remove libFood
#饱和计算参数（肥胖支出）
scoreboard objectives remove libSleepTime
#睡觉时间戳
scoreboard objectives remove libSleepEff
#睡眠效率（常量）
#
##只读变量：饱和度
scoreboard objectives remove libraryFood
#
##只读变量：生命值
scoreboard objectives remove libraryHealth
#
##变量：自上次睡觉
scoreboard objectives remove ctm_since_rest
#
##变量：死亡次数
scoreboard objectives remove libDeathCount
#
##变量：吃蛋糕次数
scoreboard objectives remove ctm_eatCake
#
##变量：游泳（厘米）
scoreboard objectives remove ctm_swim_cm
#
##变量：行走（厘米）
scoreboard objectives remove ctm_walk_cm
scoreboard objectives remove slw_walk_cm
#
##变量：水上行走（厘米）
scoreboard objectives remove ctm_WOW_cm
#
##变量：水下行走（厘米）
scoreboard objectives remove ctm_WUW_cm
#
##变量：疾跑（厘米）
scoreboard objectives remove ctm_sprint_cm
scoreboard objectives remove slw_sprint_cm
#
##变量：爬梯子（厘米）
scoreboard objectives remove ctm_climb_cm
#
##变量：跳跃次数
scoreboard objectives remove ctm_jump
scoreboard objectives remove slw_jump
#
##变量：潜行时间
scoreboard objectives remove ctm_sneak_time
scoreboard objectives remove slw_sneak_time
#
##变量：潜行距离
scoreboard objectives remove ctm_CO_cm
#
##变量：造成伤害
scoreboard objectives remove ctm_damage_dealt
scoreboard objectives remove slw_damage_dealt
#
##变量：受到伤害
scoreboard objectives remove ctm_damage_taken
scoreboard objectives remove slw_damage_taken
#
##变量：触发器
scoreboard objectives remove showVersion
#
scoreboard players reset #LibEntityPlayer libTemp
#重置安装状态
schedule clear #library:entity/player/open