# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"empty"}}]}] run function library:entity/player/method/shoot/power_up/empty
# 空阴阳玉
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"support_yukari_yakumo"}}]}] run function library:entity/player/method/shoot/power_up/support_yukari_yakumo
# 八云紫支援阴阳玉
execute store result score @s libTemp run data get entity @s Inventory[{Slot:-106b}].Count
# 获取阴阳玉的个数
execute if entity @s[scores={libTemp=4}] run function library:entity/player/method/shoot/full_power
# Full Power Mode
