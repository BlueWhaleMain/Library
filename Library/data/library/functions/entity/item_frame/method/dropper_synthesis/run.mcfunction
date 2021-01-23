# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[scores={libTouhouCTime=0,libTouhouCEscape=0},tag=x] run function library:entity/item_frame/method/dropper_synthesis/run/entry
# 合成准备
## 冷却
execute if entity @s[scores={libTouhouCEscape=1..}] run particle minecraft:firework ~ ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 0,0
execute if entity @s[scores={libTouhouCEscape=2..}] run particle minecraft:firework ~-1 ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 -1,-1
execute if entity @s[scores={libTouhouCEscape=3..}] run particle minecraft:firework ~ ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 0,-1
execute if entity @s[scores={libTouhouCEscape=4..}] run particle minecraft:firework ~1 ~1.5 ~-1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 1,-1
execute if entity @s[scores={libTouhouCEscape=5..}] run particle minecraft:firework ~-1 ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 -1,0
execute if entity @s[scores={libTouhouCEscape=6..}] run particle minecraft:firework ~1 ~1.5 ~ 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 1,0
execute if entity @s[scores={libTouhouCEscape=7..}] run particle minecraft:firework ~-1 ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 -1,1
execute if entity @s[scores={libTouhouCEscape=8..}] run particle minecraft:firework ~ ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 0,1
execute if entity @s[scores={libTouhouCEscape=9..}] run particle minecraft:firework ~1 ~1.5 ~1 0.1 0.1 0.1 0.1 1
# 生成粒子：烟花 1,1
execute if entity @s[scores={libTouhouCEscape=10..}] run particle minecraft:firework ~1 ~2.5 ~1 0.2 0.2 0.2 0.1 10
# 生成粒子：烟花 0,0 大
#
