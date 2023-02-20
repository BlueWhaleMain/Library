# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set #SortLock libScoreCheck 0
execute if score #SortLock libTemp matches 0.. run scoreboard players set #SortLock libScoreCheck 1
execute if score #SortLock libTemp matches ..-1 run scoreboard players set #SortLock libScoreCheck 1
execute if score #SortLock libScoreCheck matches 0 run scoreboard players set #SortLock libTemp 0
# 判断
execute if block ~ 254 ~ #library:air if block ~ 255 ~ #library:air if score #SortLock libTemp matches 0 run function library:entity/player/method/system/do_sort_inventory
## 显示警告
# 没有足够空间
execute unless block ~ 254 ~ #library:air run function library:entity/player/method/message/weak_signal
# 没有足够空间
execute unless block ~ 255 ~ #library:air run function library:entity/player/method/message/weak_signal
# 锁冲突
execute unless score #SortLock libTemp matches 0 run function library:entity/player/method/message/busy_line
#
