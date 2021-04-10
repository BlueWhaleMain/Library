# Copyright by BlueWhale. All Rights Reserved.
##生成弹幕
summon minecraft:arrow ^1 ^-1.2 ^ {Motion:[0.0d,0.0d,0.0d],NoGravity:true,pickup:2b,damage:2.0d,Tags:["library_shoot","library_shoot_spy","player"]}
# 召唤箭
summon minecraft:armor_stand ^1 ^-1.2 ^1 {Tags:["library_shoot_target"],Marker:true,NoGravity:true,Invisible:true}
# 召唤靶子
execute if entity @s[scores={libTemp=2..}] run function library:entity/player/method/shoot/model/summit_purple_needle/support_shoot/lv2
# Lv2(power)
execute if entity @s[scores={libTemp=3..}] run function library:entity/player/method/shoot/model/summit_purple_needle/support_shoot/lv3
# Lv3(power)
execute if entity @s[scores={libTemp=4..}] run function library:entity/player/method/shoot/model/summit_purple_needle/support_shoot/lv4
# Lv4(power)
#
