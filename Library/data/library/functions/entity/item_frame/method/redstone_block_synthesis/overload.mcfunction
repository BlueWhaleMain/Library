#Copyright by BlueWhale. All Rights Reserved.
summon minecraft:firework_rocket ~ ~ ~ {Life:100,LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;15790320]}]}}}}
scoreboard players add @s[scores={libTouhouCTime=..-1}] libTouhouCTime 1
scoreboard players add @s libTouhouCEscape 1
