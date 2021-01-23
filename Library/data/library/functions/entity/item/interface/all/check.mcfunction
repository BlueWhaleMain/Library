# Copyright by BlueWhale. All Rights Reserved.
kill @s[nbt={Item:{tag:{id:"library:delete"}}}]
# 删除不应该出现的物品
execute at @s if block ~ ~ ~ minecraft:water run function library:entity/item/interface/in_water/check
# 水中
execute at @s[nbt={OnGround:true}] run function library:entity/item/interface/impact/check
execute at @s[nbt={OnGround:false}] unless block ^ ^ ^1 #library:air run function library:entity/item/interface/impact/check
# 碰撞检查
tag @s[nbt={Item:{tag:{id:"library:magnet"}}},tag=!magnet] add magnet
tag @s[nbt=!{Item:{tag:{id:"library:magnet"}}},tag=magnet] remove magnet
execute at @s[tag=!magnet,nbt=!{Item:{tag:{id:"library:controller",Switch:1b}}}] if entity @e[distance=..16,tag=magnet] run function library:entity/item/method/spy_magnet
# 接近磁铁，开启的节制器除外
execute at @s[tag=magnet] if entity @e[distance=1..16,tag=magnet] run function library:entity/item/method/magnet_spy_magnet
# 磁铁互相吸引
function library:entity/interface/all/check
# 更新动能
