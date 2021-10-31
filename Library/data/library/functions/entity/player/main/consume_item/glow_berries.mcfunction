# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..18,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 1
effect give @s minecraft:regeneration 3 0 true
scoreboard players add @s libHealth 3
advancement revoke @s only library:trigger/consume_item/glow_berries
