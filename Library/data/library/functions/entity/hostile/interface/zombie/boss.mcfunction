#Copyright by BlueWhale. All Rights Reserved.
# 附近玩家缓慢
effect give @p[distance=..2,gamemode=survival] minecraft:slowness 1 0 true
# spitting
execute if entity @p[distance=..20,gamemode=survival] if predicate library:random/10 run summon minecraft:arrow ^ ^2 ^ {Motion:[0.0d,0.0d,0.0d],NoGravity:true,pickup:2b,damage:2.0d,Potion:"minecraft:long_poison",Tags:["library_shoot","target_player","hostile"]}
## 召唤
scoreboard players set #ZombiesCount libTemp 0
scoreboard players set #ZombiesMax libTemp 2
scoreboard players set #ZombiesBoss libTemp 0
execute as @e[distance=..20,type=zombie,tag=!boss] run scoreboard players add #ZombiesCount libTemp 1
execute as @e[distance=..20,type=zombie,tag=boss] run scoreboard players add #ZombiesBoss libTemp 1
# Boss总数
scoreboard players operation #ZombiesMax libTemp *= #ZombiesBoss libTemp
# 难度系数
scoreboard players operation #ZombiesMax libTemp *= #LibDifficulty libTemp
# 判断数量
execute if score #ZombiesCount libTemp < #ZombiesMax libTemp if score #ZombiesCount libTemp < #ZombieDefaultMax libTemp run function library:entity/hostile/method/zombie/summon_kid
#
