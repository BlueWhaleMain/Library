#(c) Copyright by BlueWhale. All Rights Reserved.
kill @e[tag=hostile,type=!player,distance=..2]
#一段时间取消掉自机除擦弹以外的判定
execute if score @s libTouhouCFlag matches 20 run function library:entity/player/method/shoot/bomb/support_yukari_yakumo/check
execute if score @s libTouhouCFlag matches 40 run function library:entity/player/method/shoot/bomb/support_yukari_yakumo/check
execute if score @s libTouhouCFlag matches 60 run function library:entity/player/method/shoot/bomb/support_yukari_yakumo/check
execute if score @s libTouhouCFlag matches 80 run function library:entity/player/method/shoot/bomb/support_yukari_yakumo/check
execute if score @s libTouhouCFlag matches 100 run function library:entity/player/method/shoot/bomb/support_yukari_yakumo/close
#结束Bomb