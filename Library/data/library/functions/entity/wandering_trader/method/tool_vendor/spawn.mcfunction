# Copyright by BlueWhale. All Rights Reserved.
# 收购煤炭
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/coal/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/coal/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/coal/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 收购粗金
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 收购粗铁
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 销售铁质工具
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 销售铁质工具
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 销售铁质工具
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/sell/iron_tools/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]

# 10%几率进货
execute if predicate library:random/10 run function library:entity/wandering_trader/method/tool_vendor/buy

loot replace entity @s weapon.mainhand 1 loot minecraft:empty

data merge entity @s {CustomName:'{"translate":"entity.library.tool_vendor"}',CustomNameVisible:1b}

# 最大生命值50
attribute @s minecraft:generic.max_health base set 50
data modify entity @s Health set value 50f
