# (c) Copyright by BlueWhale. All Rights Reserved.
say loading player...
##执行
scoreboard players set #LibEntityPlayer libScoreCheck 0
execute if score #LibEntityPlayer libTemp matches 0.. run scoreboard players set #LibEntityPlayer libScoreCheck 1
execute if score #LibEntityPlayer libTemp matches ..-1 run scoreboard players set #LibEntityPlayer libScoreCheck 1
execute if score #LibEntityPlayer libScoreCheck matches 0 run function library:entity/player/main/init
execute unless score #LibEntityPlayer libTemp matches 3 run function library:entity/player/main/init
#
