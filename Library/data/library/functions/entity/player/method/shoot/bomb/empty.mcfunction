#(c) Copyright by BlueWhale. All Rights Reserved.
clear @s[gamemode=survival] minecraft:quartz{id:"library:yin_yang_yu","mode":"empty"} 1
#清除阴阳玉
execute if score @s libraryHealth <= #LibDifficulty libTemp run tag @s add is_already_bomb_last
#决死Bomb
effect give @s minecraft:instant_health 1 200 true
#满血处理
tag @s add is_already_bomb_empty
tag @s add is_already_bomb
#添加正在释放Bomb标签
scoreboard players set @s libTouhouCFlag 1
#初始化符卡
scoreboard players set @s libTouhouCEscape 20
#初始化符卡延时
playsound library:item.bomb.in_out player @a ~ ~1 ~ 1.0
#播放声音：bomb使用
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 100
#生成粒子：烟
effect give @s minecraft:levitation 1 20 true
#高跳浮空（大约18个方块）