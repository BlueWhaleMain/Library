# Copyright by BlueWhale. All Rights Reserved.
# 收购煤炭块
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/coal_block/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/coal_block/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/coal_block/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 收购金矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/gold_ore/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/gold_ore/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/gold_ore/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 收购深层金矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/deepslate_gold_ore/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/deepslate_gold_ore/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/deepslate_gold_ore/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 收购绿宝石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/emerald_ore/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/emerald_ore/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/buy/emerald_ore/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 销售金锭
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/gold_ingot/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/gold_ingot/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/gold_ingot/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 销售绿宝石
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/emerald/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/emerald/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/jeweler/sell/emerald/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]

# 50%几率销售钻石
execute if predicate library:random/50 run function library:entity/wandering_trader/method/jeweler/sell_diamond

loot replace entity @s weapon.mainhand 1 loot minecraft:empty

data merge entity @s {CustomName:'{"translate":"entity.library.jeweler"}',CustomNameVisible:1b}

# 最大生命值80
attribute @s minecraft:generic.max_health base set 80
data modify entity @s Health set value 80f
