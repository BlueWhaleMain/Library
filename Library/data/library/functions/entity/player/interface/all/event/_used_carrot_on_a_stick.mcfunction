# (c) Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:examination_device"}}}] run function library:entity/player/method/examination_device/use
# 使用体检器
execute at @s[nbt={SelectedItem:{tag:{id:"library:controller"}}}] run function library:entity/player/method/controller/use
# 使用节制器
execute at @s[nbt={SelectedItem:{tag:{id:"library:teleport"}}}] run function library:entity/player/method/admin/teleport
# 近场传送
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:teleport"}}]}] run function library:entity/player/method/admin/teleport
# 副手也能工作
execute at @s[nbt={SelectedItem:{tag:{id:"library:levitation"}}}] run playsound library:item.levitation player @a ~ ~1 ~ 1.0
# 音效
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:levitation"}}]}] run playsound library:item.levitation player @a ~ ~1 ~ 1.0
# 副手也能工作
