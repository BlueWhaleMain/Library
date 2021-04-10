# Copyright by BlueWhale. All Rights Reserved.
scoreboard players remove @s libThirsty 100
scoreboard players set @s[scores={libHealth=..-1}] libHealth 0
advancement revoke @s only library:trigger/consume_item/milk_bucket
