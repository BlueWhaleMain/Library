# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/zombie/crazy/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/zombie/crazy/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/zombie/crazy/easy
# 播放音效：转变为溺尸
playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~1 ~ 1.0
# 一次性
tag @s remove crazy
