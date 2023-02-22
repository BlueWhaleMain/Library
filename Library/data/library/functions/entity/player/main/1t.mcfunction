# Copyright by BlueWhale. All Rights Reserved.
execute as @a[gamemode=!spectator] run function library:entity/player/interface/all/check
execute as @a[gamemode=spectator,tag=spectator] run function library:entity/player/interface/spectator/check
schedule function library:entity/player/main/1t 1t
