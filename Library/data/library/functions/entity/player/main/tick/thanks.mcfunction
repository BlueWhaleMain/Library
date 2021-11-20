# Copyright by BlueWhale. All Rights Reserved.
tellraw @s [{"translate":"system.library.thanks"},{"translate":"system.library.punctuation.colon"},{"selector":"@s","color":"blue"},{"translate":"system.library.punctuation.exclamation"}]
tellraw @s {"translate":"system.library.authors","clickEvent":{"action":"open_url","value":"https://space.bilibili.com/336800070/#/"},"hoverEvent":{"action":"show_text","value":{"text":"https://space.bilibili.com/336800070/#/"}}}
tellraw @s {"translate":"system.library.warning"}
loot give @s loot library:items/sys_book
give @s minecraft:crafting_table
function library:entity/player/method/message/version
