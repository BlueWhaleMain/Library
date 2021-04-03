# Copyright by BlueWhale. All Rights Reserved.
# 选择Boss（附近没有Boss才会选择）
## 召唤
scoreboard players set #BossCount libTemp 0
scoreboard players set #PlayerCount libTemp 0
execute as @e[type=#library:hostile,tag=boss] run scoreboard players add #BossCount libTemp 1
execute as @a[gamemode=survival] run scoreboard players add #PlayerCount libTemp 1
# 判断数量，不能大于玩家总数
execute at @s[tag=!boss] if score #BossCount libTemp < #PlayerCount libTemp unless entity @e[type=#library:hostile,tag=boss,distance=..32] run function library:entity/hostile/interface/all/select_boss
#
