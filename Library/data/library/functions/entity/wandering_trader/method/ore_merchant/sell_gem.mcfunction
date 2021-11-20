# Copyright by BlueWhale. All Rights Reserved.
# 销售钻石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/diamond/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/diamond/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/diamond/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 销售绿宝石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/emerald/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/emerald/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/emerald/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]
