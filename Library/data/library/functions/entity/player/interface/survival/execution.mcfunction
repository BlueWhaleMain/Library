#(c) Copyright by BlueWhale. All Rights Reserved.
##计算参数初始化
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libraryFat=0..}] libScoreCheck 1
scoreboard players set @s[scores={libraryFat=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libraryFat 10
#检查libraryFat
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libraryFatigue=0..}] libScoreCheck 1
scoreboard players set @s[scores={libraryFatigue=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libraryFatigue 0
#检查libraryFatigue
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libThirsty=0..}] libScoreCheck 1
scoreboard players set @s[scores={libThirsty=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libThirsty 0
#检查libThirsty
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libFood=0..}] libScoreCheck 1
scoreboard players set @s[scores={libFood=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libFood 0
#检查libFood
#
effect give @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] minecraft:slowness 2 1 true
#减速
effect give @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:gatling"}}]}] minecraft:slowness 2 0 true
#副手减速
##组合动作
execute if entity @s[scores={slw_sneak_time=1..,slw_damage_taken=1..}] run function library:entity/player/interface/survival/event/block
#格挡
#
execute if entity @s[tag=poison] run function library:entity/player/method/state/die
#中毒
##消耗计算
execute if score #LibDifficulty libTemp matches 0 run scoreboard players set @s libConsumeLvlCac 0
execute if score @s libConsumeLvlCac matches 50000.. run function library:entity/player/method/consume_level/add
#
##肥胖系统
execute if entity @s[scores={libraryFood=..14,libraryFat=-20..}] run function library:entity/player/method/fat/check
execute if entity @s[scores={libraryFat=..199,libHealth=-20..}] run function library:entity/player/method/fat/slim
execute if entity @s[scores={libraryFat=20..,libHealth=..200}] run function library:entity/player/method/fat/fat
effect give @s[scores={libraryFat=200..}] minecraft:slowness 2 0 true
#
##疲劳系统
execute if score #LibDifficulty libTemp matches 0 run scoreboard players set @s libraryFatigue 0
execute if score @s libraryFatigue matches 100.. run function library:entity/player/method/fatigue/lack_of_sleep
#
##饱食度相关
execute if score @s libFood matches 1.. run function library:entity/player/method/state/slim
execute if score @s libraryFood matches ..8 run function library:entity/player/method/food/hunger
scoreboard players add @s[scores={libraryFood=20..},tag=!is_already_bomb] libAtkValue 1
#
##生命值相关
execute if score @s libraryHealth <= #LibDifficulty libTemp run effect give @s minecraft:blindness 2 0 true
scoreboard players add @s[scores={libraryHealth=20..,libDefValue=..20}] libDefValue 2
#
##口渴系统
execute if score #LibDifficulty libTemp matches 0 run scoreboard players set @s libThirsty 0
execute if score @s libThirsty matches 100.. run function library:entity/player/method/thirsty/thirsty
execute if score @s libThirsty matches ..-100 run function library:entity/player/method/thirsty/water_poisoning
#