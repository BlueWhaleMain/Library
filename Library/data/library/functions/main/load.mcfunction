# Copyright by BlueWhale. All Rights Reserved.
say loading...
### 注意：所有的可写变量都是独占的，使用相同类型的只能添加新的，除非能够避开操作冲突
### 提示：如果与其他数据包冲突，请检查本函数，原因同上
## 变量：虚拟
scoreboard objectives add libScoreCheck dummy {"translate":"score.library.libScoreCheck"}
scoreboard objectives add libTemp dummy {"translate":"score.library.libTemp"}
#
## 执行
scoreboard players set #LibrarySystem libScoreCheck 0
execute if score #LibrarySystem libTemp matches 0.. run scoreboard players set #LibrarySystem libScoreCheck 1
execute if score #LibrarySystem libTemp matches ..-1 run scoreboard players set #LibrarySystem libScoreCheck 1
execute if score #LibrarySystem libScoreCheck matches 0 run function library:main/init
execute unless score #LibrarySystem libTemp matches 13 run function library:main/init
#
## 默认设置
scoreboard players set #LibDefault libScoreCheck 0
execute if score #LibDefault libTemp matches 0.. run scoreboard players set #LibDefault libScoreCheck 1
execute if score #LibDefault libTemp matches ..-1 run scoreboard players set #LibDefault libScoreCheck 1
execute if score #LibDefault libScoreCheck matches 0 run function library:main/default
execute if score #LibDefault libTemp matches 1.. run function library:main/default
#
