#Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Owner set from entity @e[type=#library:hostile,sort=nearest,distance=..8,limit=1] UUID
tag @s add hasOwner
