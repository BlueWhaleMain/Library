# Copyright by BlueWhale. All Rights Reserved.
# 周围32格有东方玩家时装载弹幕
execute at @s[tag=!hostile,tag=!not_allowed_touhou] if score @p[distance=..32,gamemode=!spectator] libTouhouCFlag matches 1.. run function library:entity/hostile/interface/all/load
# 周围32格没有玩家时卸载弹幕
execute at @s[tag=hostile] unless entity @p[distance=..32,gamemode=!spectator] run function library:entity/hostile/interface/all/reset
# 执行生成任务
execute at @s[tag=!spawned,nbt={PersistenceRequired:0b}] run function library:entity/hostile/interface/all/spawn
# boss常驻加成
execute at @s[tag=boss] run function library:entity/hostile/interface/all/boss
# 僵尸
execute at @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/execution
