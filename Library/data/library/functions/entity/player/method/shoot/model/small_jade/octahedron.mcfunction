#Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/shoot/model/small_jade/split
#四
function library:entity/player/method/shoot/model/small_jade/up
#上
execute if entity @s[nbt={OnGround:false}] run function library:entity/player/method/shoot/model/small_jade/down
#下