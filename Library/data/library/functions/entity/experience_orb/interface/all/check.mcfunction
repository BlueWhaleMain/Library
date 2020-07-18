#Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run data get entity @s Value 1
execute store result score #libValue libTemp run data get entity @s Value 1
execute at @s[scores={libTemp=1..1237},tag=] if entity @e[distance=..1,type=minecraft:experience_orb,limit=2,tag=] run function library:entity/experience_orb/method/experience_upper
# 经验球堆叠
execute store result score @s libTemp run data get entity @s Value 1
execute unless score #libValue libTemp = @s libTemp at @s[tag=] run function library:entity/experience_orb/method/spawn_new
execute at @s[tag=new] if entity @e[tag=base] run function library:entity/experience_orb/method/fill_new
kill @s[tag=new]
kill @s[tag=removed]
