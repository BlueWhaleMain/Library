#Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/zombie/spit/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/zombie/spit/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/zombie/spit/easy
effect clear @s minecraft:poison
# 一次性
tag @s remove spitter
playsound minecraft:entity.llama.spit hostile @a ~ ~1 ~ 1.0
