# Divide the 2 sub categories
execute if entity @s[tag=teplus.admin_box.custom,tag=!teplus.admin_box.vanilla] run function teplus:admin/box/enchants_menu/custom_main
execute if entity @s[tag=teplus.admin_box.vanilla,tag=!teplus.admin_box.custom] run function teplus:admin/box/enchants_menu/vanilla_main

tag @s[tag=!teplus.admin_box.vanilla,tag=!teplus.admin_box.custom] add teplus.admin_box.custom