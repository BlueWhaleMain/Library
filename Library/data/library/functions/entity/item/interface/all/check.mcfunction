# Copyright by BlueWhale. All Rights Reserved.
# 删除不应该出现的物品
kill @s[nbt={Item:{tag:{id:"library:delete"}}}]
# 水中
execute at @s if block ~ ~ ~ minecraft:water run function library:entity/item/interface/in_water/check
# 碰撞检查
execute at @s[nbt={OnGround:true}] run function library:entity/item/interface/impact/check
execute at @s[nbt={OnGround:false}] unless block ^ ^ ^1 #library:air run function library:entity/item/interface/impact/check
# 接近磁铁，开启的节制器除外
tag @s[nbt={Item:{tag:{id:"library:magnet"}}},tag=!magnet] add magnet
tag @s[nbt=!{Item:{tag:{id:"library:magnet"}}},tag=magnet] remove magnet
execute at @s[tag=!magnet,nbt=!{Item:{tag:{id:"library:controller",Switch:1b}}}] if entity @e[distance=..16,tag=magnet] run function library:entity/item/method/spy_magnet
# 磁铁互相吸引
execute at @s[tag=magnet] if entity @e[distance=1..16,tag=magnet] run function library:entity/item/method/magnet_spy_magnet
# 更新动能
function library:entity/interface/all/check
# 压缩
execute at @s[tag=!compress] if block ~ ~1 ~ minecraft:moving_piston[facing=down] run tag @s add compress
execute at @s[tag=compress] run function library:entity/item/interface/compress/check
# 经验
execute at @s[nbt={Item:{tag:{id:"library:experience_orb"}}}] run function library:entity/item/method/experience_orb
