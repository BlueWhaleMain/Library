# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 500
execute if entity @s[tag=!is_already_bomb,nbt={SelectedItem:{tag:{id:"library:yin_yang_yu","mode":"empty"}},Inventory:[{Slot:-106b,tag:{id:"library:shoot"}}]}] run effect give @s minecraft:strength 1 20 true
# 空阴阳玉（欧拉欧拉）
