# Copyright by BlueWhale. All Rights Reserved.
# 消弹
execute at @s[tag=touhou] run function library:entity/player/method/touhou/select
# tick
execute at @s[tag=tick] run function library:entity/item_frame/method/rotate
# 投掷器祭坛
execute at @s[tag=dropper_synthesis] positioned ~ ~-1 ~ run function library:entity/item_frame/method/dropper_synthesis/check
# 红石块大型工作台
execute at @s[tag=redstone_block_synthesis] run function library:entity/item_frame/method/redstone_block_synthesis/check
# 铁块放电台
execute at @s[tag=iron_block_synthesis] run function library:entity/item_frame/method/iron_block_synthesis/check
# 扩展工作台
execute at @s[tag=crafting_table_synthesis] run function library:entity/item_frame/method/crafting_table_synthesis/check
# 扩展织布机
execute at @s[tag=loom_synthesis] run function library:entity/item_frame/method/loom_synthesis/check
# 扩展铁砧
# execute at @s[tag=anvil_synthesis] run function library:entity/item_frame/method/anvil_synthesis/check
# 漏斗压缩机
# execute at @s[tag=hopper_compressor] positioned ~ ~-1 ~ run function library:entity/item_frame/method/hopper_compressor/check
