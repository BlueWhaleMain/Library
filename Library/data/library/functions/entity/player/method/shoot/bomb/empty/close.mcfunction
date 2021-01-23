# (c) Copyright by BlueWhale. All Rights Reserved.
tag @s remove is_already_bomb_empty
tag @s remove is_already_bomb
tag @s remove is_already_bomb_last
# 移除正在释放Bomb标签
scoreboard players reset @s libTouhouCFlag
# 结束符卡
playsound library:item.bomb.in_out player @a ~ ~1 ~ 1.0
# 播放声音：bomb使用
tag @e[type=minecraft:small_fireball,tag=player,tag=hold] remove hold
# 消除
tag @s add slow_falling
# 给予缓降
