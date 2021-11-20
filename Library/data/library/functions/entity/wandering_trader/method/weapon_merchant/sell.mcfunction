# Copyright by BlueWhale. All Rights Reserved.
# 销售箭
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/arrow/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/arrow/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/arrow/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 销售弓
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/bow/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/bow/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/bow/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 销售锁链盔甲
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/chain_armor/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/chain_armor/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/chain_armor/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 销售弩
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/crossbow/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/crossbow/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/crossbow/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 销售铁质盔甲
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_armor/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_armor/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_armor/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 销售铁质武器
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_weapon/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_weapon/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/sell/iron_weapon/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]
