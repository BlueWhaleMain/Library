# Copyright by BlueWhale. All Rights Reserved.
# 创建还原点
#scoreboard players operation #InventoryChanged libTemp = @s libTemp
# 必要的消耗
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 100
### 所有需要检测背包的逻辑，都只在背包改变时检测

##
# 安全的撤销进度，必须最后，以免反复执行
advancement revoke @s only library:trigger/inventory_changed
# 进度触发的函数需要还原中间值的改动
#scoreboard players operation @s libTemp = #InventoryChanged libTemp
