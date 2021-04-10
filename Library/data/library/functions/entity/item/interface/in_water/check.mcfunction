# Copyright by BlueWhale. All Rights Reserved.
## 遇水反应的物品
execute if entity @s[nbt={Item:{id:"minecraft:lava_bucket"}}] run function library:entity/item/method/lava_bucket_cooling
# 岩浆桶
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] run function library:entity/item/method/arrow_wash
# 药水箭
execute if entity @s[nbt={Item:{id:"minecraft:campfire"}}] run function library:entity/item/method/campfire_extinguished
# 营火
execute if entity @s[nbt={Item:{id:"minecraft:soul_campfire"}}] run function library:entity/item/method/soul_campfire_extinguished
# 灵魂营火
execute if entity @s[nbt={Item:{id:"minecraft:torch"}}] run function library:entity/item/method/torch_extinguished
# 火把
execute if entity @s[nbt={Item:{id:"minecraft:soul_torch"}}] run function library:entity/item/method/soul_torch_extinguished
# 灵魂火把
execute if entity @s[nbt={Item:{id:"minecraft:redstone_torch"}}] run function library:entity/item/method/redstone_torch_scrap
# 红石火把
#
# 汤碗
execute if predicate library:item/bowl_wash run function library:entity/item/method/bowl_wash
# 遇水消失的物品
execute if predicate library:item/water_damage run function library:entity/item/method/water_damage
# 是满水位
execute if predicate library:block/full_water run function library:entity/item/interface/in_water/full
