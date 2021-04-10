# Copyright by BlueWhale. All Rights Reserved.
##消耗等级
scoreboard players set @s libConsumeLevel 0
scoreboard players set @s libConsumeLvlCac 0
#
##肥胖
scoreboard players set @s libraryFat 10
scoreboard players set @s libFood 0
#
scoreboard players set @s libraryFatigue 0
# 疲劳
scoreboard players set @s libThirsty 0
# 口渴
function library:entity/player/method/battle/death
# 战斗属性
##重置触发器
function library:entity/player/method/system/reset_trigger
function library:entity/player/method/system/_reset_trigger
#
execute at @s[advancements={library:touhou/root=true}] run function library:entity/player/interface/touhou/event/death
# miss
