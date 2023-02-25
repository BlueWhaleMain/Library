# Copyright by BlueWhale. All Rights Reserved.
# 水桶
execute at @s[nbt={Item:{id:"minecraft:water_bucket"}}] run function library:entity/item/method/bucket_dump
# 岩浆桶
execute at @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run function library:entity/item/method/bucket_dump
# 细雪桶
execute at @s[nbt={Item:{id:"minecraft:powder_snow_bucket"}}] run function library:entity/item/method/bucket_dump
# 牛奶桶
execute if entity @s[nbt={Item:{id:"minecraft:milk_bucket"}}] run data modify entity @s Item.id set value "minecraft:bucket"
# 甜菜汤
execute if entity @s[nbt={Item:{id:"minecraft:beetroot_soup"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 蘑菇煲
execute if entity @s[nbt={Item:{id:"minecraft:mushroom_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 兔肉煲
execute if entity @s[nbt={Item:{id:"minecraft:rabbit_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 迷之炖菜
execute if entity @s[nbt={Item:{id:"minecraft:suspicious_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# TNT
execute at @s[nbt={Item:{id:"minecraft:tnt"}}] run function library:entity/item/method/tnt_explode
