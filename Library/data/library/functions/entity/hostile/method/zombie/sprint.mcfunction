# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/zombie/sprint/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/zombie/sprint/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/zombie/sprint/easy
# TODO 增加冲撞破坏方块的功能
effect clear @s minecraft:slowness
# 播放音效：转变为溺尸
playsound minecraft:entity.zombie.converted_to_drowned hostile @a ~ ~1 ~ 1.0
# 一次性
tag @s remove sprinter
