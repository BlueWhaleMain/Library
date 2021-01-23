# (c) Copyright by BlueWhale. All Rights Reserved.
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
execute if entity @s[nbt={Item:{id:"minecraft:beetroot_soup"}}] run function library:entity/item/method/bowl_wash
# 甜菜汤
execute if entity @s[nbt={Item:{id:"minecraft:mushroom_stew"}}] run function library:entity/item/method/bowl_wash
# 蘑菇煲
execute if entity @s[nbt={Item:{id:"minecraft:rabbit_stew"}}] run function library:entity/item/method/bowl_wash
# 兔肉煲
execute if entity @s[nbt={Item:{id:"minecraft:suspicious_stew"}}] run function library:entity/item/method/bowl_wash
# 迷之炖菜
#
## 遇水消失的物品
execute if entity @s[nbt={Item:{id:"minecraft:gunpowder"}}] run function library:entity/item/method/water_damage
# 火药
execute if entity @s[nbt={Item:{id:"minecraft:paper"}}] run function library:entity/item/method/water_damage
# 纸
execute if entity @s[nbt={Item:{id:"minecraft:book"}}] run function library:entity/item/method/water_damage
# 书
execute if entity @s[nbt={Item:{id:"minecraft:fermented_spider_eye"}}] run function library:entity/item/method/water_damage
# 发酵蜘蛛眼
execute if entity @s[nbt={Item:{id:"minecraft:firework_star"}}] run function library:entity/item/method/water_damage
# 烟火之星
execute if entity @s[nbt={Item:{id:"minecraft:fireworks"}}] run function library:entity/item/method/water_damage
# 烟花火箭
execute if entity @s[nbt={Item:{id:"minecraft:sugar"}}] run function library:entity/item/method/water_damage
# 糖
execute if entity @s[nbt={Item:{id:"minecraft:bread"}}] run function library:entity/item/method/water_damage
# 面包
execute if entity @s[nbt={Item:{id:"minecraft:cake"}}] run function library:entity/item/method/water_damage
# 蛋糕
execute if entity @s[nbt={Item:{id:"minecraft:cookie"}}] run function library:entity/item/method/water_damage
# 曲奇
execute if entity @s[nbt={Item:{id:"minecraft:dried_kelp"}}] run function library:entity/item/method/water_damage
# 干海带
execute if entity @s[nbt={Item:{id:"minecraft:baked_potato"}}] run function library:entity/item/method/water_damage
# 烤土豆
execute if entity @s[nbt={Item:{id:"minecraft:pumpkin_pie"}}] run function library:entity/item/method/water_damage
# 南瓜派
execute if entity @s[nbt={Item:{id:"minecraft:cooked_beef"}}] run function library:entity/item/method/water_damage
# 牛排
execute if entity @s[nbt={Item:{id:"minecraft:cooked_chicken"}}] run function library:entity/item/method/water_damage
# 熟鸡肉
execute if entity @s[nbt={Item:{id:"minecraft:cooked_cod"}}] run function library:entity/item/method/water_damage
# 熟鳕鱼
execute if entity @s[nbt={Item:{id:"minecraft:cooked_mutton"}}] run function library:entity/item/method/water_damage
# 熟羊肉
execute if entity @s[nbt={Item:{id:"minecraft:cooked_porkchop"}}] run function library:entity/item/method/water_damage
# 熟猪排
execute if entity @s[nbt={Item:{id:"minecraft:cooked_rabbit"}}] run function library:entity/item/method/water_damage
# 熟兔肉
execute if entity @s[nbt={Item:{id:"minecraft:cooked_salmon"}}] run function library:entity/item/method/water_damage
# 熟鲑鱼
execute if entity @s[nbt={Item:{id:"minecraft:white_dye"}}] run function library:entity/item/method/water_damage
# 白色染料
execute if entity @s[nbt={Item:{id:"minecraft:light_gray_dye"}}] run function library:entity/item/method/water_damage
# 淡灰色染料
execute if entity @s[nbt={Item:{id:"minecraft:gray_dye"}}] run function library:entity/item/method/water_damage
# 灰色染料
execute if entity @s[nbt={Item:{id:"minecraft:black_dye"}}] run function library:entity/item/method/water_damage
# 黑色染料
execute if entity @s[nbt={Item:{id:"minecraft:brown_dye"}}] run function library:entity/item/method/water_damage
# 棕色染料
execute if entity @s[nbt={Item:{id:"minecraft:red_dye"}}] run function library:entity/item/method/water_damage
# 红色染料
execute if entity @s[nbt={Item:{id:"minecraft:orange_dye"}}] run function library:entity/item/method/water_damage
# 橘黄色染料
execute if entity @s[nbt={Item:{id:"minecraft:yellow_dye"}}] run function library:entity/item/method/water_damage
# 黄色染料
execute if entity @s[nbt={Item:{id:"minecraft:lime_dye"}}] run function library:entity/item/method/water_damage
# 黄绿色染料
execute if entity @s[nbt={Item:{id:"minecraft:green_dye"}}] run function library:entity/item/method/water_damage
# 绿色染料
execute if entity @s[nbt={Item:{id:"minecraft:cyan_dye"}}] run function library:entity/item/method/water_damage
# 青色染料
execute if entity @s[nbt={Item:{id:"minecraft:blue_dye"}}] run function library:entity/item/method/water_damage
# 蓝色染料
execute if entity @s[nbt={Item:{id:"minecraft:purple_dye"}}] run function library:entity/item/method/water_damage
# 紫色染料
execute if entity @s[nbt={Item:{id:"minecraft:magenta_dye"}}] run function library:entity/item/method/water_damage
# 品红色染料
execute if entity @s[nbt={Item:{id:"minecraft:pink_dye"}}] run function library:entity/item/method/water_damage
# 粉色染料
execute if entity @s[nbt={Item:{id:"minecraft:fire_charge"}}] run function library:entity/item/method/water_damage
# 烈焰弹
execute if entity @s[nbt={Item:{id:"minecraft:snowball"}}] run function library:entity/item/method/water_damage
# 雪球
execute if entity @s[nbt={Item:{id:"minecraft:snow"}}] run function library:entity/item/method/water_damage
# 雪
execute if entity @s[nbt={Item:{id:"minecraft:snow_block"}}] run function library:entity/item/method/water_damage
# 雪块
execute if entity @s[nbt={Item:{id:"minecraft:honey_block"}}] run function library:entity/item/method/water_damage
# 蜂蜜块
#
execute at @s if block ~ ~ ~ minecraft:water[level=0] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=8] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=9] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=10] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=11] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=12] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=13] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=14] run function library:entity/item/interface/in_water/full
execute at @s if block ~ ~ ~ minecraft:water[level=15] run function library:entity/item/interface/in_water/full
# 是满水位
