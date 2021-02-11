#Copyright by BlueWhale. All Rights Reserved.
# 改名
data merge entity @s {CustomName:'{"translate":"entity.library.zombie.boss"}'}
## 修改最大生命
# 简单
execute if score #LibDifficulty libTemp matches 1 run attribute @s minecraft:generic.max_health base set 100
# 普通
execute if score #LibDifficulty libTemp matches 2 run attribute @s minecraft:generic.max_health base set 200
# 困难
execute if score #LibDifficulty libTemp matches 3 run attribute @s minecraft:generic.max_health base set 400
#
# 补满（省略计算）
effect give @s minecraft:regeneration 1 255 true
# 完全抵抗击退
attribute @s minecraft:generic.knockback_resistance base set 1
# 伤害倍率
execute if score #LibDifficulty libTemp matches 2 run attribute @s minecraft:generic.attack_damage base set 2
execute if score #LibDifficulty libTemp matches 3 run attribute @s minecraft:generic.attack_damage base set 3
# 召唤概率最大
attribute @s minecraft:zombie.spawn_reinforcements base set 1
# 生成岩浆粒子
particle minecraft:lava ~ ~1 ~ 0.4 0.4 0.4 0.4 100
# 播放声音：图腾发动
playsound minecraft:item.totem.use hostile @a ~ ~1 ~ 1.0
