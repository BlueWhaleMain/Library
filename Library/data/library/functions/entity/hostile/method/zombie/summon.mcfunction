# Copyright by BlueWhale. All Rights Reserved.
execute unless entity @e[type=minecraft:zombie,tag=boss,distance=..8] run function library:entity/hostile/method/zombie/summon/find
execute unless entity @e[type=minecraft:zombie,tag=boss,distance=..16] run effect give @s minecraft:wither 2 0
execute unless entity @e[type=minecraft:zombie,tag=boss,distance=..32] run kill
