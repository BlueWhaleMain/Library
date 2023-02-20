# Copyright by BlueWhale. All Rights Reserved.
# 管理员
advancement grant @s[tag=admin,advancements={library:install/admin=false}] only library:install/admin
# 管理员工具
advancement grant @s[tag=admin,advancements={library:install/admin_tool=false},nbt={Inventory:[{tag:{permission:"admin"}}]}] only library:install/admin_tool
## 警告非管理员
execute if entity @s[nbt={Inventory:[{tag:{permission:"admin"}}]},tag=!admin] run function library:entity/player/method/system/not_admin
execute if entity @s[nbt={EnderItems:[{tag:{permission:"admin"}}]},tag=!admin,tag=confession] run function library:entity/player/method/system/not_admin
# 重置
tag @s[tag=confession] remove confession
#
# 博丽大结界
execute at @s[nbt={SelectedItem:{tag:{id:"library:touhou"}}}] run function library:entity/player/method/touhou/select
# 副手也能工作
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:touhou"}}]}] run function library:entity/player/method/touhou/select
# 管理员头盔
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{id:"library:admin_helmet"}}]}] run function library:entity/player/method/admin/helmet
# 管理员胸甲
effect give @s[nbt={Inventory:[{Slot:102b,tag:{id:"library:admin_chestplate"}}]}] minecraft:resistance 2 127 true
# 管理员护腿
effect give @s[nbt={Inventory:[{Slot:101b,tag:{id:"library:admin_leggings"}}]}] minecraft:fire_resistance 2 127 true
# 加特林
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] run function library:entity/player/method/gatling/check
# 无限弩
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:infinity_crossbow"}}}] run function library:entity/player/method/infinity_crossbow/check
# 磁铁
tag @s[nbt={SelectedItem:{tag:{id:"library:magnet"}}},tag=!magnet] add magnet
# 尝试去除标签
tag @s[nbt=!{SelectedItem:{tag:{id:"library:magnet"}}},tag=magnet] remove magnet
# 副手也能工作
tag @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:magnet"}}]},tag=!magnet] add magnet
# 空阴阳玉（欧拉欧拉）
execute if entity @s[tag=!is_already_bomb,nbt={SelectedItem:{tag:{id:"library:yin_yang_yu",mode:empty}},Inventory:[{Slot:-106b,tag:{id:"library:shoot",Damage:0}}]}] run effect give @s minecraft:strength 1 10 true
## 传送保护
execute at @s[tag=teleport] run function library:entity/player/method/admin/teleport/loop
execute at @s[tag=library_tp_spy] run function library:entity/player/method/system/tp_check
execute at @s[tag=library_tp_admin] run function library:entity/player/method/system/tp_check
#
## 结束tp
execute at @s[tag=library_tp_spy,tag=!slow_falling] if block ~ ~ ~ #library:tp_body_safe if block ~ ~1 ~ #library:tp_body_safe run function library:entity/player/method/shoot/support_skills/yukari_yakumo/close
execute at @s[tag=library_tp_spy,tag=slow_falling,nbt=!{SelectedItem:{tag:{id:"library:yin_yang_yu",mode:"support_yukari_yakumo"}}}] run function library:entity/player/method/shoot/support_skills/yukari_yakumo/cancel
execute at @s[tag=library_tp_admin,tag=!slow_falling] if block ~ ~ ~ #library:tp_body_safe if block ~ ~1 ~ #library:tp_body_safe run function library:entity/player/method/admin/teleport/close
#
##符卡运行
# 延迟
scoreboard players remove @s[scores={libTouhouCEscape=1..}] libTouhouCEscape 1
# 标记释放进度
scoreboard players add @s[scores={libTouhouCFlag=1..,libTouhouCEscape=..0}] libTouhouCFlag 1
# bomb
execute if entity @s[tag=is_already_bomb,scores={libTouhouCEscape=..0}] run function library:entity/player/interface/all/event/bomb
#
##一般检测
# 显示版本
execute if score @s showVersion matches 1.. run function library:entity/player/method/system/show_version
# 使用胡萝卜钓竿
execute if score @s used_COAS matches 1.. run function library:entity/player/interface/all/event/used_carrot_on_a_stick
# 死亡
execute if score @s libDeathCount matches 1.. run function library:entity/player/interface/all/event/death
#
##一般运动
# 行走
execute if score @s ctm_walk_cm matches 1.. run function library:entity/player/interface/all/event/walk
# 水上行走
execute if score @s ctm_WOW_cm matches 1.. run function library:entity/player/interface/all/event/walk_on_water
# 水下行走
execute if score @s ctm_WUW_cm matches 1.. run function library:entity/player/interface/all/event/walk_under_water
# 游泳
execute if score @s ctm_swim_cm matches 1.. run function library:entity/player/interface/all/event/swim
# 疾跑
execute if score @s ctm_sprint_cm matches 1.. run function library:entity/player/interface/all/event/sprint
# 攀爬
execute if score @s ctm_climb_cm matches 1.. run function library:entity/player/interface/all/event/climb
# 跳跃
execute if score @s ctm_jump matches 1.. run function library:entity/player/interface/all/event/jump
# 造成伤害
execute if score @s ctm_damage_dealt matches 1.. run function library:entity/player/interface/all/event/damage_dealt
# 潜行时间
execute if score @s ctm_sneak_time matches 1.. run function library:entity/player/interface/all/event/sneak
# 潜行距离
execute if score @s ctm_CO_cm matches 1.. run function library:entity/player/interface/all/event/crouch
#
# 数据包指南
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:sys_book"}}}] run function library:entity/player/method/sys_book/sys_book
# 合成环装填
execute if entity @s[nbt={Inventory:[{tag:{id:"library:crafting_ring",item:"minecraft:empty"}}]}] run function library:entity/player/method/crafting_ring/fill
# 工厂环装填
execute if entity @s[nbt={Inventory:[{tag:{id:"library:factory_ring",item:"minecraft:empty"}}]}] run function library:entity/player/method/factory_ring/fill
# 执行生存模式逻辑
execute if entity @s[gamemode=survival] run function library:entity/player/interface/survival/check
# 执行东方玩家逻辑
execute if entity @s[advancements={library:touhou/root=true}] run function library:entity/player/interface/touhou/check
# 重置触发器
function library:entity/player/method/system/reset_trigger
