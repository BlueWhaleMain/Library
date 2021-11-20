# Copyright by BlueWhale. All Rights Reserved.
# 收购深层煤矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_coal_ore/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_coal_ore/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_coal_ore/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 收购深层铜矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_copper_ore/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_copper_ore/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_copper_ore/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 收购深层铁矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_iron_ore/use
data modify entity @s Offers.Recipes[2].maxUsesg set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_iron_ore/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_iron_ore/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 收购深层金矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_gold_ore/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_gold_ore/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_gold_ore/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 收购深层青金石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_lapis_ore/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_lapis_ore/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_lapis_ore/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 收购深层红石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_redstone_ore/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_redstone_ore/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/deepslate_redstone_ore/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]
