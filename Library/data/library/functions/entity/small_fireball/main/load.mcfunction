# Copyright by BlueWhale. All Rights Reserved.
say loading small_fireball...
##执行
scoreboard players set #LibEntitySmallFireball libScoreCheck 0
execute if score #LibEntitySmallFireball libTemp matches 0.. run scoreboard players set #LibEntitySmallFireball libScoreCheck 1
execute if score #LibEntitySmallFireball libTemp matches ..-1 run scoreboard players set #LibEntitySmallFireball libScoreCheck 1
execute if score #LibEntitySmallFireball libScoreCheck matches 0 run function library:entity/small_fireball/main/init
execute unless score #LibEntitySmallFireball libTemp matches 2 run function library:entity/small_fireball/main/init
#
