# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libraryRandomMax 100
scoreboard players set @s libraryRandomMin 0
function library:method/math/random
## 强制生成
execute if entity @s[tag=!selected,tag=jeweler_spawn] run function library:entity/wandering_trader/interface/jeweler/spawn
execute if entity @s[tag=!selected,tag=ore_merchant_spawn] run function library:entity/wandering_trader/interface/ore_merchant/spawn
execute if entity @s[tag=!selected,tag=tool_vendor_spawn] run function library:entity/wandering_trader/interface/tool_vendor/spawn
execute if entity @s[tag=!selected,tag=weapon_merchant_spawn] run function library:entity/wandering_trader/interface/weapon_merchant/spawn
#
# 珠宝商
execute if score @s[tag=!selected] libraryRandom matches 1..20 run function library:entity/wandering_trader/interface/jeweler/spawn
# 矿石商
execute if score @s[tag=!selected] libraryRandom matches 21..30 run function library:entity/wandering_trader/interface/ore_merchant/spawn
# 工具商
execute if score @s[tag=!selected] libraryRandom matches 31..40 run function library:entity/wandering_trader/interface/tool_vendor/spawn
# 武器商
execute if score @s[tag=!selected] libraryRandom matches 41..50 run function library:entity/wandering_trader/interface/weapon_merchant/spawn

scoreboard players reset @s libraryRandomMax
scoreboard players reset @s libraryRandomMin
scoreboard players reset @s libraryRandom
tag @s add spawned
