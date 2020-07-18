#Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[tag=library_shoot] run function library:entity/small_fireball/interface/library_shoot/check
#这是弹幕
execute at @s unless entity @p[distance=..32] run kill
#周围32格没有玩家时清除自身（原版优化）