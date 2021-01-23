# Copyright by BlueWhale. All Rights Reserved.
summon minecraft:lightning_bolt ~ ~ ~
scoreboard players add @s[scores={libTouhouCTime=..-1}] libTouhouCTime 1000
scoreboard players set @s[scores={libTouhouCTime=1..}] libTouhouCTime 0
scoreboard players add @s libTouhouCEscape 1000
