#(c) Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/battle/death
effect give @s minecraft:wither 2 0 true
effect give @s minecraft:nausea 15 0 true
effect give @s minecraft:slowness 5 1 true
effect give @s minecraft:weakness 5 4 true
effect give @s minecraft:mining_fatigue 5 4 true
tag @s[nbt=!{"ActiveEffects":[{"Id":19b}]}] remove poison
#没有中毒结束