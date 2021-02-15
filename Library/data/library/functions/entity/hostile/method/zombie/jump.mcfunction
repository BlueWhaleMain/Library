# Copyright by BlueWhale. All Rights Reserved.
# 助跑跳
function library:entity/hostile/method/zombie/sprint
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/zombie/jump/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/zombie/jump/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/zombie/jump/easy
# TODO 增加跳跃破坏方块的功能
# 播放音效：转变为溺尸
playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~1 ~ 1.0
# 一次性
tag @s remove jumper
