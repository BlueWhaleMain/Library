# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 20
scoreboard players add @s[scores={libAtkFever=..200}] libAtkFever 1
scoreboard players remove @s[scores={libDefFever=-50..}] libDefFever 1
advancement revoke @s only library:trigger/shot_crossbow
