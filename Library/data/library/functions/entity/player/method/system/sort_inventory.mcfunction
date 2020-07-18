#Copyright by BlueWhale. All Rights Reserved.
execute if block ~ 254 ~ #library:air if block ~ 255 ~ #library:air run function library:entity/player/method/system/do_sort_inventory
# 判断有没有足够空间
execute unless block ~ 254 ~ #library:air run function library:entity/player/method/message/weak_signal
# 显示警告
execute unless block ~ 255 ~ #library:air run function library:entity/player/method/message/weak_signal
# 显示警告