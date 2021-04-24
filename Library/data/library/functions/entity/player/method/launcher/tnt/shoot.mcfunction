# Copyright by BlueWhale. All Rights Reserved.
# 召唤箭
summon minecraft:arrow ^ ^ ^0.2 {Motion:[0.0d,0.0d,0.0d],NoGravity:true,Silent:true,pickup:2b,damage:10.0d,Tags:["library_shoot","library_shoot_spy","player","weak","tnt"]}
# 召唤靶子
summon minecraft:armor_stand ^ ^ ^1 {Tags:["library_shoot_target"],Marker:true,NoGravity:true,Invisible:true}
clear @s[gamemode=!creative] minecraft:tnt 1
