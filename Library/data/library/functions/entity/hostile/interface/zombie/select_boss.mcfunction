# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set #Success libTemp 0
execute if predicate library:random/10 run scoreboard players set #Success libTemp 1
# 下雨额外抽取一次
execute if score #Success libTemp matches 0 if predicate library:weather/raining if predicate library:random/10 run scoreboard players set #Success libTemp 1
# 雷暴额外抽取一次
execute if score #Success libTemp matches 0 if predicate library:weather/thundering if predicate library:random/10 run scoreboard players set #Success libTemp 1
execute if score #Success libTemp matches 1 run function library:entity/hostile/method/zombie/select_boss
# 禁用重新选择
tag @s add selected
