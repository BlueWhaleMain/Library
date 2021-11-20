# Copyright by BlueWhale. All Rights Reserved.
say loading wandering_trader...
##执行
scoreboard players set #LibEntityWanderingTrader libScoreCheck 0
execute if score #LibEntityWanderingTrader libTemp matches 0.. run scoreboard players set #LibEntityWanderingTrader libScoreCheck 1
execute if score #LibEntityWanderingTrader libTemp matches ..-1 run scoreboard players set #LibEntityWanderingTrader libScoreCheck 1
execute if score #LibEntityWanderingTrader libScoreCheck matches 0 run function library:entity/wandering_trader/main/init
execute unless score #LibEntityWanderingTrader libTemp matches 1 run function library:entity/wandering_trader/main/init
#
