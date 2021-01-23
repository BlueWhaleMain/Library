# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[type=minecraft:slime] run function library:entity/hostile/interface/slime/reset
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/reset
execute if entity @s[type=minecraft:blaze] run function library:entity/hostile/interface/blaze/reset
tag @s remove hostile
