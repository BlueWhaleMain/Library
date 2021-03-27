# Copyright by BlueWhale. All Rights Reserved.
## 力量
effect give @s[scores={libAtk=10..49}] minecraft:strength 2 0 true
effect give @s[scores={libAtk=50..99}] minecraft:strength 2 1 true
effect give @s[scores={libAtk=100..149}] minecraft:strength 2 2 true
effect give @s[scores={libAtk=150..199}] minecraft:strength 2 3 true
effect give @s[scores={libAtk=200..249}] minecraft:strength 2 4 true
effect give @s[scores={libAtk=250..299}] minecraft:strength 2 5 true
effect give @s[scores={libAtk=300..}] minecraft:strength 2 6 true
#
## 急迫
effect give @s[scores={libAtk=10..49}] minecraft:haste 2 0 true
effect give @s[scores={libAtk=50..99}] minecraft:haste 2 1 true
effect give @s[scores={libAtk=100..149}] minecraft:haste 2 2 true
effect give @s[scores={libAtk=150..199}] minecraft:haste 2 3 true
effect give @s[scores={libAtk=200..249}] minecraft:haste 2 4 true
effect give @s[scores={libAtk=250..299}] minecraft:haste 2 5 true
effect give @s[scores={libAtk=300..}] minecraft:haste 2 6 true
#
## 速度
effect give @s[scores={libAtk=50..,libraryFat=..100}] minecraft:speed 2 0 true
effect give @s[scores={libAtk=100..,libraryFat=..100}] minecraft:speed 2 1 true
effect give @s[scores={libAtk=150..,libraryFat=..100}] minecraft:speed 2 2 true

effect give @s[scores={libAtk=100..,libraryFat=..150}] minecraft:speed 2 0 true
effect give @s[scores={libAtk=150..,libraryFat=..150}] minecraft:speed 2 1 true

effect give @s[scores={libAtk=150..,libraryFat=..180}] minecraft:speed 2 0 true
#
# 给予进度：火力全开
advancement grant @s[scores={libAtkFever=199..},advancements={library:battle/attack_fever=false}] only library:battle/attack_fever
