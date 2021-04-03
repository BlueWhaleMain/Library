# (c) Copyright by BlueWhale. All Rights Reserved.
execute as @e[type=#library:hostile] run function library:entity/hostile/interface/all/execution
# 随机选择敌对生物
execute as @e[type=#library:hostile,tag=!selected,sort=random,limit=1] run function library:entity/hostile/interface/random/execution
schedule function library:entity/hostile/main/1s 1s
