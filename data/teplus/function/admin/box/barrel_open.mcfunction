# Show the correct UI based on the tag
#execute if entity @s[tag=teplus.admin_box.main,tag=!teplus.admin_box.items,tag=!teplus.admin_box.ench] run function teplus:admin/box/main_menu/core
#execute if entity @s[tag=teplus.admin_box.items,tag=!teplus.admin_box.ench,tag=!teplus.admin_box.main] run function teplus:admin/box/items_menu/core
#execute if entity @s[tag=teplus.admin_box.ench,tag=!teplus.admin_box.items,tag=!teplus.admin_box.main] run function teplus:admin/box/enchant_menu/core

# Default tag is main
tag @s[tag=!teplus.admin_box.items,tag=!teplus.admin_box.ench,tag=!teplus.admin_box.main] add teplus.admin_box.main

# Add open tag
tag @s[tag=!teplus.admin_box.is_open] add teplus.admin_box.is_open