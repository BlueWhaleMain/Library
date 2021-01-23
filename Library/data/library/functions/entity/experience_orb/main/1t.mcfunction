# (c) Copyright by BlueWhale. All Rights Reserved.
execute as @e[type=minecraft:experience_orb] run function library:entity/experience_orb/interface/all/check
schedule function library:entity/experience_orb/main/1t 1t
