#Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Item.Count set value 0
loot spawn ^3 ^ ^ loot library:items/sys_book
#生成数据包指南
tag @s remove dist
tag @s remove sys_book
