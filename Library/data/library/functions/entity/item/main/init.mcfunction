# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibEntityItem libScoreCheck matches 1 run say updating item...
###注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
###提示：如果与其他数据包冲突，请检查本函数，原因同上
##执行
function #library:entity/item/open
scoreboard players set #LibEntityItem libTemp 2
execute if score #LibEntityItem libScoreCheck matches 0 run say Item load success!
execute if score #LibEntityItem libScoreCheck matches 1 run say Item update success!
#
