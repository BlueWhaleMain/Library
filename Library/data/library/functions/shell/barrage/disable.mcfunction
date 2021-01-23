# Copyright by BlueWhale. All Rights Reserved.
tag @e[type=#library:hostile,tag=!not_allowed_touhou] add not_allowed_touhou
# 理论上只有敌对生物才能释放弹幕，所以不选择所有实体
schedule function library:shell/barrage/disable 1t
# loop
