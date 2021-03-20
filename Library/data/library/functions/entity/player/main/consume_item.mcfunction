# Copyright by BlueWhale. All Rights Reserved.
# 必要的消耗
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strength"}}}] libAtkValue 180
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_strength"}}}] libAtkValue 480
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_strength"}}}] libAtkValue 810

scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:weakness"}}}] libAtkFever 90
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:weakness"}}}] libDefFever 90
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_weakness"}}}] libAtkFever 240
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_weakness"}}}] libDefFever 240

scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:night_vision"}}}] libraryFatigue 30
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_night_vision"}}}] libraryFatigue 80

scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:turtle_master"}}}] libDefValue 80
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_turtle_master"}}}] libDefValue 640
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_turtle_master"}}}] libDefValue 160

scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:healing"}}}] libHealth 80
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_healing"}}}] libHealth 160
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:regeneration"}}}] libHealth 45
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_regeneration"}}}] libHealth 90
scoreboard players add @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_regeneration"}}}] libHealth 484

scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:harming"}}}] libHealth 80
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_harming"}}}] libHealth 160
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:poison"}}}] libHealth 45
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:long_poison"}}}] libHealth 90
scoreboard players remove @s[nbt={SelectedItem:{tag:{Potion:"minecraft:strong_poison"}}}] libHealth 441

advancement revoke @s only library:trigger/consume_item
