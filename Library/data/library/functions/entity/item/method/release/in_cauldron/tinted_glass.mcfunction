# Copyright by BlueWhale. All Rights Reserved.
# 清除紫水晶碎片
kill @e[distance=..1,nbt={Item:{id:"minecraft:amethyst_shard",Count:4b}},type=minecraft:item,limit=1]
# 生成遮光玻璃
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:tinted_glass"},Motion:[0.0d,0.5d,0.0d],Time:1}
# 播放音效：玻璃放置
playsound minecraft:block.glass.place voice @a ~ ~ ~ 1.0
# 清除自身
kill
