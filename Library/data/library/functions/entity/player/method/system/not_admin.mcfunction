#Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/message/init
# 初始化标题
title @s actionbar {"translate":"system.library.not_admin"}
# 显示内容：你没有权限拥有此物品！
execute if entity @s[tag=confession] run say I am not an administrator!
loot replace entity @s[nbt={SelectedItem:{tag:{permission:"admin"}}}] weapon.mainhand 1 loot library:empty
loot replace entity @s[nbt={Inventory:[{Slot:-106b,tag:{permission:"admin"}}]}] weapon.offhand 1 loot library:empty
loot replace entity @s[nbt={Inventory:[{Slot:103b,tag:{permission:"admin"}}]}] armor.head 1 loot library:empty
loot replace entity @s[nbt={Inventory:[{Slot:102b,tag:{permission:"admin"}}]}] armor.chest 1 loot library:empty
loot replace entity @s[nbt={Inventory:[{Slot:101b,tag:{permission:"admin"}}]}] armor.legs 1 loot library:empty
loot replace entity @s[nbt={Inventory:[{Slot:100b,tag:{permission:"admin"}}]}] armor.feet 1 loot library:empty
# 清理