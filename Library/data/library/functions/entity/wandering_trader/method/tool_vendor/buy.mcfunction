# Copyright by BlueWhale. All Rights Reserved.
# 收购粗金
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_gold/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 收购粗铁
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/tool_vendor/buy/raw_iron/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]
