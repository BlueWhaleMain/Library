#Copyright by BlueWhale. All Rights Reserved.
particle minecraft:firework ~ ~1 ~ 1 1 1 0 100
#生成粒子：烟花（大型）
##判断弹
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{model:"empty"}}]}] run function library:entity/player/method/shoot/no_card
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bullet_item:"bill"}}]}] run function library:entity/player/method/shoot/model/bill/octahedron
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bullet_item:"small_jade"}}]}] run function library:entity/player/method/shoot/model/small_jade/octahedron
#
execute as @e[distance=..1,sort=nearest,limit=4,type=minecraft:small_fireball,tag=!spawn,tag=player] at @s run function library:entity/player/method/shoot/bomb/empty/load_spy
#装载分裂弹
execute if entity @s[tag=is_already_bomb_last] as @e[distance=..32,type=minecraft:small_fireball,tag=split,tag=player] at @s run function library:entity/player/method/shoot/bomb/empty/split
#分裂弹