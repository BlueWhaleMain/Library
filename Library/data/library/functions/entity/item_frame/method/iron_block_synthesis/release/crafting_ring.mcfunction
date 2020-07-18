#Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Item.Count set value 0
loot spawn ~ ~ ~ loot library:items/crafting_ring/crafting_table
tag @s remove crafting_ring
tag @s remove discharging