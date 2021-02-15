# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:string",Count:1b}}] if entity @e[distance=..1,nbt={Item:{id:"minecraft:wheat",Count:16b}},type=minecraft:item] run function library:entity/item/method/crafting_table/hay_block
# 小麦脱粒
