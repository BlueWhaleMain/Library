#Copyright by BlueWhale. All Rights Reserved.
effect give @s[scores={libDef=10..}] minecraft:resistance 2 0 true
effect give @s[scores={libDef=50..}] minecraft:resistance 2 1 true
effect give @s[scores={libDef=100..}] minecraft:resistance 2 2 true
advancement grant @s[scores={libDefFever=199..},advancements={library:battle/defend_fever=false}] only library:battle/defend_fever
#给予进度：全神贯注