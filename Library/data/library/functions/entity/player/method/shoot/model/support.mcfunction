#(c) Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run data get entity @s Inventory[{Slot:-106b}].Count
#获取阴阳玉的个数
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"empty"}}],SelectedItem:{tag:{"model":"empty"}}}] run function library:entity/player/method/shoot/no_card
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"empty"}}],SelectedItem:{tag:{"bullet_item":"bill"}}}] run function library:entity/player/method/shoot/model/bill/support_check
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"empty"}}],SelectedItem:{tag:{"bullet_item":"small_jade"}}}] run function library:entity/player/method/shoot/model/small_jade/support_check
#空阴阳玉
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{"mode":"support_yukari_yakumo"}}]}] run function library:entity/player/method/shoot/model/summit_purple_needle/support_check
#八云紫支援（前方集中型）
advancement grant @s[advancements={library:touhou/yin_yang_yu=false}] only library:touhou/yin_yang_yu
#给予进度：Power!