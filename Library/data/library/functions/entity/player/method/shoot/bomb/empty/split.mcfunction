# Copyright by BlueWhale. All Rights Reserved.
##上色
execute if entity @s[nbt={Item:{tag:{"CustomModelData":12760003}}}] run function library:entity/player/method/shoot/model/bill/octahedron
execute if entity @s[nbt={Item:{tag:{"CustomModelData":12760004}}}] run function library:entity/player/method/shoot/model/small_jade/octahedron
#
particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0 10
# 生成粒子：烟花
kill
# 清除自身
tag @e[type=minecraft:small_fireball,tag=player,tag=!spawn,distance=..1] add spawn
# 添加标签
playsound library:item.chain.shoot player @a ~ ~ ~ 1.0
# 播放声音：连续射击
