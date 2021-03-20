# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[tag=down] run function library:entity/player/method/state/blue_heart/down
execute if entity @s[tag=up] run function library:entity/player/method/state/blue_heart/up
tag @s[nbt={OnGround:true},tag=!up,tag=!down] remove BlueHeart
