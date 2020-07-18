#(c) Copyright by BlueWhale. All Rights Reserved.
say loading item_frame...
##执行
scoreboard players set #LibEntityItemFrame libScoreCheck 0
execute if score #LibEntityItemFrame libTemp matches 0.. run scoreboard players set #LibEntityItemFrame libScoreCheck 1
execute if score #LibEntityItemFrame libTemp matches ..-1 run scoreboard players set #LibEntityItemFrame libScoreCheck 1
execute if score #LibEntityItemFrame libScoreCheck matches 0 run function library:entity/item_frame/main/init
execute unless score #LibEntityItemFrame libTemp matches 1 run function library:entity/item_frame/main/init
#