# (c) Copyright by BlueWhale. All Rights Reserved.
say loading entity...
##执行
scoreboard players set #LibEntity libScoreCheck 0
execute if score #LibEntity libTemp matches 0.. run scoreboard players set #LibEntity libScoreCheck 1
execute if score #LibEntity libTemp matches ..-1 run scoreboard players set #LibEntity libScoreCheck 1
execute if score #LibEntity libScoreCheck matches 0 run function library:entity/main/init
execute unless score #LibEntity libTemp matches 9 run function library:entity/main/init
#
