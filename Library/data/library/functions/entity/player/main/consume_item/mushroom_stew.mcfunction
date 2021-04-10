# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..14,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 3
scoreboard players add @s libHealth 2
advancement revoke @s only library:trigger/consume_item/mushroom_stew
