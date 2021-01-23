# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[tag=discharging] run function library:entity/item_frame/method/iron_block_synthesis/run
execute if entity @s[tag=!discharging] run function library:entity/item_frame/method/iron_block_synthesis/discharging
# 未放电则检查
