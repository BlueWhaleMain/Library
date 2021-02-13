#Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:speed 30 2 true
effect give @s minecraft:strength 30 2 true
effect give @s minecraft:jump_boost 30 2 true
execute if predicate library:random/50 run tag @s add spitter
execute if predicate library:random/50 run tag @s add sprinter
execute if predicate library:random/50 run tag @s add jumper
