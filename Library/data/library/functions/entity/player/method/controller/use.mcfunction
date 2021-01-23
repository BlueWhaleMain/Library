# Copyright by BlueWhale. All Rights Reserved.
tag @s[nbt={SelectedItem:{tag:{Switch:0b}}}] add on
# 执行检查
loot replace entity @s[tag=on] weapon.mainhand 1 loot library:items/controller/on
# 开启节制器
loot replace entity @s[nbt={SelectedItem:{tag:{Switch:1b}}},tag=!on] weapon.mainhand 1 loot library:items/controller/off
# 关闭节制器
tag @s[tag=on] remove on
# 清除状态
playsound minecraft:ui.button.click voice @s ~ ~ ~ 1.0
# 播放音效：按钮点击
