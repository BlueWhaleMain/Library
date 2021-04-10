# Copyright by BlueWhale. All Rights Reserved.
# 不会中毒
effect clear @s minecraft:poison
# 吃腐肉
execute store result score @s[nbt={HandItems:[{id:"minecraft:rotten_flesh"}]}] libTemp run data get entity @s HandItems[0].Count
execute if score @s libTemp matches 1.. run function library:entity/hostile/method/eat_rotten_flesh
