# Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTemp matches 1.. run function library:entity/item/method/experience_orb/spawn
scoreboard players remove @s libTemp 1
execute if score @s libTemp matches 1.. run function library:entity/item/method/experience_orb/loop
