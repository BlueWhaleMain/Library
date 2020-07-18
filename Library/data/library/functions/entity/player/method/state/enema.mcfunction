#(c) Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/battle/clear
effect give @s minecraft:nausea 10 1 true
effect give @s minecraft:hunger 1 100 true
scoreboard players add @s libThirsty 5