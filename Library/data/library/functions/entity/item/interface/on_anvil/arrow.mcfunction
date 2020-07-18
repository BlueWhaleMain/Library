#Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{Count:1b,tag:{id:"library:tick_arrow"}}}] if entity @e[distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b,tag:{display:{}}}},type=minecraft:item] run function library:entity/item/method/anvil/s_arrow
#合成秒箭