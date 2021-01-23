# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..16,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 3
effect give @s minecraft:regeneration 5 0 true
advancement revoke @s only library:trigger/consume_item/apple
