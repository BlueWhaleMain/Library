# Copyright by BlueWhale. All Rights Reserved.
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/select_boss
# 骷髅（附近没有Boss才会选择）
execute unless entity @e[type=#library:hostile,tag=boss,distance=..64] if entity @s[type=minecraft:skeleton] run function library:entity/hostile/interface/skeleton/select_boss
