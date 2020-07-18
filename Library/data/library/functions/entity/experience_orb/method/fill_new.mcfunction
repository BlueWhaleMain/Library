#Copyright by BlueWhale. All Rights Reserved.
execute store result entity @s Value short 1 run scoreboard players get @e[tag=base,sort=nearest,limit=1] libraryFat
tag @e[tag=base,sort=nearest,limit=1] add removed
kill @e[tag=base,sort=nearest,limit=1]
tag @e[tag=base,sort=nearest,limit=1] remove base
tag @s remove new
