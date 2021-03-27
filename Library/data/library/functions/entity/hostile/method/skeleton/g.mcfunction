# Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:evoker_fangs,tag=g,sort=nearest,distance=..16,limit=1] Owner set from entity @s UUID
effect give @p[gamemode=survival,level=19..,distance=..64,nbt={OnGround:false,ActiveEffects:[{Id:25b,ShowParticles:0b}]}] minecraft:levitation 1 128 true
execute at @p[gamemode=survival,level=19..,distance=..16,nbt={OnGround:true},nbt=!{ActiveEffects:[{Id:25b}]}] run function library:entity/hostile/method/skeleton/bone
# 难度分支
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/skeleton/g/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/skeleton/g/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/skeleton/g/easy
# 无敌
effect give @s minecraft:resistance 1 255 true
# 消耗
scoreboard players remove @s libDefValue 1
# 生成粒子：灵魂火焰
execute anchored eyes run particle minecraft:soul_fire_flame ^0.15 ^ ^0.05 0.01 0.01 0.01 0 10
# 停止控制
tag @s remove g
