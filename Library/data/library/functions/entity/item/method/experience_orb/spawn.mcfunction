# Copyright by BlueWhale. All Rights Reserved.
# 100经验
execute if entity @s[nbt={Item:{tag:{Value:100s}}}] run summon minecraft:experience_orb ~ ~ ~ {Value:100s,Motion:[0.0d,0.5d,0.0d]}
