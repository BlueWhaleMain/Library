#Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTouhouCFlag matches 2 run function library:entity/hostile/method/slime/shoot/model/small_jade/spy
#简单
execute if score #LibDifficulty libTemp matches 2.. if score @s libTouhouCFlag matches 7 run function library:entity/hostile/method/slime/shoot/model/small_jade/spy
#普通
execute if score #LibDifficulty libTemp matches 3.. if score @s libTouhouCFlag matches 12 run function library:entity/hostile/method/slime/shoot/model/small_jade/spy
#困难
execute if score @s libTouhouCFlag matches 20 run function library:entity/hostile/method/slime/reset
#结束