# (c) Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={SelectedItem:{tag:{"model":"empty"}}}] run function library:entity/player/method/shoot/no_card
# 空
execute if entity @s[nbt={SelectedItem:{tag:{"model":"line"}}}] run function library:entity/player/method/shoot/model/bill/line
# 直线形
execute if entity @s[nbt={SelectedItem:{tag:{"model":"circular"}}}] run function library:entity/player/method/shoot/model/bill/circular
# 圆形
execute if entity @s[nbt={SelectedItem:{tag:{"model":"spherical"}}}] run function library:entity/player/method/shoot/model/bill/spherical
# 球形
