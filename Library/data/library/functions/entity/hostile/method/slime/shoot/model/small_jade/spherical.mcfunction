# Copyright by BlueWhale. All Rights Reserved.
function library:entity/hostile/method/slime/shoot/model/small_jade/circular
# 圆形弹幕
function library:entity/hostile/method/slime/shoot/model/small_jade/hemispherical_up
# 上半球
execute if entity @s[nbt={OnGround:false}] run function library:entity/hostile/method/slime/shoot/model/small_jade/hemispherical_down
# 下半球
