# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..16,libraryFat=1..}] libFood 1
scoreboard players add @s libDefValue 300
scoreboard players remove @s libThirsty 2
scoreboard players remove @s libraryFatigue 50
scoreboard players add @s libHealth 200
advancement revoke @s only library:trigger/consume_item/enchanted_golden_apple
