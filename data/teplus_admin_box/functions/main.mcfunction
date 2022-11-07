execute if entity @s[tag=tepadbx.main,tag=!tepadbx.items,tag=!tepadbx.ench] run function teplus_admin_box:main_menu/core
execute if entity @s[tag=tepadbx.items,tag=!tepadbx.ench,tag=!tepadbx.main] run function teplus_admin_box:items_menu/core
execute if entity @s[tag=tepadbx.ench,tag=!tepadbx.items,tag=!tepadbx.main] run function teplus_admin_box:enchant_menu/core


tag @s[tag=!tepadbx.items,tag=!tepadbx.ench,tag=!tepadbx.main] add tepadbx.main

tag @s[tag=!is.open] add is.open