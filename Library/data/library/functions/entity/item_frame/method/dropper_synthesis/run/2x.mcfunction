#Copyright by BlueWhale. All Rights Reserved.
loot replace block ~ ~ ~ container.4 1 loot library:dropper_synthesis/2x
tag @s remove 2x
tag @s remove x
scoreboard players set @s libTouhouCEscape 2
execute if data block ~ ~ ~ Items[{Slot:4b,tag:{id:"library:shoot",model:"line",bullet_item:"bill"}}] run loot replace block ~ ~ ~ container.5 1 loot minecraft:empty
# 御币：直线/札弹
execute if data block ~ ~ ~ Items[{Slot:4b,tag:{id:"library:yin_yang_yu",mode:"empty"}}] run loot replace block ~ ~ ~ container.5 1 loot minecraft:empty
# 空阴阳玉
particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 0.2 20
#生成粒子：烟花
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1.5 ~ 1.0
#播放音效：烟花爆炸