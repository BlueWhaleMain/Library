# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:jack_o_lantern"}}] run function library:entity/item/method/jack_o_lantern_extinguished
# 南瓜灯
execute if entity @s[nbt={Item:{id:"minecraft:milk_bucket"}}] run data modify entity @s Item.id set value "minecraft:bucket"
# 牛奶桶
execute if entity @s[nbt={Item:{id:"minecraft:tnt"}}] run function library:entity/item/method/tnt_scrap
# TNT
