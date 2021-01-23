# (c) Copyright by BlueWhale. All Rights Reserved.
effect give @s[scores={libThirsty=100..299}] minecraft:mining_fatigue 2 0 true
effect give @s[scores={libThirsty=200..299}] minecraft:weakness 2 0 true
execute if score @s libThirsty matches 300.. run function library:entity/player/method/state/die
