#(c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
scoreboard players operation @s[scores={libDefFever=..200,slw_damage_taken=..10}] libDefFever += @s slw_damage_taken
scoreboard players add @s[scores={libDefFever=..200,slw_damage_taken=11..}] libDefFever 10
advancement grant @s[advancements={library:battle/block_a_attack=false}] only library:battle/block_a_attack