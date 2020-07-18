#Copyright by BlueWhale. All Rights Reserved.
effect give @s[scores={libAtk=10..49}] minecraft:strength 2 0 true
effect give @s[scores={libAtk=50..99}] minecraft:strength 2 1 true
effect give @s[scores={libAtk=100..}] minecraft:strength 2 2 true
effect give @s[scores={libAtk=10..49}] minecraft:haste 2 0 true
effect give @s[scores={libAtk=50..99}] minecraft:haste 2 1 true
effect give @s[scores={libAtk=100..}] minecraft:haste 2 2 true
effect give @s[scores={libAtk=100..,libraryFat=..150}] minecraft:speed 2 0 true
effect give @s[scores={libAtk=150..,libraryFat=..180}] minecraft:speed 2 0 true
advancement grant @s[scores={libAtkFever=199..},advancements={library:battle/attack_fever=false}] only library:battle/attack_fever
#给予进度：火力全开