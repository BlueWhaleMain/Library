# Copyright by BlueWhale. All Rights Reserved.
# 清除一个御札，并储存执行结果
execute store result score @s libTemp run clear @s minecraft:fire_charge{id:"library:bill"} 1
# 若清除失败，则额外添加1000
execute if score @s libTemp matches ..0 run scoreboard players add @s libTemp 1000
# 固定添加100作为消耗
scoreboard players add @s libTemp 100
# 乘以难度
scoreboard players operation @s libTemp *= #LibDifficulty libTemp
# 执行消耗
function library:entity/player/method/consume_level/calculate_consume
