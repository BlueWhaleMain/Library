#Copyright by BlueWhale. All Rights Reserved.
playsound minecraft:item.bucket.empty voice @a ~ ~ ~ 1.0
# 播放音效：桶倒空
execute if entity @s[nbt={Item:{id:"minecraft:water_bucket"}}] run setblock ~ ~-1 ~ minecraft:water replace
execute if entity @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run setblock ~ ~-1 ~ minecraft:lava replace
data modify entity @s Item.id set value "minecraft:bucket"