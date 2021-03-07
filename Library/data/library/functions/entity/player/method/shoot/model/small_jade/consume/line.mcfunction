# (c) Copyright by BlueWhale. All Rights Reserved.
# 弹消耗
function library:entity/player/method/shoot/model/small_jade/consume
# 固定添加100作为消耗（靶机*1）
scoreboard players set @s libTemp 100
# 执行消耗
function library:entity/player/method/consume_level/calculate_consume
