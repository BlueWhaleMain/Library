#(c) Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run clear @s minecraft:fire_charge{id:"library:small_jade"} 1
#清除一个小玉，并储存执行结果
execute if score @s libTemp matches ..0 run scoreboard players add @s libTemp 500
#若清除失败，则额外添加500
scoreboard players add @s libTemp 50
#固定添加50作为消耗
scoreboard players operation @s libTemp *= #LibDifficulty libTemp
#乘以难度
execute if entity @s run function library:entity/player/method/consume_level/calculate_consume
#执行消耗