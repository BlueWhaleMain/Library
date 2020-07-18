#Copyright by BlueWhale. All Rights Reserved.
function library:entity/item/method/water_damage
playsound minecraft:block.fire.extinguish voice @a ~ ~ ~ 1.0
# 播放音效：火熄灭
particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0 2
#烟