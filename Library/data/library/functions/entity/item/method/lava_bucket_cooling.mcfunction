# (c) Copyright by BlueWhale. All Rights Reserved.
playsound minecraft:item.bucket.empty voice @a ~ ~ ~ 1.0
# 播放音效：桶倒空
data modify entity @s Item.id set value "minecraft:bucket"
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:obsidian",Count:1b}}
setblock ~ ~ ~ minecraft:air replace
playsound minecraft:block.lava.extinguish voice @a ~ ~ ~ 1.0
# 播放音效：岩浆熄灭
