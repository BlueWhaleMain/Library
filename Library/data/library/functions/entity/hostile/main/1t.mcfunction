# (c) Copyright by BlueWhale. All Rights Reserved.
execute as @e[type=#library:hostile] run function library:entity/hostile/interface/all/check
schedule function library:entity/hostile/main/1t 1t
