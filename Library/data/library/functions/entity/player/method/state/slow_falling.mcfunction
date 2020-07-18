#(c) Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:slow_falling 2 0 true
#给予缓降
tag @s[nbt={OnGround:true}] remove slow_falling
#触地则结束缓降