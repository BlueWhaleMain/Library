# Copyright by BlueWhale. All Rights Reserved.
## 生成武器
# 主手
loot replace entity @s weapon.mainhand 1 loot library:spawn/weapon/mainhand/skeleton
# 副手
execute if predicate library:random/50 run loot replace entity @s weapon.offhand 1 loot library:spawn/weapon/offhand/zombie
#
