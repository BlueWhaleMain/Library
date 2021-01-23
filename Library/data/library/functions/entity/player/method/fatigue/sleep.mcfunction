# Copyright by BlueWhale. All Rights Reserved.
##计算睡眠时间
scoreboard players operation @s libTemp = #LibTime libTemp
# 查询当前时间
execute if score @s libTemp < @s libSleepTime run scoreboard players add @s libTemp 24000
# 边界补充
scoreboard players operation @s libTemp -= @s libSleepTime
# 计算差值
scoreboard players set @s libSleepEff 200
# 设定睡眠效率
scoreboard players operation @s libTemp /= @s libSleepEff
# 计算睡眠结果
scoreboard players operation @s libraryFatigue -= @s libTemp
# 执行睡眠
scoreboard players reset @s libSleepTime
# 重设睡眠时间
#
function library:entity/player/interface/all/event/sleep
# 事件回调
