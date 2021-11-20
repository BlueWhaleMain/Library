# Copyright by BlueWhale. All Rights Reserved.
# 销售煤块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/coal_block/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/coal_block/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/coal_block/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 销售铜块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/copper_block/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/copper_block/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/copper_block/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 销售铁块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/iron_block/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/iron_block/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/iron_block/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 销售金块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/gold_block/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/gold_block/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/gold_block/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 销售青金石块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/lapis_block/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/lapis_block/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/lapis_block/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 销售红石块
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/redstone_block/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/redstone_block/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/sell/redstone_block/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]
