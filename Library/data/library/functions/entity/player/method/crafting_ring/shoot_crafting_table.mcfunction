# Copyright by BlueWhale. All Rights Reserved.
loot replace entity @s weapon.mainhand 1 loot library:items/crafting_ring/empty
# 替换成空的合成环
summon minecraft:arrow ^ ^ ^0.2 {Motion:[0.0d,0.0d,0.0d],NoGravity:true,Silent:true,pickup:0b,damage:0.0d,Tags:["library_shoot","library_shoot_spy","crafting_table"]}
# 召唤箭
summon minecraft:marker ^ ^ ^1.2 {Tags:["library_shoot_target"]}
# 召唤靶子
tag @s add shooting_crafting_table
# 标记为使用者
