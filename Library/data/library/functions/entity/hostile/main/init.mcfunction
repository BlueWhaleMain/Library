# (c) Copyright by BlueWhale. All Rights Reserved.
execute if score #LibEntityHostile libScoreCheck matches 1 run say updating hostile...
###注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
###提示：如果与其他数据包冲突，请检查本函数，原因同上
##执行
function #library:entity/hostile/open
scoreboard players set #LibEntityHostile libTemp 1
execute if score #LibEntityHostile libScoreCheck matches 0 run say Hostile load success!
execute if score #LibEntityHostile libScoreCheck matches 1 run say Hostile update success!
#
