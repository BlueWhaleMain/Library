# (c) Copyright by BlueWhale. All Rights Reserved.
tag @s[nbt={OnGround:true}] remove library_tp_spy
# 结束tp
execute if entity @s[tag=!library_tp_spy] run playsound library:item.support_yukari_yakumo.out player @a ~ ~1 ~ 1.0
# 播放声音：出间隙
tag @s[nbt={OnGround:false}] add slow_falling
# 给予缓降
