#Copyright by BlueWhale. All Rights Reserved.
tag @s[tag=crafting_ring] remove crafting_ring
tag @s[tag=factory_ring] remove factory_ring
tag @s remove discharging
summon minecraft:firework_rocket ~ ~ ~ {Life:100,LifeTime:10,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4b,Colors:[I;15790320]}]}}}}
#剧烈放电