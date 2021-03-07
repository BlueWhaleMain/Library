# Copyright by BlueWhale. All Rights Reserved.
summon minecraft:arrow ^ ^ ^0.2 {Motion:[0.0d,0.0d,0.0d],NoGravity:true,Silent:true,pickup:2b,damage:4.0d,CustomPotionEffects:[{Id:19b,Amplifier:5,Duration:10}],Tags:["library_shoot","library_shoot_spy","hostile","weak","acid"]}
# 召唤箭
summon minecraft:armor_stand ^ ^ ^1.2 {Tags:["library_shoot_target"],Marker:true,NoGravity:true,Invisible:true}
# 召唤靶子
execute if predicate library:random/30 run tag @s add crazy
