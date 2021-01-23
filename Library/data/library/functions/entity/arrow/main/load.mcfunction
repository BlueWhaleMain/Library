# (c) Copyright by BlueWhale. All Rights Reserved.
say loading arrow...
##执行
scoreboard players set #LibEntityArrow libScoreCheck 0
execute if score #LibEntityArrow libTemp matches 0.. run scoreboard players set #LibEntityArrow libScoreCheck 1
execute if score #LibEntityArrow libTemp matches ..-1 run scoreboard players set #LibEntityArrow libScoreCheck 1
execute if score #LibEntityArrow libScoreCheck matches 0 run function library:entity/arrow/main/init
execute unless score #LibEntityArrow libTemp matches 2 run function library:entity/arrow/main/init
#
