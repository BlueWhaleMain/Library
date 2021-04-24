# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 at @s anchored eyes run function library:entity/hostile/method/zombie/spit/hard
execute if score #LibDifficulty libTemp matches 2 at @s anchored eyes run function library:entity/hostile/method/zombie/spit/normal
execute if score #LibDifficulty libTemp matches 1 at @s anchored eyes run function library:entity/hostile/method/zombie/spit/easy
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Radius:2,WaitTime:1,ReapplicationDelay:1,Effects:[{Id:19b,Duration:60}]}
# 一次性
tag @s remove spitter
playsound minecraft:entity.llama.spit hostile @a ~ ~1 ~ 1.0
