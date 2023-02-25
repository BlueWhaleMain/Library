# Copyright by BlueWhale. All Rights Reserved.
playsound minecraft:item.bucket.empty voice @a ~ ~ ~ 1.0
# 播放音效：桶倒空
execute if entity @s[nbt={Item:{id:"minecraft:water_bucket"}}] run setblock ~ ~ ~ minecraft:water destroy
execute if entity @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run setblock ~ ~ ~ minecraft:lava destroy
execute if entity @s[nbt={Item:{id:"minecraft:powder_snow_bucket"}}] run setblock ~ ~ ~ minecraft:powder_snow destroy
data modify entity @s Item.id set value "minecraft:bucket"
