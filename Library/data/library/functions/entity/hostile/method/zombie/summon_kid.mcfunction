# Copyright by BlueWhale. All Rights Reserved.
## 召唤
# 简单
execute if score #LibDifficulty libTemp matches 1.. run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Tags:["selected","summon"]}
# 普通
execute if score #LibDifficulty libTemp matches 2.. run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Tags:["selected","summon"]}
# 困难
execute if score #LibDifficulty libTemp matches 3.. run summon minecraft:zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Tags:["selected","summon"]}
#
