# Copyright by BlueWhale. All Rights Reserved.
# 结束tp
tag @s remove library_tp_spy
# 播放声音：出间隙
execute if entity @s run playsound library:item.support_yukari_yakumo.out player @a ~ ~1 ~ 1.0
# 给予缓降
tag @s add slow_falling
