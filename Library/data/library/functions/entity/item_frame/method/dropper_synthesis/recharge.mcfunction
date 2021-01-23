# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[scores={libTouhouCTime=0,libTouhouCEscape=0},tag=!x] run function library:entity/item_frame/method/dropper_synthesis/recharge/entry
# 充能准备
## 充能
execute if entity @s[scores={libTouhouCTime=1..}] run particle minecraft:enchant ~ ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 0,0
execute if entity @s[scores={libTouhouCTime=2..}] run particle minecraft:enchant ~-1 ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 -1,-1
execute if entity @s[scores={libTouhouCTime=3..}] run particle minecraft:enchant ~ ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 0,-1
execute if entity @s[scores={libTouhouCTime=4..}] run particle minecraft:enchant ~1 ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 1,-1
execute if entity @s[scores={libTouhouCTime=5..}] run particle minecraft:enchant ~-1 ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 -1,0
execute if entity @s[scores={libTouhouCTime=6..}] run particle minecraft:enchant ~1 ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 1,0
execute if entity @s[scores={libTouhouCTime=7..}] run particle minecraft:enchant ~-1 ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 -1,1
execute if entity @s[scores={libTouhouCTime=8..}] run particle minecraft:enchant ~ ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 0,1
execute if entity @s[scores={libTouhouCTime=9..}] run particle minecraft:enchant ~1 ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：附魔 1,1
execute if entity @s[scores={libTouhouCTime=10..}] run particle minecraft:enchant ~1 ~2.5 ~1 0.2 0.2 0.2 0.2 10
# 生成粒子：附魔 0,0 大
#
