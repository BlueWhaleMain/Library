# Copyright by BlueWhale. All Rights Reserved.
function library:entity/hostile/method/slime/shoot/model/small_jade/powered_circular
# 圆形弹幕
function library:entity/hostile/method/slime/shoot/model/small_jade/powered_hemispherical_up
# 上半球
execute if entity @s[nbt={OnGround:false}] run function library:entity/hostile/method/slime/shoot/model/small_jade/powered_hemispherical_down
# 下半球
