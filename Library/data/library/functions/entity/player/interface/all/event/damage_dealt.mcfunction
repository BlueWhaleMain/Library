# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 100
scoreboard players add @s[scores={libAtkFever=..200}] libAtkFever 1
scoreboard players remove @s[scores={libDefFever=-50..}] libDefFever 1
execute if entity @s[tag=!is_already_bomb,nbt={SelectedItem:{tag:{id:"library:yin_yang_yu","mode":"empty"}},Inventory:[{Slot:-106b,tag:{id:"library:shoot"}}]}] run clear @s[gamemode=survival] minecraft:quartz{id:"library:yin_yang_yu","mode":"empty"} 1
# 清除阴阳玉（欧拉损耗）
