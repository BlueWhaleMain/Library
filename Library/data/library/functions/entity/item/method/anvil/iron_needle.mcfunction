#Copyright by BlueWhale. All Rights Reserved.
particle minecraft:smoke ~ ~ ~ 0.5 0.1 0.5 0 50
#生成粒子：烟
loot spawn ~ ~ ~ loot library:items/iron_needle
#生成针
playsound minecraft:block.anvil.use voice @a ~ ~ ~ 1.0
#播放音效：铁砧使用
kill
#清除自身