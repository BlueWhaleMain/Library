# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..18,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 10
give @s minecraft:melon_seeds
scoreboard players add @s libHealth 1
advancement revoke @s only library:trigger/consume_item/melon_slice
