# Copyright by BlueWhale. All Rights Reserved.
# 收购煤炭
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/coal/use
data modify entity @s Offers.Recipes[0].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/coal/buy
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/coal/sell
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[0]

# 收购粗铜
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_copper/use
data modify entity @s Offers.Recipes[1].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_copper/buy
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_copper/sell
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[0]

# 收购粗铁
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_iron/use
data modify entity @s Offers.Recipes[2].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_iron/buy
data modify entity @s Offers.Recipes[2].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_iron/sell
data modify entity @s Offers.Recipes[2].sell set from entity @s HandItems[0]

# 收购粗金
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_gold/use
data modify entity @s Offers.Recipes[3].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_gold/buy
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/raw_gold/sell
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[0]

# 收购钻石
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/diamond/use
data modify entity @s Offers.Recipes[4].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/diamond/buy
data modify entity @s Offers.Recipes[4].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/diamond/sell
data modify entity @s Offers.Recipes[4].sell set from entity @s HandItems[0]

# 收购绿宝石
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/emerald/use
data modify entity @s Offers.Recipes[5].maxUses set from entity @s HandItems[0].Count
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/emerald/buy
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
loot replace entity @s weapon.mainhand 1 loot library:trade/weapon_merchant/buy/emerald/sell
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[0]

# 50%几率卖货
execute if predicate library:random/50 run function library:entity/wandering_trader/method/weapon_merchant/sell

loot replace entity @s weapon.mainhand 1 loot minecraft:empty

data merge entity @s {CustomName:'{"translate":"entity.library.weapon_merchant"}',CustomNameVisible:1b}

# 最大生命值100
attribute @s minecraft:generic.max_health base set 100
data modify entity @s Health set value 100f
## 装备盔甲
loot replace entity @s armor.head 1 loot library:spawn/armor/head/weapon_merchant
loot replace entity @s armor.chest 1 loot library:spawn/armor/chest/weapon_merchant
loot replace entity @s armor.legs 1 loot library:spawn/armor/legs/weapon_merchant
loot replace entity @s armor.feet 1 loot library:spawn/armor/feet/weapon_merchant
#
