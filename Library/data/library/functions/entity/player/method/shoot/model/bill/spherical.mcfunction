# Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/shoot/model/bill/circular
# 圆形弹幕
function library:entity/player/method/shoot/model/bill/hemispherical_up
# 上半球
execute if entity @s[nbt={OnGround:false}] run function library:entity/player/method/shoot/model/bill/hemispherical_down
# 下半球
