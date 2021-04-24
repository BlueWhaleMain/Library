# Copyright by BlueWhale. All Rights Reserved.
##计算参数初始化
# 检查libraryFat
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libraryFat=0..}] libScoreCheck 1
scoreboard players set @s[scores={libraryFat=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libraryFat 10
# 检查libraryFatigue
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libraryFatigue=0..}] libScoreCheck 1
scoreboard players set @s[scores={libraryFatigue=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libraryFatigue 0
# 检查libThirsty
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libThirsty=0..}] libScoreCheck 1
scoreboard players set @s[scores={libThirsty=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libThirsty 0
# 检查libFood
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libFood=0..}] libScoreCheck 1
scoreboard players set @s[scores={libFood=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libFood 0
#
# 减速
effect give @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] minecraft:slowness 2 1 true
scoreboard players add @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] libConsumeLvlCac 200
# 副手减速
effect give @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:gatling"}}]}] minecraft:slowness 2 0 true
scoreboard players add @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] libConsumeLvlCac 100
# 手持发射器
effect give @s[nbt={SelectedItem:{tag:{id:"library:launcher"}}}] minecraft:slowness 2 2 true
scoreboard players add @s[nbt={SelectedItem:{tag:{id:"library:launcher"}}}] libConsumeLvlCac 300
# 副手也能减速
effect give @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:launcher"}}]}] minecraft:slowness 2 1 true
scoreboard players add @s[nbt={SelectedItem:{tag:{id:"library:gatling"}}}] libConsumeLvlCac 200
##组合动作
# 格挡
execute if entity @s[scores={slw_sneak_time=1..,slw_damage_taken=1..}] run function library:entity/player/interface/survival/event/block
#
# 中毒
execute if entity @s[tag=poison] run function library:entity/player/method/state/die
##消耗计算
execute if score #LibDifficulty libTemp matches 0 run scoreboard players set @s libConsumeLvlCac 0
execute if score @s libConsumeLvlCac matches 10000.. run function library:entity/player/method/consume_level/add
#
##肥胖系统
execute if entity @s[scores={libraryFood=..14,libraryFat=-20..}] run function library:entity/player/method/fat/check
execute if entity @s[scores={libraryFat=..199,libHealth=-20..}] run function library:entity/player/method/fat/slim
execute if entity @s[scores={libraryFat=20..,libHealth=..200}] run function library:entity/player/method/fat/fat
effect give @s[scores={libraryFat=200..}] minecraft:slowness 2 0 true
advancement grant @s[scores={libraryFat=500..},advancements={library:state/fat/big=false}] only library:state/fat/big
advancement grant @s[scores={libraryFat=200..499},advancements={library:state/fat/porkchop=false}] only library:state/fat/porkchop
advancement grant @s[scores={libraryFat=120..199},advancements={library:state/fat/gold_ingot=false}] only library:state/fat/gold_ingot
advancement grant @s[scores={libraryFat=20..119},advancements={library:state/fat/iron_ingot=false}] only library:state/fat/iron_ingot
advancement grant @s[scores={libraryFat=0..19},advancements={library:state/fat/apple=false}] only library:state/fat/apple
advancement grant @s[scores={libraryFat=-40..-20},advancements={library:state/fat/bamboo=false}] only library:state/fat/bamboo
advancement grant @s[scores={libraryFat=-80..-41},advancements={library:state/fat/sugar_cane=false}] only library:state/fat/sugar_cane
advancement grant @s[scores={libraryFat=-100..-81},advancements={library:state/fat/grass=false}] only library:state/fat/grass
advancement grant @s[scores={libraryFat=..-101},advancements={library:state/fat/skeleton=false}] only library:state/fat/skeleton
#
##疲劳系统
execute if score #LibDifficulty libTemp matches 0 run scoreboard players set @s libraryFatigue 0
execute if score @s libraryFatigue matches 100.. run function library:entity/player/method/fatigue/lack_of_sleep
advancement grant @s[scores={libraryFatigue=180..},advancements={library:state/fatigue/die=false}] only library:state/fatigue/die
advancement grant @s[scores={libraryFatigue=140..179},advancements={library:state/fatigue/weak=false}] only library:state/fatigue/weak
advancement grant @s[scores={libraryFatigue=100..139},advancements={library:state/fatigue/blind=false}] only library:state/fatigue/blind
advancement grant @s[scores={libraryFatigue=50..99},advancements={library:state/fatigue/fatigue=false}] only library:state/fatigue/fatigue
advancement grant @s[scores={libraryFatigue=..49},advancements={library:state/fatigue/night_vision=false}] only library:state/fatigue/night_vision
#
##饱食度相关
execute if score @s libFood matches 1.. run function library:entity/player/method/state/slim
execute if score @s libFood matches 50.. run function library:entity/player/method/state/slim
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
advancement grant @s[scores={libThirsty=300..},advancements={library:state/thirsty/sand=false}] only library:state/thirsty/sand
advancement grant @s[scores={libThirsty=100..299},advancements={library:state/thirsty/bottle=false}] only library:state/thirsty/bottle
advancement grant @s[scores={libThirsty=-99..99},advancements={library:state/thirsty/water_bottle=false}] only library:state/thirsty/water_bottle
advancement grant @s[scores={libThirsty=-299..-100},advancements={library:state/thirsty/water_bucket=false}] only library:state/thirsty/water_bucket
advancement grant @s[scores={libThirsty=..-300},advancements={library:state/thirsty/water=false}] only library:state/thirsty/water
#
# 正常消耗
scoreboard players add @s libConsumeLvlCac 10
