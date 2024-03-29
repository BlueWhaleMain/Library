# Copyright by BlueWhale. All Rights Reserved.
## 计算参数初始化
## 检查libTouhouCTime
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCTime=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCTime=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCTime 0
#
## 检查libTouhouCEscape
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCEscape=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCEscape=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCEscape 0
#
## 检查libTouhouCFlag
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCFlag=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCFlag=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCFlag 0
#
#
execute store success score @s libTemp run data get entity @s Item
# 播放声音：升压
execute if entity @s[scores={libTemp=1..},tag=!charging] run playsound library:synthesis.electric_buzz voice @a ~ ~ ~ 1.0
# 停止声音：升压
execute unless entity @s[scores={libTemp=1..},tag=!charging] run stopsound @a voice library:synthesis.electric_buzz
# 放电
execute if entity @s[tag=cancel,scores={libTemp=0}] run function library:entity/item_frame/method/redstone_block_synthesis/cancel
# 充能倒计时
scoreboard players remove @s[scores={libTemp=1..},tag=!charging] libTouhouCTime 1
# 清空
scoreboard players add @s[scores={libTouhouCTime=..-1,libTemp=0}] libTouhouCTime 1
## 冷却倒计时
scoreboard players add @s[scores={libTemp=1..},tag=charging] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=1..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=35..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=67..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=83..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=91..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=95..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=98..,libTemp=..0}] libTouhouCEscape 1
scoreboard players remove @s[scores={libTouhouCEscape=99..,libTemp=..0}] libTouhouCEscape 1
#
# 执行合成环
execute if entity @s[tag=crafting_ring] run function library:entity/item_frame/method/redstone_block_synthesis/recipe/crafting_ring
# 执行工厂环
execute if entity @s[tag=factory_ring] run function library:entity/item_frame/method/redstone_block_synthesis/recipe/factory_ring
# 给予进度：充能台
advancement grant @a[distance=..2,advancements={library:guide/redstone_block_synthesis=false}] only library:guide/redstone_block_synthesis
