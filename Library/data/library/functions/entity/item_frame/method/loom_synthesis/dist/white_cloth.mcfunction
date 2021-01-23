# Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Item.Count set value 0
loot spawn ^2 ^ ^ loot library:items/cloth/white
# 生成白色布
particle minecraft:poof ~ ~ ~ 0.5 0.1 0.5 0 30
# 生成粒子：烟雾
tag @s remove dist
tag @s remove white_cloth
