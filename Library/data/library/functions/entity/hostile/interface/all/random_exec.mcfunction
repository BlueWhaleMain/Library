#Copyright by BlueWhale. All Rights Reserved.
# 生成Boss
execute at @s[tag=!boss] if predicate library:random/10 run function library:entity/hostile/interface/all/spawn_boss
# 下雨额外抽取一次
execute at @s[tag=!boss] if predicate library:weather/raining if predicate library:random/10 run function library:entity/hostile/interface/all/spawn_boss
# 雷暴额外抽取一次
execute at @s[tag=!boss] if predicate library:weather/thundering if predicate library:random/10 run function library:entity/hostile/interface/all/spawn_boss
# 避免反复选择
tag @s add selected
