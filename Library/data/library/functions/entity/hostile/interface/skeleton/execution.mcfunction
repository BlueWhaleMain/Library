# Copyright by BlueWhale. All Rights Reserved.
# 附近玩家移除抗性提升（KR
execute if entity @s[tag=boss] run effect clear @p[distance=..64,gamemode=survival,level=19..] minecraft:resistance
# 懒
execute if entity @s[tag=lazy] run function library:entity/hostile/method/skeleton/lazy
