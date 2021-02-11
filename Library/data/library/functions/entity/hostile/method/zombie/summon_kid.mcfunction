#Copyright by BlueWhale. All Rights Reserved.
## 召唤
# 简单
execute if score #LibDifficulty libTemp matches 1.. run summon minecraft:zombie ~ ~ ~ {Tags:["selected"]}
# 普通
execute if score #LibDifficulty libTemp matches 2.. run summon minecraft:zombie ~ ~ ~ {Tags:["selected"]}
# 困难
execute if score #LibDifficulty libTemp matches 3.. run summon minecraft:zombie ~ ~ ~ {Tags:["selected"]}
#
