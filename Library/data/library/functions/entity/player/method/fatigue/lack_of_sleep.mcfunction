# (c) Copyright by BlueWhale. All Rights Reserved.
effect give @s[scores={libraryFatigue=100..}] minecraft:blindness 2 0 true
effect give @s[scores={libraryFatigue=120..}] minecraft:mining_fatigue 2 0 true
effect give @s[scores={libraryFatigue=140..}] minecraft:weakness 2 0 true
effect give @s[scores={libraryFatigue=160..}] minecraft:slowness 2 0 true
execute if score @s libraryFatigue matches 180.. run function library:entity/player/method/state/die
