# Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTouhouCFlag matches 2 run function library:entity/hostile/method/slime/shoot/model/small_jade/spherical
# 简单
execute if score #LibDifficulty libTemp matches 2.. if score @s libTouhouCFlag matches 8 run function library:entity/hostile/method/slime/shoot/model/small_jade/spherical
# 普通
execute if score #LibDifficulty libTemp matches 3.. if score @s libTouhouCFlag matches 14 run function library:entity/hostile/method/slime/shoot/model/small_jade/spherical
# 困难
effect give @s minecraft:resistance 1 2 true
# 铁皮
execute if score @s libTouhouCFlag matches 20 run function library:entity/hostile/method/slime/reset
# 结束
