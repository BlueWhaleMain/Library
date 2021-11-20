# Copyright by BlueWhale. All Rights Reserved.
# 收购煤矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/coal_ore/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/coal_ore/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/coal_ore/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 收购铜矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/copper_ore/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/copper_ore/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/copper_ore/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 收购铁矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/iron_ore/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/iron_ore/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/iron_ore/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 收购金矿石
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/gold_ore/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/gold_ore/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/gold_ore/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 收购青金石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/lapis_ore/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/lapis_ore/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/lapis_ore/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 收购红石矿
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/redstone_ore/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/redstone_ore/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/ore_merchant/buy/redstone_ore/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]

# 50%几率售卖矿物/金属块
execute if predicate library:random/30 run function library:entity/wandering_trader/method/ore_merchant/sell_block
# 50%几率售卖宝石
execute if predicate library:random/30 run function library:entity/wandering_trader/method/ore_merchant/sell_gem
# 30%几率收购宝石矿
execute if predicate library:random/30 run function library:entity/wandering_trader/method/ore_merchant/buy_gem_ore
# 10%几率收购深层矿石
execute if predicate library:random/10 run function library:entity/wandering_trader/method/ore_merchant/buy_deepslate_ore
# 10%几率收购深层宝石矿
execute if predicate library:random/10 run function library:entity/wandering_trader/method/ore_merchant/buy_deepslate_gem_ore

loot replace entity @s weapon.mainhand 1 loot minecraft:empty

data merge entity @s {CustomName:'{"translate":"entity.library.ore_merchant"}',CustomNameVisible:1b}

# 最大生命值40
attribute @s minecraft:generic.max_health base set 40
data modify entity @s Health set value 40f
