#Copyright by BlueWhale. All Rights Reserved.
execute at @s[nbt=!{SelectedItem:{tag:{model:empty}}},tag=!not_allowed_touhou] if entity @s[nbt={SelectedItem:{tag:{Damage:0}}}] anchored eyes run function library:entity/player/method/shoot/model/check
# 不为空
execute if entity @s[nbt={SelectedItem:{tag:{model:empty}}}] run function library:entity/player/method/shoot/no_card
# 为空
advancement grant @s[advancements={library:touhou/scrap=false},nbt=!{SelectedItem:{tag:{Damage:0}}}] only library:touhou/scrap
# 这个御币失去了信仰
advancement grant @s[advancements={library:touhou/mending=false},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:mending"}]}}}] only library:touhou/mending
# 信仰收集
execute if entity @s[tag=not_allowed_touhou] run function library:entity/player/method/shoot/not_allowed
# 禁用