# Copyright by BlueWhale. All Rights Reserved.
tag @s add base
execute if score @s libTemp matches 1..2 run summon minecraft:experience_orb ~ ~ ~ {Value:1s,Tags:["new"]}
execute if score @s libTemp matches 3..6 run summon minecraft:experience_orb ~ ~ ~ {Value:3s,Tags:["new"]}
execute if score @s libTemp matches 7..16 run summon minecraft:experience_orb ~ ~ ~ {Value:7s,Tags:["new"]}
execute if score @s libTemp matches 37..72 run summon minecraft:experience_orb ~ ~ ~ {Value:37s,Tags:["new"]}
execute if score @s libTemp matches 73..148 run summon minecraft:experience_orb ~ ~ ~ {Value:73s,Tags:["new"]}
execute if score @s libTemp matches 149..306 run summon minecraft:experience_orb ~ ~ ~ {Value:149s,Tags:["new"]}
execute if score @s libTemp matches 307..616 run summon minecraft:experience_orb ~ ~ ~ {Value:307s,Tags:["new"]}
execute if score @s libTemp matches 617..1236 run summon minecraft:experience_orb ~ ~ ~ {Value:617s,Tags:["new"]}
execute if score @s libTemp matches 1237..2476 run summon minecraft:experience_orb ~ ~ ~ {Value:1237s,Tags:["new"]}
execute if score @s libTemp matches 2477.. run summon minecraft:experience_orb ~ ~ ~ {Value:2477s,Tags:["new"]}
execute store result score @s libraryFat run data get entity @s Value 1
data modify entity @s Value set value 0
