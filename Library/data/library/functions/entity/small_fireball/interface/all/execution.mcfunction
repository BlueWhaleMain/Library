#(c) Copyright by BlueWhale. All Rights Reserved.
execute at @s[tag=library_shoot] unless entity @p[distance=..64,advancements={library:touhou/root=true}] run kill
#周围32格没有东方玩家时清除自身