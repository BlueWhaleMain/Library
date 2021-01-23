# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[type=minecraft:slime] run function library:entity/hostile/interface/slime/load
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/load
execute if entity @s[type=minecraft:blaze] run function library:entity/hostile/interface/blaze/load
tag @s add hostile
