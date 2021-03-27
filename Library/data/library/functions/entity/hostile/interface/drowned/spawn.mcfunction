# Copyright by BlueWhale. All Rights Reserved.
execute if score #LibDifficulty libTemp matches 3 run function library:entity/hostile/method/drowned/spawn/hard
execute if score #LibDifficulty libTemp matches 2 run function library:entity/hostile/method/drowned/spawn/normal
execute if score #LibDifficulty libTemp matches 1 run function library:entity/hostile/method/drowned/spawn/easy
