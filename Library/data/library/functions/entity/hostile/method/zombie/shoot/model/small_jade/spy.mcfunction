# Copyright by BlueWhale. All Rights Reserved.
effect clear @s minecraft:speed
effect give @s minecraft:slowness 1 2 true
# 给予缓慢避免误伤
summon minecraft:small_fireball ^0.4 ^-0.1 ^0.3 {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","target_player","hostile"]}
# 召唤火球
playsound library:item.chain.shoot hostile @a ^0.4 ^-0.1 ^0.3 1.0
# 播放声音：连续射击
summon minecraft:small_fireball ^-0.4 ^-0.1 ^0.3 {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","target_player","hostile"]}
# 召唤火球
playsound library:item.chain.shoot hostile @a ^-0.4 ^-0.1 ^0.3 1.0
# 播放声音：连续射击
