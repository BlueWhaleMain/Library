# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 1000
scoreboard players add @s[gamemode=survival,nbt=!{ActiveEffects:[{Id:16}]}] libraryFatigue 1
advancement revoke @s only library:trigger/enchanted_item
