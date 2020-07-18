#Copyright by BlueWhale. All Rights Reserved.
data modify entity @s[scores={libraryFat=..0}] DeathLootTable set value "minecraft:entities/slime"
data modify entity @s[scores={libraryFat=1..}] DeathLootTable set value "minecraft:empty"
scoreboard players reset @s libraryFat
scoreboard players reset @s libTouhouCTime
scoreboard players reset @s libTouhouCEscape
scoreboard players reset @s libTouhouCFlag
