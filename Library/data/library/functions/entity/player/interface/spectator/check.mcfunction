# Copyright by BlueWhale. All Rights Reserved.
## 传送保护
execute at @s[tag=teleport] run function library:entity/player/method/admin/teleport/loop
execute at @s[tag=library_tp_spy] run function library:entity/player/method/system/tp_check
execute at @s[tag=library_tp_admin] run function library:entity/player/method/system/tp_check
#
