# Copyright by BlueWhale. All Rights Reserved.
# 僵尸Boss
execute at @s[type=minecraft:zombie] run function library:entity/hostile/method/zombie/select_boss
# 骷髅Boss
execute at @s[type=minecraft:skeleton] run function library:entity/hostile/method/skeleton/select_boss
# 取消无敌
data merge entity @s[tag=boss_spawn] {NoGravity:0b,Invulnerable:0b}
# 禁用重新选择
tag @s add selected
tag @s remove boss_spawn
