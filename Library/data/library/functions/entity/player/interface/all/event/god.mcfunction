# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 5000
scoreboard players add @s[scores={libAtkFever=..200}] libAtkFever 1
scoreboard players add @s[scores={libAtkFever=..200,slw_damage_taken=..0}] libAtkFever 9
advancement grant @s[advancements={library:battle/advanced_attack=false}] only library:battle/advanced_attack
