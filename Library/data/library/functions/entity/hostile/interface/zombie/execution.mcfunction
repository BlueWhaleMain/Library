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
# 随从会消亡
execute if entity @s[tag=summon] run function library:entity/hostile/method/zombie/summon
# 吃腐肉
execute store result score @s[nbt={HandItems:[{id:"minecraft:rotten_flesh"}]}] libTemp run data get entity @s HandItems[0].Count
execute if score @s libTemp matches 1.. run function library:entity/hostile/method/eat_rotten_flesh
# 小僵尸拿真刀
effect give @s[nbt={IsBaby:1b,HandItems:[{tag:{id:"library:true_knife"}}]}] minecraft:strength 1 20 false
