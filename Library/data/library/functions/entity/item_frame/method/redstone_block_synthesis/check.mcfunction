#Copyright by BlueWhale. All Rights Reserved.
execute if entity @e[type=!minecraft:item_frame,distance=..0.5] run function library:entity/item_frame/method/redstone_block_synthesis/overload
# 杂物
execute if score @s libTouhouCTime matches ..-1 run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.5 1
# 生成粒子：烟花
execute if score @s libTouhouCTime matches ..-30 run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.5 10
# 生成粒子：烟花
execute if score @s libTouhouCTime matches ..-40 run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.5 10
# 生成粒子：烟花
execute if score @s libTouhouCTime matches ..-50 run function library:entity/item_frame/method/redstone_block_synthesis/overload
# 过载
execute if score @s libTouhouCTime matches ..-100 run function library:entity/item_frame/method/redstone_block_synthesis/overload
# 过载
execute if score @s libTouhouCTime matches ..-1000 run function library:entity/item_frame/method/redstone_block_synthesis/lightning
# 召唤闪电
execute if score @s libTouhouCEscape matches 1.. run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.2 1
# 生成粒子：云
execute if score @s libTouhouCEscape matches 30.. run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.2 1
# 生成粒子：烟
execute if score @s libTouhouCEscape matches 40.. run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.2 1
# 生成粒子：烟云
execute if score @s[nbt={Item:{Count:1b}}] libTouhouCEscape matches 50.. run function library:entity/item_frame/method/redstone_block_synthesis/destroy
# 烧毁物品
execute if score @s libTouhouCEscape matches 60.. run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.2 10
# 生成粒子：云
execute if score @s libTouhouCEscape matches 70.. run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.2 10
# 生成粒子：烟
execute if score @s libTouhouCEscape matches 80.. run particle minecraft:campfire_signal_smoke ~ ~ ~ 0.2 0.2 0.2 0.2 1
# 生成粒子：狼烟
execute if score @s libTouhouCEscape matches 90.. run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.2 1
# 生成粒子：岩浆
execute if score @s libTouhouCEscape matches 100.. run function library:entity/item_frame/method/redstone_block_synthesis/burn
# 烧毁自身
execute if entity @s[tag=!charging] run function library:entity/item_frame/method/redstone_block_synthesis/core
# 没有正在充能的任务则合成
