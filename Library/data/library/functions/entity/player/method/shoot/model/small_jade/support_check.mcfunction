#Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[scores={ctm_sneak_time=..0}] run function library:entity/player/method/shoot/model/small_jade/support_shoot
#未潜行
execute unless entity @s[scores={ctm_sneak_time=..0}] run function library:entity/player/method/shoot/model/small_jade/shift_support_shoot
#潜行
