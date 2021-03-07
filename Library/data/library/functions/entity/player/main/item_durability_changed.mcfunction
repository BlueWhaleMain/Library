# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
scoreboard players add @s[scores={libAtkFever=..100}] libAtkFever 2
scoreboard players remove @s[scores={libDefFever=0..}] libDefFever 1
advancement revoke @s only library:trigger/item_durability_changed
