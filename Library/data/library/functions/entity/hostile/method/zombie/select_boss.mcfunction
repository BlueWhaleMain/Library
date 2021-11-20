# Copyright by BlueWhale. All Rights Reserved.
# 改名，不会自然消失，必然掉装备
data merge entity @s {DeathLootTable:"library:entities/boss/zombie",HandDropChances:[1f,1f],ArmorDropChances:[1f,1f,1f,1f],CustomName:'{"translate":"entity.library.zombie_boss"}',CustomNameVisible:1b}
data merge entity @s[nbt={IsBaby:1b}] {CustomName:'{"translate":"entity.library.chara"}'}
# 主手
loot replace entity @s[nbt={IsBaby:1b}] weapon.mainhand 1 loot library:items/true_knife
loot replace entity @s[nbt={IsBaby:1b}] weapon.offhand 1 loot library:items/heart_pendant
# 标记
tag @s[nbt={IsBaby:1b}] add chara
## 难度分支
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/zombie/select_boss/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/zombie/select_boss/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/zombie/select_boss/easy
#
# 无敌时间
effect give @s minecraft:resistance 5 255 true
# 补满（省略计算）
effect give @s minecraft:regeneration 5 255 true
# 完全抵抗击退
attribute @s minecraft:generic.knockback_resistance base set 1
# 召唤概率最大
attribute @s minecraft:zombie.spawn_reinforcements base set 1
# 生成岩浆粒子
particle minecraft:lava ~ ~1 ~ 0.4 0.4 0.4 0.4 100
# 播放声音：图腾发动
playsound minecraft:item.totem.use hostile @a ~ ~1 ~ 1.0
# 标记
tag @s add boss
