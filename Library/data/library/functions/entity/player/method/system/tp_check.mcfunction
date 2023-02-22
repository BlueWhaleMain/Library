# Copyright by BlueWhale. All Rights Reserved.
# 获取自身Y轴
execute store result score #PlayerPos libTemp run data get entity @s Pos[1]
# 范围内取消旁观
execute if entity @s[tag=spectator] unless score #PlayerPos libTemp matches ..-64 run function library:entity/player/method/system/tp_check/un_spectator
# 范围正常转tp
execute if entity @s[tag=!spectator] unless score #PlayerPos libTemp matches ..-64 run function library:entity/player/method/system/tp_check/loop
# 超出范围转旁观者
execute if entity @s[tag=!spectator] if score #PlayerPos libTemp matches ..-64 run function library:entity/player/method/system/tp_check/spectator
# 给予缓降
tag @s[nbt={OnGround:false}] add slow_falling
