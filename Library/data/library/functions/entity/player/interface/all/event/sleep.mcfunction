# Copyright by BlueWhale. All Rights Reserved.
##战斗参数
execute if score @s libAtkFever matches 1.. run function library:entity/player/method/battle/sleep/atk_down
execute if score @s libDefFever matches 1.. run function library:entity/player/method/battle/sleep/def_down
execute if score @s libAtkFever matches ..-1 run function library:entity/player/method/battle/sleep/atk_up
execute if score @s libDefFever matches ..-1 run function library:entity/player/method/battle/sleep/def_up
#
execute if score @s[gamemode=survival] libTemp matches 1.. run function library:entity/player/method/food/sleep
# 食物水平
execute if score @s[gamemode=survival] libTemp matches 1.. run function library:entity/player/method/health/sleep
# 生命
execute if score @s[gamemode=survival] libTemp matches 1.. run function library:entity/player/method/thirsty/sleep
# 口渴
advancement grant @s[advancements={library:battle/sleep=false}] only library:battle/sleep
# 给予进度：一觉醒来
