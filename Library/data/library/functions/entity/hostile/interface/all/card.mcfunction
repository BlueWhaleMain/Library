# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCFlag=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCFlag=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCFlag 1
# 检查libTouhouCFlag
execute if entity @s[type=minecraft:slime] run function library:entity/hostile/interface/slime/card
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/card
execute if entity @s[type=minecraft:blaze] run function library:entity/hostile/interface/blaze/card
