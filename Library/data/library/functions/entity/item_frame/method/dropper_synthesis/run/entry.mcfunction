# Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run data get block ~ ~ ~ Items
execute if entity @s[scores={libTemp=1..}] run function library:entity/item_frame/method/dropper_synthesis/run/switch
# 冷却准备
