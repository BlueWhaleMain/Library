# (c) Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/shoot/model/bill/consume
# 弹消耗
scoreboard players set @s libTemp 100
# 固定添加100作为消耗（靶机*1）
execute if entity @s run function library:entity/player/method/consume_level/calculate_consume
# 执行消耗
