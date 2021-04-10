# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={SelectedItem:{tag:{"model":"empty"}}}] run function library:entity/player/method/shoot/no_card
# 空
execute if entity @s[nbt={SelectedItem:{tag:{"model":"line"}}}] run function library:entity/player/method/shoot/model/small_jade/line
# 直线形
execute if entity @s[nbt={SelectedItem:{tag:{"model":"circular"}}}] run function library:entity/player/method/shoot/model/small_jade/circular
# 圆形
execute if entity @s[nbt={SelectedItem:{tag:{"model":"spherical"}}}] run function library:entity/player/method/shoot/model/small_jade/spherical
# 球形
