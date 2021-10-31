# Copyright by BlueWhale. All Rights Reserved.
# 释放
## 无条件（普通力）
execute if entity @s[nbt={Item:{id:"minecraft:coal",Count:64b}}] run function library:entity/item/method/release/in_cauldron/coal_block
execute if entity @s[nbt={Item:{id:"minecraft:lapis_lazuli",Count:64b}}] run function library:entity/item/method/release/in_cauldron/lapis_block
execute if entity @s[nbt={Item:{id:"minecraft:raw_copper",Count:64b}}] run function library:entity/item/method/release/in_cauldron/raw_copper_block
execute if entity @s[nbt={Item:{id:"minecraft:raw_gold",Count:64b}}] run function library:entity/item/method/release/in_cauldron/raw_gold_block
execute if entity @s[nbt={Item:{id:"minecraft:raw_iron",Count:64b}}] run function library:entity/item/method/release/in_cauldron/raw_iron_block
#
## 铁块（强力）
execute if entity @s[nbt={Item:{id:"minecraft:redstone",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:iron_block"}} run function library:entity/item/method/release/in_cauldron/redstone_block
#
## 红石块（结合能）
execute if entity @s[nbt={Item:{id:"minecraft:glowstone_dust",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/glowstone
execute if entity @s[nbt={Item:{id:"minecraft:diamond",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/diamond_block
execute if entity @s[nbt={Item:{id:"minecraft:emerald",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/emerald_block
execute if entity @s[nbt={Item:{id:"minecraft:quartz_slab",Count:2b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/quartz_block
execute if entity @s[nbt={Item:{id:"minecraft:quartz",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/quartz_block
execute if entity @s[nbt={Item:{id:"minecraft:stone_slab",Count:2b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/stone
execute if entity @s[nbt={Item:{id:"minecraft:amethyst_shard",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:redstone_block"}} run function library:entity/item/method/release/in_cauldron/amethyst_block
#
## 青金石块（魔法）
execute if entity @s[nbt={Item:{id:"minecraft:bone_meal",Count:64b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:lapis_block"}} run function library:entity/item/method/release/in_cauldron/bone_block
execute if entity @s[nbt={Item:{id:"minecraft:glass",Count:1b}}] if block ~ ~2 ~ minecraft:moving_piston{blockState:{Name:"minecraft:lapis_block"}} if entity @e[distance=..1,nbt={Item:{id:"minecraft:amethyst_shard",Count:4b}},type=minecraft:item] run function library:entity/item/method/release/in_cauldron/tinted_glass
#
# 清空炼药锅
setblock ~ ~ ~ minecraft:cauldron
