#Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Item.Count set value 0
scoreboard players add @s[scores={libTouhouCTime=..-1}] libTouhouCTime 50
scoreboard players set @s[scores={libTouhouCTime=1..}] libTouhouCTime 0
particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0.2 20
#生成粒子：岩浆
