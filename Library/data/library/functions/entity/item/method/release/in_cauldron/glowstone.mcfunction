# Copyright by BlueWhale. All Rights Reserved.
# 生成萤石
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:glowstone"},Motion:[0.0d,0.5d,0.0d],Time:1}
playsound minecraft:block.glass.place voice @a ~ ~ ~ 1.0
# 清除自身
kill
