#Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/redstone_block_synthesis/core/crafting_table/5x/crafting_ring
execute if score @s libTemp matches 4 if entity @e[type=minecraft:item_frame,distance=..5,tag=iron_block_synthesis,tag=!discharging] run function library:entity/item_frame/method/redstone_block_synthesis/confirm/crafting_ring
# 合成环