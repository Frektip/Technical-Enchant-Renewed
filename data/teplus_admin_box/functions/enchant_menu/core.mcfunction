#Divide the 3 sub categories
execute if entity @s[tag=tepadbx.custom,tag=!tepadbx.vanilla] run function teplus_admin_box:enchant_menu/custom_main
execute if entity @s[tag=tepadbx.vanilla,tag=!tepadbx.custom] run function teplus_admin_box:enchant_menu/vanilla_main

tag @s[tag=!tepadbx.vanilla,tag=!tepadbx.custom] add tepadbx.custom