# Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},sort=nearest,tag=,limit=1] Item.Count set value 0
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},sort=nearest,tag=,limit=1] Item.Count set value 0
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:iron_ingot"}},sort=nearest,tag=,limit=1] Item.Count set value 0
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:ender_pearl"}},sort=nearest,tag=,limit=1] Item.Count set value 0
data modify entity @s Item.Count set value 0
data modify entity @e[type=minecraft:item_frame,sort=nearest,tag=iron_block_synthesis,tag=!discharging,limit=1] Item set value {id:"minecraft:paper",Count:1b,tag:{id:"library:crafting_ring",display:{Name:"{'translate':'item.library.crafting_ring'}"}}}
particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.2 50
# 生成粒子：烟花
playsound library:synthesis.discharge voice @a ~ ~ ~ 1.0
# 播放声音：冷却
playsound library:synthesis.fusion_complete voice @a ~ ~ ~ 1.0
# 播放声音：合成完毕
tag @s remove crafting_ring
tag @s remove charging
