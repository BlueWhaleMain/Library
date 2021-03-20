# (c) Copyright by BlueWhale. All Rights Reserved.
# 消耗
execute if score @s libConsumeLevel matches 16.. run function library:entity/player/interface/survival/event/consume
# 吃蛋糕
execute if score @s ctm_eatCake matches 1.. run function library:entity/player/interface/survival/event/eat_cake
# 受到伤害
execute if score @s ctm_damage_taken matches 1.. run function library:entity/player/interface/survival/event/damage_taken
# 消耗肥胖
execute if score @s libFood matches 100.. run function library:entity/player/method/state/slim
