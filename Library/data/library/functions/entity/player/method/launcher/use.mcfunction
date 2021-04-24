# Copyright by BlueWhale. All Rights Reserved.
# TNT
execute if entity @s[nbt={SelectedItem:{tag:{item:"minecraft:tnt"}}}] run function library:entity/player/method/launcher/tnt/check
# 副手也能工作
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{item:"minecraft:tnt"}}]}] run function library:entity/player/method/launcher/tnt/check
