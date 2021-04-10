# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..16,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 2
scoreboard players remove @s[scores={libraryFatigue=90..}] libraryFatigue 30
scoreboard players add @s libHealth 100
advancement revoke @s only library:trigger/consume_item/golden_apple
