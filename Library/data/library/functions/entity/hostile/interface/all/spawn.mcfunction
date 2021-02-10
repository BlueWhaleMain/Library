#Copyright by BlueWhale. All Rights Reserved.
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/spawn
# 生成完毕不再执行
tag @s add spawned
