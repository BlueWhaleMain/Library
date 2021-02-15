# Copyright by BlueWhale. All Rights Reserved.
# 破坏门
execute if predicate library:random/10 run data modify entity @s CanBreakDoors set value 1b
# 捡起物品
execute if predicate library:random/10 run data modify entity @s CanPickUpLoot set value 1b
execute if predicate library:random/30 run function library:entity/hostile/method/zombie/spawn/armor
execute if predicate library:random/10 run function library:entity/hostile/method/zombie/spawn/weapon
# 10%几率狂暴
execute if predicate library:random/10 run tag @s add crazy
