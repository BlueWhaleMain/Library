#Copyright by BlueWhale. All Rights Reserved.
execute at @s[nbt={Item:{id:"minecraft:water_bucket"}}] run function library:entity/item/method/bucket_dump
# 水桶
execute at @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run function library:entity/item/method/bucket_dump
# 岩浆桶
execute if entity @s[nbt={Item:{id:"minecraft:milk_bucket"}}] run data modify entity @s Item.id set value "minecraft:bucket"
# 牛奶桶
execute if entity @s[nbt={Item:{id:"minecraft:beetroot_soup"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 甜菜汤
execute if entity @s[nbt={Item:{id:"minecraft:mushroom_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 蘑菇煲
execute if entity @s[nbt={Item:{id:"minecraft:rabbit_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 兔肉煲
execute if entity @s[nbt={Item:{id:"minecraft:suspicious_stew"}}] run data modify entity @s Item.id set value "minecraft:bowl"
# 迷之炖菜