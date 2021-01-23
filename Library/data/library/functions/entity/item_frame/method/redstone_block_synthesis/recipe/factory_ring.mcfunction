# Copyright by BlueWhale. All Rights Reserved.
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:diamond ~ ~ ~ 0.1 0.1 0.1 0.1 100
playsound library:synthesis.energy_bolt voice @a ^1 ^ ^ 1.0
# 播放声音：噼啪
function library:entity/item_frame/method/redstone_block_synthesis/core/crafting_ring/2x/factory_ring
execute if entity @s[nbt={Item:{tag:{id:"library:crafting_ring"}}}] run scoreboard players add @s libTemp 1
# 检查完整性
playsound library:synthesis.energy_bolt voice @a ~ ~ ~ 1.0
# 播放声音：噼啪
scoreboard players remove @s[scores={libTouhouCFlag=1..}] libTouhouCFlag 1
# 合成所需时间
execute if score @s libTemp matches ..1 run function library:entity/item_frame/method/redstone_block_synthesis/cancel/factory_ring
execute if score @s libTouhouCTime matches -1.. run function library:entity/item_frame/method/redstone_block_synthesis/cancel/factory_ring
# 取消合成
execute if score @s libTouhouCTime matches ..-2 if score @s libTemp matches 2 if score @s libTouhouCFlag matches ..0 run function library:entity/item_frame/method/redstone_block_synthesis/release/factory_ring
# 合成
