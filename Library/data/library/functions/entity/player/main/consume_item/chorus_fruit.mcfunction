# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..16,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 1
advancement revoke @s only library:trigger/consume_item/chorus_fruit
