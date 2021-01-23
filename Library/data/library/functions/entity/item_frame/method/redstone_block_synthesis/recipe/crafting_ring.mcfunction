# Copyright by BlueWhale. All Rights Reserved.
execute positioned ^-1 ^ ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 100
playsound library:synthesis.energy_bolt voice @a ^-1 ^ ^ 1.0
# 播放声音：噼啪
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 100
playsound library:synthesis.energy_bolt voice @a ^1 ^ ^ 1.0
# 播放声音：噼啪
execute positioned ^ ^-1 ^ run particle minecraft:item minecraft:iron_ingot ~ ~ ~ 0.1 0.1 0.1 0.1 100
playsound library:synthesis.energy_bolt voice @a ^ ^-1 ^ 1.0
# 播放声音：噼啪
execute positioned ^ ^1 ^ run particle minecraft:item minecraft:ender_pearl ~ ~ ~ 0.1 0.1 0.1 0.1 100
playsound library:synthesis.energy_bolt voice @a ^ ^1 ^ 1.0
# 播放声音：噼啪
function library:entity/item_frame/method/redstone_block_synthesis/core/crafting_table/5x/crafting_ring
execute if entity @s[nbt={Item:{id:"minecraft:crafting_table"}}] run scoreboard players add @s libTemp 1
# 检查完整性
playsound library:synthesis.energy_bolt voice @a ~ ~ ~ 1.0
# 播放声音：噼啪
scoreboard players remove @s[scores={libTouhouCFlag=1..}] libTouhouCFlag 1
# 合成所需时间
execute if score @s libTemp matches ..4 run function library:entity/item_frame/method/redstone_block_synthesis/cancel/crafting_ring
execute if score @s libTouhouCTime matches -4.. run function library:entity/item_frame/method/redstone_block_synthesis/cancel/crafting_ring
# 取消合成
execute if score @s libTouhouCTime matches ..-5 if score @s libTemp matches 5 if score @s libTouhouCFlag matches ..0 run function library:entity/item_frame/method/redstone_block_synthesis/release/crafting_ring
# 合成
