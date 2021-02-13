#Copyright by BlueWhale. All Rights Reserved.
# 破坏门
data modify entity @s CanBreakDoors set value 1b
# 捡起物品
data modify entity @s CanPickUpLoot set value 1b
function library:entity/hostile/method/zombie/spawn/armor
function library:entity/hostile/method/zombie/spawn/weapon
# 狂暴
tag @s add crazy
