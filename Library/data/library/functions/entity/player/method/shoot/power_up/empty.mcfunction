# (c) Copyright by BlueWhale. All Rights Reserved.
clear @s minecraft:redstone{id:"library:power_orb"} 1
# 扣除1P点
loot give @s loot library:items/yin_yang_yu
# 给予空阴阳玉
playsound library:item.power_orb.use player @a ~ ~1 ~ 1.0
# 播放声音：阴阳玉扩充
