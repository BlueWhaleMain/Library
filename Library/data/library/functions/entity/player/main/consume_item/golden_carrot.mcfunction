# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..17,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 2
scoreboard players remove @s[scores={libraryFatigue=100..}] libraryFatigue 10
advancement revoke @s only library:trigger/consume_item/golden_carrot
