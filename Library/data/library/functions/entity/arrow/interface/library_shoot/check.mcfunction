# (c) Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={inGround:true},tag=player] run kill
# 地面清除
execute if entity @s[tag=!library_shoot_spy,tag=!NoGravity] run function library:entity/arrow/method/gravity_check
# 重力检查
data modify entity @s[tag=library_shoot_pierce] PierceLevel set value 10b
# 穿透箭
execute at @s[tag=library_shoot_spy] if entity @e[distance=..2,tag=library_shoot_target] run function library:entity/arrow/method/spy_target
# 瞄准
execute at @s[tag=waiting_crafting_table] run function library:entity/arrow/method/waiting_crafting_table
# 等待工作台
execute at @s[tag=crafting_table] run function library:entity/arrow/method/crafting_table
# 飞行工作台
