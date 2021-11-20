# Copyright by BlueWhale. All Rights Reserved.
# 必要的消耗
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
# 心形挂坠盒
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:heart_pendant"}}}] run function library:entity/player/method/heart_pendant/using
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:heart_pendant"}}]}] run function library:entity/player/method/heart_pendant/using
advancement revoke @s only library:trigger/using_item
