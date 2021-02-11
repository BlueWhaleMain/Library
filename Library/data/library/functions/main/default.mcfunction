# Copyright by BlueWhale. All Rights Reserved.
# 默认禁用弹幕
say Barrage is disabled by default.
function library:shell/barrage/disable

# 默认禁止玩家发射弹幕
say Shoot(Barrage) is disabled by default.
function library:shell/shoot/disable

# 默认僵尸召唤最大值32
say ZombieDefaultMax is 32.
scoreboard players set #ZombieDefaultMax libTemp 32
