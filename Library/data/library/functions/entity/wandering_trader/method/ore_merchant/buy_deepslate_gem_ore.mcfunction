# Copyright by BlueWhale. All Rights Reserved.
# 收购深层钻石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_diamond_ore/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_diamond_ore/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_diamond_ore/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 收购深层绿宝石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_emerald_ore/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_emerald_ore/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_emerald_ore/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]
