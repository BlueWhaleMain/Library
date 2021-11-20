# Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTemp matches 1.. run summon tnt ~ ~ ~
scoreboard players remove @s libTemp 1
execute if score @s libTemp matches 1.. run function library:entity/item/method/tnt_explode_loop
