# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibrarySystem libScoreCheck matches 1 run say Updating...
###注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
###提示：如果与其他数据包冲突，请检查本函数，原因同上
##变量：method/math/random
scoreboard objectives add libraryRandom dummy {"translate":"score.library.libraryRandom"}
# 随机数
scoreboard objectives add libraryRandomMax dummy {"translate":"score.library.libraryRandomMax"}
# 随机数最大值
scoreboard objectives add libraryRandomMin dummy {"translate":"score.library.libraryRandomMin"}
# 随机数最小值
#
##执行
function #library:open
scoreboard players set #LibrarySystem libTemp 13
execute if score #LibrarySystem libScoreCheck matches 0 run say Main load success!
execute if score #LibrarySystem libScoreCheck matches 1 run say Main update success!
#
