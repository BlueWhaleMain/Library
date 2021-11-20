# Copyright by BlueWhale. All Rights Reserved.
# 人类事件
execute at @s[tag=human] run function library:entity/wandering_trader/interface/human/execution
# 生成事件
execute at @s[tag=!spawned,nbt={PersistenceRequired:0b}] run function library:entity/wandering_trader/interface/all/spawn
