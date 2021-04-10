# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s libThirsty 2
scoreboard players add @s libraryFat 1
function library:entity/player/method/state/enema
tag @s add poison
scoreboard players remove @s libHealth 50
advancement revoke @s only library:trigger/consume_item/pufferfish
