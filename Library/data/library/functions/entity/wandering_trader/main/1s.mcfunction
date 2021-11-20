# Copyright by BlueWhale. All Rights Reserved.
execute as @e[type=minecraft:wandering_trader] run function library:entity/wandering_trader/interface/all/execution
schedule function library:entity/wandering_trader/main/1s 1s
