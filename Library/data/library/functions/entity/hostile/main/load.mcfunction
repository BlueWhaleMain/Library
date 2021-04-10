# Copyright by BlueWhale. All Rights Reserved.
say loading hostile...
##执行
scoreboard players set #LibEntityHostile libScoreCheck 0
execute if score #LibEntityHostile libTemp matches 0.. run scoreboard players set #LibEntityHostile libScoreCheck 1
execute if score #LibEntityHostile libTemp matches ..-1 run scoreboard players set #LibEntityHostile libScoreCheck 1
execute if score #LibEntityHostile libScoreCheck matches 0 run function library:entity/hostile/main/init
execute unless score #LibEntityHostile libTemp matches 1 run function library:entity/hostile/main/init
#
