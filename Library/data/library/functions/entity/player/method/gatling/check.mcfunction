#Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run clear @s minecraft:arrow 0
clear @s[scores={libTemp=1..},gamemode=!creative,nbt={SelectedItem:{tag:{Charged:0b}}}] minecraft:arrow 1
scoreboard players set @s[gamemode=creative] libTemp 1
loot replace entity @s[scores={libTemp=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] weapon.mainhand 1 loot library:items/gatling/arrow
#填充加特林
