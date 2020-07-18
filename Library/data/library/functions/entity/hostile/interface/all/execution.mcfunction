#Copyright by BlueWhale. All Rights Reserved.
execute at @s[tag=!hostile,tag=!not_allowed_touhou] if score @p[distance=..32,gamemode=!spectator] libTouhouCFlag matches 1.. run function library:entity/hostile/interface/all/load
#周围32格有东方玩家时装载弹幕
execute at @s[tag=hostile] unless entity @p[distance=..32,gamemode=!spectator] run function library:entity/hostile/interface/all/reset
#周围32格没有玩家时卸载弹幕
