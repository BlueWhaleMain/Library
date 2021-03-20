# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFood=..18,libraryFat=1..}] libFood 1
scoreboard players remove @s libThirsty 1
function library:entity/player/method/state/enema
tag @s add poison
scoreboard players remove @s libHealth 10
advancement revoke @s only library:trigger/consume_item/poisonous_potato
