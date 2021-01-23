# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set #EntityArrowMotion libTemp 0
execute store result score #EntityArrowMotionX libTemp run data get entity @s Motion[0] 2
execute store result score #EntityArrowMotionY libTemp run data get entity @s Motion[1] 2
execute store result score #EntityArrowMotionZ libTemp run data get entity @s Motion[2] 2
scoreboard players operation #EntityArrowMotion libTemp += #EntityArrowMotionX libTemp
scoreboard players operation #EntityArrowMotion libTemp += #EntityArrowMotionY libTemp
scoreboard players operation #EntityArrowMotion libTemp += #EntityArrowMotionZ libTemp
execute if score #EntityArrowMotion libTemp matches ..1 run data modify entity @s NoGravity set value false
execute store result score @s libTemp run data get entity @s shake
execute if score @s libTemp matches 1.. run data modify entity @s NoGravity set value false
