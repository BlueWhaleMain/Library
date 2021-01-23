# Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/battle/clear
# 不受负面影响，也免疫加成
scoreboard players set @s libConsumeLvlCac 0
# 锁定消耗为0
scoreboard players set @s libraryFatigue 0
# 锁定疲劳为0
scoreboard players set @s libThirsty 0
# 锁定口渴为0
scoreboard players set @s[scores={libraryFat=..-1}] libraryFat 0
# 平衡肥胖
effect clear @s minecraft:slowness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:instant_damage
effect clear @s minecraft:nausea
effect clear @s minecraft:blindness
effect clear @s minecraft:hunger
effect clear @s minecraft:weakness
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:unluck
# 清除负面效果
execute if score #LibTime libTemp matches 12769..22812 run effect give @s minecraft:night_vision 15 0 true
# 夜视
effect give @s[scores={libraryFood=..18}] minecraft:saturation 1 0 true
# 饱和
