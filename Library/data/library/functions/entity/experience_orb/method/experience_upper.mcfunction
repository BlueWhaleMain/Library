#Copyright by BlueWhale. All Rights Reserved.
tag @s add experience_upper
execute store result score #EntityExperienceOrbValue libTemp run data get entity @e[distance=..1,sort=nearest,type=minecraft:experience_orb,limit=1,tag=] Value 1
execute store result entity @s Value short 1 run scoreboard players operation @s libTemp += #EntityExperienceOrbValue libTemp
tag @e[distance=..1,sort=nearest,type=minecraft:experience_orb,limit=1,tag=] add removed
tag @s remove experience_upper
# 加锁操作，合并经验球