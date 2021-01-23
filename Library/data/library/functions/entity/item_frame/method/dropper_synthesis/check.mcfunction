# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute if block ~ ~-1 ~ minecraft:lapis_block run function library:entity/item_frame/method/dropper_synthesis/recharge
# 充能
execute unless block ~ ~-1 ~ minecraft:lapis_block run function library:entity/item_frame/method/dropper_synthesis/run
# 运行
execute store result score @s libTemp run data get block ~ ~ ~ Items
execute if entity @s[scores={libTouhouCEscape=1..,libTemp=..0}] run function library:entity/item_frame/method/dropper_synthesis/destroy
# 自毁
execute if entity @s[scores={libTouhouCEscape=1..,libTemp=1..}] run particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0 100
# 警告
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.5 1
# 生成粒子：烟花
