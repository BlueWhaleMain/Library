# 生成粘液块
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:clay"},Motion:[0.0d,0.5d,0.0d],Time:1}
# 播放音效
playsound minecraft:block.gravel.place voice @a ~ ~ ~ 1.0
# 清除自身
kill
