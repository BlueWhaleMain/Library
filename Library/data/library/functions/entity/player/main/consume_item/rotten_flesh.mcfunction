# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s libThirsty 3
scoreboard players add @s libraryFat 1
function library:entity/player/method/state/enema
effect give @s minecraft:wither 2 0 true
advancement revoke @s only library:trigger/consume_item/rotten_flesh
