#Copyright by BlueWhale. All Rights Reserved.
loot replace block ~ ~ ~ container.4 1 loot library:dropper_synthesis/4x
tag @s remove 4x
tag @s remove x
scoreboard players set @s libTouhouCEscape 4
execute if data block ~ ~ ~ Items[{Slot:4b,tag:{id:"library:magnet"}}] run function library:entity/item_frame/method/dropper_synthesis/run/clear/357
# 物品磁铁
particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 0.4 40
#生成粒子：烟花
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1.5 ~ 1.0
#播放音效：烟花爆炸