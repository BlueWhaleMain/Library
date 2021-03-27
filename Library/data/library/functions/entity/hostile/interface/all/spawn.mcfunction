# Copyright by BlueWhale. All Rights Reserved.
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/spawn
# 尸壳
execute if entity @s[type=minecraft:husk] run function library:entity/hostile/interface/husk/spawn
# 溺尸
execute if entity @s[type=minecraft:drowned] run function library:entity/hostile/interface/drowned/spawn
# 骷髅
execute if entity @s[type=minecraft:skeleton] run function library:entity/hostile/interface/skeleton/spawn
# 生成完毕不再执行
tag @s add spawned
