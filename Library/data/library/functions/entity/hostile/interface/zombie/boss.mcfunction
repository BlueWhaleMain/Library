# Copyright by BlueWhale. All Rights Reserved.
# 附近玩家失明
effect give @p[distance=..2,gamemode=survival] minecraft:night_vision 4 0 true
effect give @p[distance=..16,gamemode=survival] minecraft:blindness 4 0 true
# 附近玩家缓慢
effect give @p[distance=..2,gamemode=survival] minecraft:slowness 2 0 true
# 随机发狂
execute if predicate library:random/10 run tag @s add crazy
## 召唤
scoreboard players set #ZombiesCount libTemp 0
scoreboard players set #ZombiesMax libTemp 2
scoreboard players set #ZombiesBoss libTemp 0
execute as @e[distance=..16,type=zombie,tag=!boss] run scoreboard players add #ZombiesCount libTemp 1
execute as @e[distance=..16,type=zombie,tag=boss] run scoreboard players add #ZombiesBoss libTemp 1
# Boss总数
scoreboard players operation #ZombiesMax libTemp *= #ZombiesBoss libTemp
# 难度系数
scoreboard players operation #ZombiesMax libTemp *= #LibDifficulty libTemp
# 判断数量
execute if entity @s[nbt={OnGround:true}] if score #ZombiesCount libTemp < #ZombiesMax libTemp if score #ZombiesCount libTemp < #ZombieDefaultMax libTemp run function library:entity/hostile/method/zombie/summon_kid
#
# 石油（
execute if entity @s[nbt={IsBaby:1b}] anchored eyes run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.2 10
