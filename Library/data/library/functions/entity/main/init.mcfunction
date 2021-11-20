# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibEntity libScoreCheck matches 1 run say updating entity...
###注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
###提示：如果与其他数据包冲突，请检查本函数，原因同上
##变量：虚拟
scoreboard objectives add libTouhouCTime dummy {"translate":"score.library.libTouhouCTime"}
# 符卡时间（倒计时-刻）
scoreboard objectives add libTouhouCEscape dummy {"translate":"score.library.libTouhouCEscape"}
# 间隔时间（重复回放）
scoreboard objectives add libTouhouCFlag dummy {"translate":"score.library.libTouhouCFlag"}
# 符卡标记（释放进度）
scoreboard objectives add LibMX dummy {"translate":"score.library.LibMX"}
# X轴速度（滞后更新，用于检测碰撞）
scoreboard objectives add LibMY dummy {"translate":"score.library.LibMY"}
# Y轴速度（滞后更新，用于检测碰撞）
scoreboard objectives add LibMZ dummy {"translate":"score.library.LibMZ"}
# Z轴速度（滞后更新，用于检测碰撞）
#
##执行
function #library:entity/open
scoreboard players set #LibEntity libTemp 10
execute if score #LibEntity libScoreCheck matches 0 run say Entity load success!
execute if score #LibEntity libScoreCheck matches 1 run say Entity update success!
#
