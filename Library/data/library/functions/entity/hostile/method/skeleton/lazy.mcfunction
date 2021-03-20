# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/skeleton/lazy/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/skeleton/lazy/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/skeleton/lazy/easy
# 播放音效：狂妄之人（

# 生成粒子：灵魂火焰
execute if entity @s[tag=lazy] run particle minecraft:soul_fire_flame ^0.15 ^1.65 ^0.05 0.01 0.01 0.01 0 10
# 不懒了
execute if predicate library:random/10 run tag @s remove lazy
tag @s[tag=!boss,tag=lazy] remove lazy
