tag @s add library_random_target
#设置自身为随机数计算目标
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["library_random_target"]}
#召唤药水云做为随机数计算目标
##随机赋值
scoreboard players set @e[tag=library_random_target] libraryRandom 0
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 1
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 2
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 4
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 8
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 16
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 32
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 64
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 128
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 256
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 512
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 1024
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 2048
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 4096
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 8192
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 16384
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 32768
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 65536
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 131072
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 262144
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 524288
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 1048576
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 2097152
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 4194304
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 8388608
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 16777216
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 33554432
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 67108864
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 134217728
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 268435456
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 536870912
scoreboard players add @e[tag=library_random_target,sort=random,limit=1] libraryRandom 1073741824
#
##计算结果
scoreboard players operation @s libraryRandomMax -= @s libraryRandomMin
scoreboard players add @s libraryRandomMax 1
scoreboard players operation @s libraryRandom %= @s libraryRandomMax
scoreboard players operation @s libraryRandom += @s libraryRandomMin
#
tag @s remove library_random_target
#移除自身的随机标签
kill @e[type=minecraft:area_effect_cloud,tag=library_random_target,limit=1]
#清除召唤的药水云