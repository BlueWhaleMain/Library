# Copyright by BlueWhale. All Rights Reserved.
##堆叠残机
execute store result score @s libTemp run clear @s minecraft:paper{id:"library:player_orb"} 0
execute if score @s libTemp matches 5.. at @s run function library:entity/player/method/player_orb/extend
#
##堆叠P点
execute store result score @s libTemp run clear @s minecraft:redstone{id:"library:small_power_orb"} 0
execute if score @s libTemp matches 20.. at @s run function library:entity/player/method/small_power_orb/extend
#
##PowerUp
execute store result score @s libTemp run clear @s minecraft:redstone{id:"library:power_orb"} 0
execute store result score @s libScoreCheck run data get entity @s Inventory[{Slot:-106b}].Count
execute at @s[scores={libTemp=1..,libScoreCheck=..3},nbt={Inventory:[{Slot:-106b,tag:{id:"library:yin_yang_yu"}}]}] run function library:entity/player/method/shoot/power_up
#
