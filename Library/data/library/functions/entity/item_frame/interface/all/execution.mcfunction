# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{tag:{permission:"admin"}}},tag=!admin] run function library:entity/item_frame/method/setup_admin
execute if entity @s[nbt=!{Item:{tag:{permission:"admin"}}},tag=admin] run function library:entity/item_frame/method/unist_admin
tag @s[nbt={Item:{tag:{id:"library:touhou"}}},tag=!touhou] add touhou
tag @s[nbt=!{Item:{tag:{id:"library:touhou"}}},tag=touhou] remove touhou
tag @s[nbt={Item:{tag:{id:"library:tick_arrow"}}},tag=!tick] add tick
tag @s[nbt=!{Item:{tag:{id:"library:tick_arrow"}}},tag=tick] remove tick
tag @s[nbt={Item:{tag:{id:"library:s_arrow"}}},tag=!s] add s
tag @s[nbt=!{Item:{tag:{id:"library:s_arrow"}}},tag=s] remove s
tag @s[nbt={Item:{tag:{id:"library:magnet"}}},tag=!magnet] add magnet
tag @s[nbt=!{Item:{tag:{id:"library:magnet"}}},tag=magnet] remove magnet
# 旋转
execute if entity @s[tag=s] run function library:entity/item_frame/method/rotate
# 更新
tag @s[tag=dropper_synthesis] remove dropper_synthesis
execute at @s[nbt={Facing:1b}] if block ~ ~-1 ~ minecraft:dropper run tag @s add dropper_synthesis
# 投掷器祭坛
execute at @s[tag=dropper_synthesis] positioned ~ ~-1 ~ run function library:entity/item_frame/method/dropper_synthesis/execution
# 更新
tag @s[tag=redstone_block_synthesis] remove redstone_block_synthesis
execute at @s[nbt={Facing:1b}] if block ~ ~-1 ~ minecraft:redstone_block run tag @s add redstone_block_synthesis
# 亮起的红石灯也可
execute at @s[nbt={Facing:1b}] if block ~ ~-1 ~ minecraft:redstone_lamp[lit=true] run tag @s add redstone_block_synthesis
# 红石块大型工作台
execute at @s[tag=redstone_block_synthesis] run function library:entity/item_frame/method/redstone_block_synthesis/execution
# 放电
tag @s[tag=!redstone_block_synthesis] remove cancel
# 更新
tag @s[tag=iron_block_synthesis] remove iron_block_synthesis
execute at @s[nbt={Facing:1b}] if block ~ ~-1 ~ minecraft:iron_block run tag @s add iron_block_synthesis
# 铁块放电台
execute at @s[tag=iron_block_synthesis] run function library:entity/item_frame/method/iron_block_synthesis/execution
# 更新
tag @s[tag=crafting_table_synthesis] remove crafting_table_synthesis
execute at @s if block ^ ^ ^-1 minecraft:crafting_table run tag @s add crafting_table_synthesis
# 给予进度：扩展工作台
execute at @s[tag=crafting_table_synthesis] run advancement grant @a[distance=..1,advancements={library:guide/crafting_table_synthesis=false}] only library:guide/crafting_table_synthesis
# 更新
tag @s[tag=loom_synthesis] remove loom_synthesis
execute at @s if block ^ ^ ^-1 minecraft:loom run tag @s add loom_synthesis
# 给予进度：拓展织布机
execute at @s[tag=loom_synthesis] run advancement grant @a[distance=..1,advancements={library:guide/loom_synthesis=false}] only library:guide/loom_synthesis
# 更新
# tag @s[tag=anvil_synthesis] remove anvil_synthesis
# execute at @s if block ^ ^ ^-1 minecraft:anvil run tag @s add anvil_synthesis
# 更新
# tag @s remove hopper_compressor
# execute at @s[nbt={Facing:1b}] if block ~ ~-1 ~ minecraft:hopper run tag @s add hopper_compressor
# 漏斗压缩机
# execute at @s[tag=hopper_compressor] positioned ~ ~-1 ~ run function library:entity/item_frame/method/hopper_compressor/execution
# 给予进度：物品展示框合成
execute at @s run advancement grant @a[distance=..1,advancements={library:guide/item_frame=false}] only library:guide/item_frame
