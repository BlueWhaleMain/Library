# Copyright by BlueWhale. All Rights Reserved.
tag @s remove is_already_bomb
tag @s remove is_already_bomb_yukari_yakumo
# 移除正在释放Bomb标签
scoreboard players reset @s libTouhouCFlag
# 结束符卡
playsound library:item.bomb.in_out player @a ~ ~ ~ 1.0
# 播放声音：bomb使用
execute as @e[distance=..32,tag=library_shoot,tag=hostile] at @s run function library:entity/player/method/shoot/bomb/clear
# 消除敌弹变成经验
tp @e[distance=..32,type=#library:trophy] @s
# 回收道具
effect give @e[distance=..32,type=#library:living/hostile] minecraft:instant_damage 1 3 true
# 给予敌对生物瞬间伤害
effect give @e[distance=..32,type=#library:undead/hostile] minecraft:instant_health 1 3 true
# 给予敌对亡灵生物瞬间治疗
