# Copyright by BlueWhale. All Rights Reserved.
playsound library:player.dead.miss player @a ~ ~1 ~ 1.0
# 播放音效：玩家miss
execute as @e[distance=..32,tag=library_shoot,tag=hostile] run kill
# 全屏消除敌弹
effect give @e[distance=..32,type=#library:living/hostile] minecraft:instant_damage 1 10 true
# 给予敌对生物瞬间伤害
effect give @e[distance=..32,type=#library:undead/hostile] minecraft:instant_health 1 10 true
# 给予敌对亡灵生物瞬间治疗
