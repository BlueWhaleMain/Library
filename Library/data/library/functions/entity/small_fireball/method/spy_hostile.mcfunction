#(c) Copyright by BlueWhale. All Rights Reserved.
data merge entity @s[tag=!induction,tag=!track] {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}
#清空运动状态（忽略诱导）
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..32,sort=nearest,type=#library:hostile,limit=1] Pos[0] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[0] 10000
execute store result entity @s power[0] double 0.000001 run scoreboard players operation #EntityHostilePos libTemp -= #EntitySmallFireballPos libTemp
#跟踪X
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..32,sort=nearest,type=#library:hostile,limit=1] Pos[1] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[1] 10000
execute store result entity @s power[1] double 0.000001 run scoreboard players operation #EntityHostilePos libTemp -= #EntitySmallFireballPos libTemp
#跟踪Y
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..32,sort=nearest,type=#library:hostile,limit=1] Pos[2] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[2] 10000
execute store result entity @s power[2] double 0.000001 run scoreboard players operation #EntityHostilePos libTemp -= #EntitySmallFireballPos libTemp
#跟踪Z
tag @s remove target_hostile
#结束标记