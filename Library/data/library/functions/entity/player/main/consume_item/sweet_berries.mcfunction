# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..18,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 1
effect give @s minecraft:regeneration 1 0 true
advancement revoke @s only library:trigger/consume_item/sweet_berries
