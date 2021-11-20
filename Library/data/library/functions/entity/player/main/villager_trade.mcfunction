# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 20
execute as @e[type=wandering_trader,distance=..16] run function library:entity/wandering_trader/interface/all/trade
# 顺序必须最后
advancement revoke @s only library:trigger/villager_trade
