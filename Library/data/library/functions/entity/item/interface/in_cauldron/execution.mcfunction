# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:slime_ball",Count:64b}}] run function library:entity/item/method/cauldron/slime_block
# 合成粘液块
execute if entity @s[nbt={Item:{id:"minecraft:clay_ball",Count:64b}}] run function library:entity/item/method/cauldron/clay
# 合成粘土块
execute if entity @s[nbt={Item:{id:"minecraft:snowball",Count:16b}}] run function library:entity/item/method/cauldron/snow_block
# 合成雪块
