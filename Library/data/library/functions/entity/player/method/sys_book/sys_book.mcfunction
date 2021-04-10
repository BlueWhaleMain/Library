# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt=!{SelectedItem:{tag:{"version":8}}}] run function library:entity/player/method/sys_book/update_sys_book
advancement grant @s[advancements={library:install/open_sys_book=false},nbt={SelectedItem:{tag:{"resolved":1b}}}] only library:install/open_sys_book
