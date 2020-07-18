#Copyright by BlueWhale. All Rights Reserved.
##战斗系统统计
scoreboard players operation @s libTemp = @s libraryHealth
#保存原来的生命值
effect clear @s minecraft:health_boost
#清除生命提升
execute if score @s libHealth matches 10.. run function library:entity/player/method/battle/health_boost
#重新给予
execute if score @s libTemp matches 21.. run function library:entity/player/method/battle/regeneration
#超出弥补
#
scoreboard players reset @s[nbt=!{SelectedItem:{tag:{id:"library:shoot"}}},tag=!is_already_bomb] libTouhouCFlag
#御币检查
execute if entity @s[gamemode=survival] run function library:entity/player/interface/survival/statistics
#执行生存模式逻辑