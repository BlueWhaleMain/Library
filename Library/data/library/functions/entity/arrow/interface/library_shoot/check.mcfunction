# (c) Copyright by BlueWhale. All Rights Reserved.
# 怪物窝里斗不太行
# execute at @s[tag=hostile,tag=!hasOwner] run function library:entity/method/owner/hostile
execute at @s[tag=player,tag=!hasOwner] run function library:entity/method/owner/player
# 酸液
execute if entity @s[nbt={inGround:true},tag=acid] run function library:entity/arrow/method/acid
## 地面清除
execute if entity @s[nbt={inGround:true},tag=weak] run kill
execute if entity @s[nbt={inGround:true},tag=player] run kill
#
# 重力检查
execute if entity @s[tag=!library_shoot_spy,tag=!NoGravity] run function library:entity/arrow/method/gravity_check
# 穿透箭
data modify entity @s[tag=library_shoot_pierce] PierceLevel set value 10b
# 瞄准
execute at @s[tag=library_shoot_spy] if entity @e[distance=..2,tag=library_shoot_target] run function library:entity/arrow/method/spy_target
# 攻击玩家
execute at @s[tag=target_player] if entity @p[distance=..64,gamemode=survival] run function library:entity/arrow/method/spy_player
# 等待工作台
execute at @s[tag=waiting_crafting_table] run function library:entity/arrow/method/waiting_crafting_table
# 飞行工作台
execute at @s[tag=crafting_table] run function library:entity/arrow/method/crafting_table
