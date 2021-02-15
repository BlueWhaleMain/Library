# Copyright by BlueWhale. All Rights Reserved.
# 附近有村民即尝试发狂（并不能轻易攻击到的目标）
execute if entity @e[distance=16..40,type=villager] run function library:entity/hostile/method/zombie/go_crazy
# 狂暴
execute if entity @s[tag=crazy] run function library:entity/hostile/method/zombie/crazy
# 喷射
execute if entity @s[tag=spitter] if entity @p[distance=..32,gamemode=survival] run function library:entity/hostile/method/zombie/spit
# 冲刺
execute if entity @s[tag=sprinter] if entity @p[distance=..40,gamemode=survival] run function library:entity/hostile/method/zombie/sprint
# 跳跃
execute if entity @s[tag=jumper] if entity @p[distance=..32,gamemode=survival] run function library:entity/hostile/method/zombie/jump
# 召唤物
data merge entity @s[tag=summon] {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b}
# 不会中毒
effect clear @s minecraft:poison
