# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[scores={libraryFat=20..,libHealth=..10}] libHealth 1
scoreboard players add @s[scores={libraryFat=40..,libHealth=..50}] libHealth 1
scoreboard players add @s[scores={libraryFat=60..,libHealth=..100}] libHealth 1
scoreboard players add @s[scores={libraryFat=80..,libHealth=..150}] libHealth 1
scoreboard players add @s[scores={libraryFat=100..,libHealth=..200}] libHealth 1
# 给予进度：健壮
advancement grant @s[scores={libraryFat=100..199},advancements={library:guide/fat=false}] only library:guide/fat
