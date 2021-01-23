# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
scoreboard players add @s[nbt={Item:{id:"minecraft:white_wool"}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 1 run function library:entity/item_frame/method/loom_synthesis/dist/white_cloth
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 1 run function library:entity/item_frame/method/loom_synthesis/cancel/white_cloth
# 白色布
