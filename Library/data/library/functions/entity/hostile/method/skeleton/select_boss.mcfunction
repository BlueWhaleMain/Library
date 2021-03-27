# Copyright by BlueWhale. All Rights Reserved.
# 改名，不会自然消失，必然掉装备，不捡装备
data merge entity @s {DeathLootTable:"library:entities/boss/skeleton",HandDropChances:[1f,1f],ArmorDropChances:[1f,1f,1f,1f],CustomName:'{"translate":"entity.library.skeleton.boss"}',CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b}
## 难度分支
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/skeleton/select_boss/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/skeleton/select_boss/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/skeleton/select_boss/easy
#
## 生成装备
# 头盔
loot replace entity @s armor.head 1 loot minecraft:empty
# 胸甲
loot replace entity @s armor.chest 1 loot library:items/sans/jacket
# 护腿
loot replace entity @s armor.legs 1 loot library:items/sans/shorts
# 靴子
loot replace entity @s armor.feet 1 loot library:items/sans/slippers
#
## 生成武器
# 主手
loot replace entity @s weapon.mainhand 1 loot minecraft:empty
# 副手
loot replace entity @s weapon.offhand 1 loot minecraft:empty
#
# 跟随距离32
attribute @s minecraft:generic.follow_range base set 32
# 无敌时间
scoreboard players set @s libDefFever 60
scoreboard players set @s libDefValue 180
# 完全抵抗击退
attribute @s minecraft:generic.knockback_resistance base set 1
# 生成灵魂火焰粒子
particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.4 100
# 播放声音：图腾发动
playsound minecraft:item.totem.use hostile @a ~ ~1 ~ 1.0
# 标记
tag @s add boss
# 特殊标记
tag @s add sans
