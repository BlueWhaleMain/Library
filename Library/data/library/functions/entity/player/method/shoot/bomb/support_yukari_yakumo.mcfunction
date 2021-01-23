# (c) Copyright by BlueWhale. All Rights Reserved.
clear @s[gamemode=survival] minecraft:quartz{id:"library:yin_yang_yu","mode":"support_yukari_yakumo"} 1
# 清除阴阳玉
execute if score @s libraryHealth <= #LibDifficulty libTemp run tag @s add is_already_bomb_last
# 决死Bomb
effect give @s minecraft:instant_health 1 200 true
# 满血处理
tag @s add is_already_bomb
tag @s add is_already_bomb_yukari_yakumo
# 添加正在释放Bomb标签
scoreboard players set @s libTouhouCFlag 1
# 初始化符卡
scoreboard players set @s libTouhouCEscape 0
# 初始化符卡延时
playsound library:item.bomb.in_out player @a ~ ~1 ~ 1.0
# 播放声音：bomb使用
tp @e[distance=..32,type=#library:trophy] @s
# 回收道具
effect give @e[distance=..32,type=#library:living/hostile] minecraft:instant_damage 1 1 true
# 给予敌对生物瞬间伤害
effect give @e[distance=..32,type=#library:undead/hostile] minecraft:instant_health 1 1 true
# 给予敌对亡灵生物瞬间治疗
playsound library:item.bomb.lay player @a ~ ~1 ~ 1.0
# 播放声音：bomb持续
