# Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/state/invincible
# 无敌（取消除擦弹以外的判定）
effect give @s minecraft:invisibility 2 0 true
# 给予隐身
effect give @s minecraft:glowing 2 0 true
# 给予发光
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0 100
# 生成粒子：附魔攻击
execute if entity @s[tag=is_already_bomb_last] as @e[distance=..32,tag=library_shoot,tag=hostile] at @s run function library:entity/player/method/shoot/bomb/clear
# 消除敌弹变成经验（决死）
tp @e[distance=..32,type=#library:trophy] @s
# 回收道具
effect give @e[distance=..32,type=#library:living/hostile] minecraft:instant_damage 1 0 true
# 给予敌对生物瞬间伤害
effect give @e[distance=..32,type=#library:undead/hostile] minecraft:instant_health 1 0 true
# 给予敌对亡灵生物瞬间治疗
