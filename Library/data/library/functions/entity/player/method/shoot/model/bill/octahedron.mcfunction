# Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/shoot/model/bill/split
# 四
function library:entity/player/method/shoot/model/bill/up
# 上
execute if entity @s[nbt={OnGround:false}] run function library:entity/player/method/shoot/model/bill/down
# 下
