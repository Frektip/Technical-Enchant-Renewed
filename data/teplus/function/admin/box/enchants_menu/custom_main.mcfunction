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

# Slot 25 is special, it doesn't have any enchantments but it is updated with a blank slot anyways
execute unless data block ~ ~ ~ Items[{Slot:25b}].id run loot replace block ~ ~ ~ container.25 loot teplus:empty_slot
#==============================================================================================================#



#====================================== NAVIGATION BUTTONS ======================================#
#----- First page (two posiblities) -----#
# 1) Can have more pages: have two buttons "Return" and "Next"
execute if score $page.lim teplus.admin_box.data matches 2.. if score @s teplus.admin_box.page matches 1 unless data block ~ ~ ~ Items[{Slot:25b}].components.minecraft:custom_data.teplus.main_return run function teplus:admin/box/enchants_menu/switch/to_main
execute if score $page.lim teplus.admin_box.data matches 2.. if score @s teplus.admin_box.page matches 1 unless data block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_data.teplus.next_pg run function teplus:admin/box/enchants_menu/switch/to_next_page

# 2) The page limit is 1: only have "Return" button
execute if score $page.lim teplus.admin_box.data matches ..1 if score @s teplus.admin_box.page matches 1 unless data block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_data.teplus.main_return run function teplus:admin/box/enchants_menu/switch/to_main

#----- Middle pages (less than the max page limit) -----#
execute if score @s[tag=!teplus.admin_box.update] teplus.admin_box.page matches 2.. if score @s teplus.admin_box.page < $page.lim teplus.admin_box.data unless data block ~ ~ ~ Items[{Slot:25b}].components.minecraft:custom_data.teplus.prev_pg run function teplus:admin/box/enchants_menu/switch/to_prev_page
execute if score @s[tag=!teplus.admin_box.update] teplus.admin_box.page matches 2.. if score @s teplus.admin_box.page < $page.lim teplus.admin_box.data unless data block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_data.teplus.next_pg run function teplus:admin/box/enchants_menu/switch/to_next_page

#----- Last page (prevent colliding with the first case) -----#
execute if score $page.lim teplus.admin_box.data matches 2.. if score @s[tag=!teplus.admin_box.update] teplus.admin_box.page >= $page.lim teplus.admin_box.data unless data block ~ ~ ~ Items[{Slot:26b}].components.minecraft:custom_data.teplus.prev_pg run function teplus:admin/box/enchants_menu/switch/to_prev_page
#================================================================================================#



# Update operations
function teplus:admin/box/enchants_menu/common/get_enchantments_from_page
tag @s remove teplus.admin_box.update