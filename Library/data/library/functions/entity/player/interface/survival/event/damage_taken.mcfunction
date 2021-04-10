# Copyright by BlueWhale. All Rights Reserved.
scoreboard players remove @s[scores={libAtkFever=-50..}] libAtkFever 1
scoreboard players remove @s[scores={ctm_damage_taken=11..,libAtkFever=-80..}] libAtkFever 2
scoreboard players remove @s[scores={ctm_damage_taken=50..,libAtkFever=-100..}] libAtkFever 5
scoreboard players remove @s[scores={ctm_damage_taken=11..}] ctm_damage_taken 10
scoreboard players set @s[scores={ctm_damage_taken=..10}] ctm_damage_taken 0
# 呛水
execute at @s[nbt={Air:0s}] anchored eyes if block ~ ~ ~ minecraft:water run function library:entity/player/interface/survival/event/drown
