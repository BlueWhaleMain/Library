# Copyright by BlueWhale. All Rights Reserved.
execute if entity @e[distance=..1,nbt={Item:{id:"minecraft:wheat",Count:16b}},type=minecraft:item] run function library:entity/item/method/crafting_table/hay_block
# 小麦脱粒
execute if entity @e[distance=..1,nbt={Item:{id:"minecraft:dried_kelp",Count:64b}},type=minecraft:item] run function library:entity/item/method/crafting_table/dried_kelp_block
# 干海带打捆
