# Copyright by BlueWhale. All Rights Reserved.
loot replace block ~ ~ ~ container.4 1 loot library:dropper_synthesis/5x
tag @s remove 5x
tag @s remove x
scoreboard players set @s libTouhouCEscape 5
# 御币：空
execute if data block ~ ~ ~ Items[{Slot:4b,tag:{id:"library:shoot",model:"empty"}}] run function library:entity/item_frame/method/dropper_synthesis/run/clear/2568
# 生成：铁傀儡
execute if data block ~ ~ ~ Items[{Slot:4b,tag:{id:"library:iron_golem"}}] run function library:entity/item_frame/method/dropper_synthesis/run/clear/1357
# 生成粒子：烟花
particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 0.5 50
# 播放音效：烟花爆炸
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1.5 ~ 1.0
