# (c) Copyright by BlueWhale. All Rights Reserved.
say loading item...
##执行
scoreboard players set #LibEntityItem libScoreCheck 0
execute if score #LibEntityItem libTemp matches 0.. run scoreboard players set #LibEntityItem libScoreCheck 1
execute if score #LibEntityItem libTemp matches ..-1 run scoreboard players set #LibEntityItem libScoreCheck 1
execute if score #LibEntityItem libScoreCheck matches 0 run function library:entity/item/main/init
execute unless score #LibEntityItem libTemp matches 2 run function library:entity/item/main/init
#
