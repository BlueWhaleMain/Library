# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:levitation 1 0 true
# 浮空
effect give @s minecraft:fire_resistance 2 0 true
# 抗火
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 100
# 生成粒子：烟花
##判断弹
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{model:"empty"}}]}] run function library:entity/player/method/shoot/no_card
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bullet_item:"bill"}}]}] run function library:entity/player/method/shoot/bomb/empty/bullet/bill
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bullet_item:"small_jade"}}]}] run function library:entity/player/method/shoot/bomb/empty/bullet/small_jade
#
