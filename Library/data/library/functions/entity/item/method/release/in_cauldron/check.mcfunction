# Copyright by BlueWhale. All Rights Reserved.
# 释放
execute if entity @s[nbt={Item:{id:"minecraft:coal",Count:64b}}] run function library:entity/item/method/release/in_cauldron/coal_block
execute if entity @s[nbt={Item:{id:"minecraft:lapis_lazuli",Count:64b}}] run function library:entity/item/method/release/in_cauldron/lapis_block
execute if entity @s[nbt={Item:{id:"minecraft:redstone",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:iron_block"}} run function library:entity/item/method/release/in_cauldron/redstone_block
execute if entity @s[nbt={Item:{id:"minecraft:glowstone_dust",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/glowstone
execute if entity @s[nbt={Item:{id:"minecraft:diamond",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/diamond_block
execute if entity @s[nbt={Item:{id:"minecraft:emerald",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/emerald_block
execute if entity @s[nbt={Item:{id:"minecraft:bone_meal",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:lapis_block"}} run function library:entity/item/method/release/in_cauldron/bone_block
# 清空炼药锅
setblock ~ ~ ~ minecraft:cauldron replace
