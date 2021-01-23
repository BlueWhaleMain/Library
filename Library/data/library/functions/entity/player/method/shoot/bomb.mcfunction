# Copyright by BlueWhale. All Rights Reserved.
execute at @s[nbt={SelectedItem:{tag:{"mode":"empty"}}},tag=!not_allowed_touhou] anchored eyes run function library:entity/player/method/shoot/bomb/empty
# 非符Bomb
execute if entity @s[nbt={SelectedItem:{tag:{"mode":"empty"}}},tag=not_allowed_touhou] run function library:entity/player/method/shoot/not_allowed
# 禁用
execute at @s[nbt={SelectedItem:{tag:{"mode":"support_yukari_yakumo"}}}] anchored eyes run function library:entity/player/method/shoot/bomb/support_yukari_yakumo
# 「违背常识的另一侧」
advancement grant @s[advancements={library:touhou/bomb=false}] only library:touhou/bomb
# 给予进度：Bomb!
