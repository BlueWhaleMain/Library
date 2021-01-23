# (c) Copyright by BlueWhale. All Rights Reserved.
function library:entity/player/interface/all/event/death
scoreboard players set @s libFood 20
advancement revoke @s only library:trigger/consume_item/used_totem
