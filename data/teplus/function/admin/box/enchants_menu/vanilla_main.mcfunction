function teplus:admin/box/enchants_menu/common/update_static_ui

#====================================== RETURN ENCHANTMENTS WHEN PRESSED ======================================#
execute unless data block ~ ~ ~ Items[{Slot:2b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:0}
execute unless data block ~ ~ ~ Items[{Slot:3b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:1}
execute unless data block ~ ~ ~ Items[{Slot:4b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:2}
execute unless data block ~ ~ ~ Items[{Slot:5b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:3}
execute unless data block ~ ~ ~ Items[{Slot:6b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:4}
execute unless data block ~ ~ ~ Items[{Slot:7b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:5}
execute unless data block ~ ~ ~ Items[{Slot:8b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:6}
execute unless data block ~ ~ ~ Items[{Slot:11b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:7}
execute unless data block ~ ~ ~ Items[{Slot:12b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:8}
execute unless data block ~ ~ ~ Items[{Slot:13b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:9}
execute unless data block ~ ~ ~ Items[{Slot:14b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:10}
execute unless data block ~ ~ ~ Items[{Slot:15b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:11}
execute unless data block ~ ~ ~ Items[{Slot:16b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:12}
execute unless data block ~ ~ ~ Items[{Slot:17b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:13}
execute unless data block ~ ~ ~ Items[{Slot:20b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:14}
execute unless data block ~ ~ ~ Items[{Slot:21b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:15}
execute unless data block ~ ~ ~ Items[{Slot:22b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:16}
execute unless data block ~ ~ ~ Items[{Slot:23b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:17}
execute unless data block ~ ~ ~ Items[{Slot:24b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:18}
execute unless data block ~ ~ ~ Items[{Slot:25b}].id run function teplus:admin/box/enchants_menu/helper/return_book {index:19}
#==============================================================================================================#



#========================================= NAVIGATION BUTTONS =========================================#
# Return to main menu
execute if entity @s[tag=!teplus.admin_box.custom] unless data block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_data.teplus.main_return run function teplus:admin/box/enchants_menu/switch/to_main

# We check if the current entity doesn't have the ".custom" tag in case the player switch to the custom
#  enchantments submenu (don't ask me why it behaves that way)
#======================================================================================================#