# (c) Copyright by BlueWhale. All Rights Reserved.
# 一般检测
execute if score @s libConsumeLevel matches 16.. run function library:entity/player/interface/survival/event/consume
# 消耗
execute if score @s ctm_eatCake matches 1.. run function library:entity/player/interface/survival/event/eat_cake
# 吃蛋糕
##一般运动
execute if score @s ctm_damage_taken matches 1.. run function library:entity/player/interface/survival/event/damage_taken
# 受到伤害
#
