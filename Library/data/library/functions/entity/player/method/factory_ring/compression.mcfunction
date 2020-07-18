#Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
##堆叠铁粒
execute store result score @s libTemp run clear @s minecraft:iron_ingot{} 0
tag @s[scores={libTemp=1..}] add disable_iron_nugget
execute store result score @s[tag=!disable_iron_nugget] libTemp run clear @s minecraft:iron_nugget 0
scoreboard players set @s[tag=disable_iron_nugget] libTemp 0
tag @s[tag=disable_iron_nugget] remove disable_iron_nugget
give @s[scores={libTemp=9..}] minecraft:iron_ingot
clear @s[scores={libTemp=9..}] minecraft:iron_nugget 9
#
##堆叠铁锭
execute store result score @s libTemp run clear @s minecraft:iron_ingot{} 0
tag @s[scores={libTemp=1..}] add disable_iron_ingot
execute store result score @s[tag=!disable_iron_ingot] libTemp run clear @s minecraft:iron_ingot 0
scoreboard players set @s[tag=disable_iron_ingot] libTemp 0
tag @s[tag=disable_iron_ingot] remove disable_iron_ingot
give @s[scores={libTemp=9..}] minecraft:iron_block
clear @s[scores={libTemp=9..}] minecraft:iron_ingot 9
#
##堆叠金粒
execute store result score @s libTemp run clear @s minecraft:gold_nugget 0
give @s[scores={libTemp=9..}] minecraft:gold_ingot
clear @s[scores={libTemp=9..}] minecraft:gold_nugget 9
#
##堆叠金锭
execute store result score @s libTemp run clear @s minecraft:gold_ingot 0
give @s[scores={libTemp=9..}] minecraft:gold_block
clear @s[scores={libTemp=9..}] minecraft:gold_ingot 9
#
##堆叠钻石
execute store result score @s libTemp run clear @s minecraft:diamond 0
give @s[scores={libTemp=9..}] minecraft:diamond_block
clear @s[scores={libTemp=9..}] minecraft:diamond 9
#
##堆叠煤炭
execute store result score @s libTemp run clear @s minecraft:coal 0
give @s[scores={libTemp=9..}] minecraft:coal_block
clear @s[scores={libTemp=9..}] minecraft:coal 9
#
##堆叠红石
execute store result score @s libTemp run clear @s minecraft:redstone{} 0
tag @s[scores={libTemp=1..}] add disable_redstone
execute store result score @s[tag=!disable_redstone] libTemp run clear @s minecraft:redstone 0
scoreboard players set @s[tag=disable_redstone] libTemp 0
tag @s[tag=disable_redstone] remove disable_redstone
give @s[scores={libTemp=9..}] minecraft:redstone_block
clear @s[scores={libTemp=9..}] minecraft:redstone 9
#
##堆叠青金石
execute store result score @s libTemp run clear @s minecraft:lapis_lazuli 0
give @s[scores={libTemp=9..}] minecraft:lapis_block
clear @s[scores={libTemp=9..}] minecraft:lapis_lazuli 9
#
##堆叠绿宝石
execute store result score @s libTemp run clear @s minecraft:emerald{} 0
tag @s[scores={libTemp=1..}] add disable_emerald
execute store result score @s[tag=!disable_emerald] libTemp run clear @s minecraft:emerald 0
scoreboard players set @s[tag=disable_emerald] libTemp 0
tag @s[tag=disable_emerald] remove disable_emerald
give @s[scores={libTemp=9..}] minecraft:emerald_block
clear @s[scores={libTemp=9..}] minecraft:emerald 9
#
##堆叠骨粉
execute store result score @s libTemp run clear @s minecraft:bone_meal 0
give @s[scores={libTemp=9..}] minecraft:bone_block
clear @s[scores={libTemp=9..}] minecraft:bone_meal 9
#
##堆叠粘液球
execute store result score @s libTemp run clear @s minecraft:slime_ball 0
give @s[scores={libTemp=9..}] minecraft:slime_block
clear @s[scores={libTemp=9..}] minecraft:slime_ball 9
#