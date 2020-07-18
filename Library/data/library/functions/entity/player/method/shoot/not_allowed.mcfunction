#Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/method/message/init
#初始化标题
title @s actionbar {"translate":"system.library.not_allowed"}
#显示内容
advancement grant @s[advancements={library:touhou/barrier=false}] only library:touhou/barrier
# 弹幕功能已关闭