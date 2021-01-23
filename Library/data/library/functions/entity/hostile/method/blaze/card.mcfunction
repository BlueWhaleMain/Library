# Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTouhouCFlag matches 2 run function library:entity/hostile/method/blaze/shoot/model/small_jade/spy
# 简单
execute if score #LibDifficulty libTemp matches 2.. if score @s libTouhouCFlag matches 4 run function library:entity/hostile/method/blaze/shoot/model/small_jade/spherical
# 普通
execute if score #LibDifficulty libTemp matches 3.. if score @s libTouhouCFlag matches 8 run function library:entity/hostile/method/blaze/shoot/model/small_jade/powered_spherical
# 困难
effect give @s minecraft:resistance 1 3 true
# 铁皮
execute if score @s libTouhouCFlag matches 10 run function library:entity/hostile/method/blaze/reset
# 结束
