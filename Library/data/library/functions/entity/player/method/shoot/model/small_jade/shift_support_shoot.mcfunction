# Copyright by BlueWhale. All Rights Reserved.
summon minecraft:small_fireball ^0.5 ^-0.2 ^ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","library_shoot_spy","player","track"]}
# 召唤火球
summon minecraft:armor_stand ^0.5 ^-0.2 ^1 {Tags:["library_shoot_target"],Marker:true,NoGravity:true,Invisible:true}
# 召唤靶子
execute if entity @s[scores={libTemp=2..}] run function library:entity/player/method/shoot/model/small_jade/shift_support_shoot/lv2
# Lv2(power)
execute if entity @s[scores={libTemp=3..}] run function library:entity/player/method/shoot/model/small_jade/shift_support_shoot/lv3
# Lv3(power)
execute if entity @s[scores={libTemp=4..}] run function library:entity/player/method/shoot/model/small_jade/shift_support_shoot/lv4
# Lv4(power)
