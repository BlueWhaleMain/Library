# Copyright by BlueWhale. All Rights Reserved.
# 周围32格有东方玩家时装载弹幕
execute at @s[tag=!hostile,tag=!not_allowed_touhou] if score @p[distance=..32,gamemode=!spectator] libTouhouCFlag matches 1.. run function library:entity/hostile/interface/all/load
# 周围32格没有玩家时卸载弹幕
execute at @s[tag=hostile] unless entity @p[distance=..32,gamemode=!spectator] run function library:entity/hostile/interface/all/reset
# 执行生成任务
execute at @s[tag=!spawned,nbt={PersistenceRequired:0b}] run function library:entity/hostile/interface/all/spawn
# Boss直接生成任务
execute at @s[tag=boss_spawn] run function library:entity/hostile/interface/all/boss_spawn
# boss常驻加成
execute at @s[tag=boss] if entity @p[gamemode=survival,distance=..32] run function library:entity/hostile/interface/all/boss
# 僵尸
execute at @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/execution
# 尸壳
execute at @s[type=minecraft:husk] run function library:entity/hostile/interface/husk/execution
# 溺尸
execute at @s[type=minecraft:drowned] run function library:entity/hostile/interface/drowned/execution
# 骷髅
execute at @s[type=minecraft:skeleton] run function library:entity/hostile/interface/skeleton/execution
