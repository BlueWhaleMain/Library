#Copyright by BlueWhale. All Rights Reserved.
loot replace block ~ ~ ~ container.4 1 loot library:dropper_synthesis/1x
tag @s remove 1x
tag @s remove x
scoreboard players set @s libTouhouCEscape 1
particle minecraft:firework ~ ~1.5 ~ 0.5 0.5 0.5 0.1 10
#生成粒子：烟花
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1.5 ~ 1.0
#播放音效：烟花爆炸