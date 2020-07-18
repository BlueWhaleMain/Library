#(c) Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/shoot/model/small_jade/powered_circular
#更密的圆形弹幕
function library:entity/player/method/shoot/model/small_jade/powered_hemispherical_up
#更密的上半球弹幕
execute if entity @s[nbt={OnGround:false}] run function library:entity/player/method/shoot/model/small_jade/powered_hemispherical_down
#更密的下半球弹幕
