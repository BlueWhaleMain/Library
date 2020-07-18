#Copyright by BlueWhale. All Rights Reserved.
data modify storage library:trim_inventory Items set from entity @s Inventory
# 复制背包
data modify storage library:trim_inventory Items[{Slot:27b}].Slot set value 0b
data modify storage library:trim_inventory Items[{Slot:28b}].Slot set value 1b
data modify storage library:trim_inventory Items[{Slot:29b}].Slot set value 2b
data modify storage library:trim_inventory Items[{Slot:30b}].Slot set value 3b
data modify storage library:trim_inventory Items[{Slot:31b}].Slot set value 4b
data modify storage library:trim_inventory Items[{Slot:32b}].Slot set value 5b
data modify storage library:trim_inventory Items[{Slot:33b}].Slot set value 6b
data modify storage library:trim_inventory Items[{Slot:34b}].Slot set value 7b
data modify storage library:trim_inventory Items[{Slot:35b}].Slot set value 8b
# 忽略快捷栏
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from storage library:trim_inventory Items
setblock ~ 254 ~ shulker_box
loot insert ~ 254 ~ mine ~ 255 ~ minecraft:iron_pickaxe{isShulkerMarker:1b}
loot replace entity @s inventory.0 27 mine ~ 254 ~ minecraft:iron_pickaxe{isShulkerMarker:1b}
# 使用潜影盒整理物品（依赖Minecraft命名空间的潜影盒战利品表）
fill ~ 255 ~ ~ 254 ~ minecraft:air
data merge storage library:trim_inventory {}
# 清理
playsound minecraft:ui.button.click voice @s ~ ~ ~ 1.0
# 播放音效：按钮点击
function library:entity/player/method/message/init
# 初始化标题
title @s actionbar {"translate":"system.library.sort_inventory"}
# 显示内容：背包已整理