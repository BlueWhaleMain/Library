# Copyright by BlueWhale. All Rights Reserved.
execute store result score #ItemMX libTemp run data get entity @s Motion[0] 10000
execute store result score #ItemMY libTemp run data get entity @s Motion[1] 10000
execute store result score #ItemMZ libTemp run data get entity @s Motion[2] 10000
scoreboard players operation @s LibMX -= #ItemMX libTemp
scoreboard players operation @s LibMY -= #ItemMY libTemp
scoreboard players operation @s LibMZ -= #ItemMZ libTemp
execute if score @s LibMX matches 2800.. run function library:entity/item/interface/dump/check
execute if score @s LibMX matches ..-2800 run function library:entity/item/interface/dump/check
execute if score @s LibMY matches 5000.. run function library:entity/item/interface/dump/check
execute if score @s LibMY matches ..-5000 run function library:entity/item/interface/dump/check
execute if score @s LibMZ matches 2800.. run function library:entity/item/interface/dump/check
execute if score @s LibMZ matches ..-2800 run function library:entity/item/interface/dump/check
# 动能改变，倾倒
