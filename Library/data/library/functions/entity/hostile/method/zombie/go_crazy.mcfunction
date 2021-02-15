# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run tag @s add crazy
execute if score #LibDifficulty libTemp matches 2 if predicate library:random/50 run tag @s add crazy
execute if score #LibDifficulty libTemp matches 1 if predicate library:random/30 run tag @s add crazy
