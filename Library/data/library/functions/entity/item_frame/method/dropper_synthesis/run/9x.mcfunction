# Copyright by BlueWhale. All Rights Reserved.
loot replace block ~ ~ ~ container.4 1 loot library:dropper_synthesis/9x
tag @s remove 9x
tag @s remove x
scoreboard players set @s libTouhouCEscape 9
# execute if data block ~ ~-1 ~ Items[{Slot:5b,tag:{id:"library:controller"}}] run scoreboard players scoreboard players set @s libTouhouCEscape 9
# 特殊物品修改
loot replace block ~ ~ ~ container.0 4 loot minecraft:empty
loot replace block ~ ~ ~ container.5 4 loot minecraft:empty
# 清理
particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 0.9 90
# 生成粒子：烟花
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1.5 ~ 1.0
# 播放音效：烟花爆炸
