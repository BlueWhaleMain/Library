# Copyright by BlueWhale. All Rights Reserved.
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[0] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[0] 10000
execute store result entity @s power[0] double 0.00001 run scoreboard players operation #EntityTargetPos libTemp -= #EntitySmallFireballPos libTemp
execute store result entity @s[tag=player] power[0] double 0.0001 run data get entity @s power[0] 20000
execute store result entity @s[nbt={Item:{tag:{"CustomModelData":12760003}}}] power[0] double 0.0001 run data get entity @s power[0] 20000
# 跟踪X
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[1] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[1] 10000
execute store result entity @s power[1] double 0.00001 run scoreboard players operation #EntityTargetPos libTemp -= #EntitySmallFireballPos libTemp
execute store result entity @s[tag=player] power[1] double 0.0001 run data get entity @s power[1] 20000
execute store result entity @s[nbt={Item:{tag:{"CustomModelData":12760003}}}] power[1] double 0.0001 run data get entity @s power[1] 20000
# 跟踪Y
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[2] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[2] 10000
execute store result entity @s power[2] double 0.00001 run scoreboard players operation #EntityTargetPos libTemp -= #EntitySmallFireballPos libTemp
execute store result entity @s[tag=player] power[2] double 0.0001 run data get entity @s power[2] 20000
execute store result entity @s[nbt={Item:{tag:{"CustomModelData":12760003}}}] power[2] double 0.0001 run data get entity @s power[2] 20000
# 跟踪Z
tag @s remove library_shoot_spy
# 结束标记
kill @e[distance=..2,sort=nearest,type=minecraft:armor_stand,tag=library_shoot_target,limit=1]
# 清除靶子
