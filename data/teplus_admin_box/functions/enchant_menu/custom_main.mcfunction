#--GET CURRENT---#
data modify storage teplus:admin_box CurrentItems set from block ~ ~ ~ Items

##-----------CLEAR ITEMS------##
# UI items checks
scoreboard players set %ui_changed TADBX.Value 0 
data modify storage teplus:admin_box CurrentUI set from storage teplus:admin_box CurrentItems
function teplus_admin_box:enchant_menu/remove_dynamic_slots
data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box CurrentUI
execute store result score %ui_changed TADBX.Value run data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box Profile.Ench
# - If UI items changed 
execute if score %ui_changed TADBX.Value matches 1.. run data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.Ench[]

##--------DETECT USES FROM SUB MENUS--------##
execute unless data storage teplus:admin_box CurrentItems[{Slot:0b}].tag.Teplus.button0 run function teplus_admin_box:enchant_menu/switch/to_custom
execute unless data storage teplus:admin_box CurrentItems[{Slot:18b}].tag.Teplus.button2 run function teplus_admin_box:enchant_menu/switch/to_vanilla

##-------RETURN ENCHANTMENTS WHEN PRESSED-------##
execute unless data storage teplus:admin_box CurrentItems[{Slot:2b}].id run function teplus_admin_box:enchant_menu/return_custom/slot2
execute unless data storage teplus:admin_box CurrentItems[{Slot:3b}].id run function teplus_admin_box:enchant_menu/return_custom/slot3
execute unless data storage teplus:admin_box CurrentItems[{Slot:4b}].id run function teplus_admin_box:enchant_menu/return_custom/slot4
execute unless data storage teplus:admin_box CurrentItems[{Slot:5b}].id run function teplus_admin_box:enchant_menu/return_custom/slot5
execute unless data storage teplus:admin_box CurrentItems[{Slot:6b}].id run function teplus_admin_box:enchant_menu/return_custom/slot6
execute unless data storage teplus:admin_box CurrentItems[{Slot:7b}].id run function teplus_admin_box:enchant_menu/return_custom/slot7
execute unless data storage teplus:admin_box CurrentItems[{Slot:8b}].id run function teplus_admin_box:enchant_menu/return_custom/slot8
execute unless data storage teplus:admin_box CurrentItems[{Slot:11b}].id run function teplus_admin_box:enchant_menu/return_custom/slot11
execute unless data storage teplus:admin_box CurrentItems[{Slot:12b}].id run function teplus_admin_box:enchant_menu/return_custom/slot12
execute unless data storage teplus:admin_box CurrentItems[{Slot:13b}].id run function teplus_admin_box:enchant_menu/return_custom/slot13
execute unless data storage teplus:admin_box CurrentItems[{Slot:14b}].id run function teplus_admin_box:enchant_menu/return_custom/slot14
execute unless data storage teplus:admin_box CurrentItems[{Slot:15b}].id run function teplus_admin_box:enchant_menu/return_custom/slot15
execute unless data storage teplus:admin_box CurrentItems[{Slot:16b}].id run function teplus_admin_box:enchant_menu/return_custom/slot16
execute unless data storage teplus:admin_box CurrentItems[{Slot:17b}].id run function teplus_admin_box:enchant_menu/return_custom/slot17
execute unless data storage teplus:admin_box CurrentItems[{Slot:20b}].id run function teplus_admin_box:enchant_menu/return_custom/slot20
execute unless data storage teplus:admin_box CurrentItems[{Slot:21b}].id run function teplus_admin_box:enchant_menu/return_custom/slot21
execute unless data storage teplus:admin_box CurrentItems[{Slot:22b}].id run function teplus_admin_box:enchant_menu/return_custom/slot22
execute unless data storage teplus:admin_box CurrentItems[{Slot:23b}].id run function teplus_admin_box:enchant_menu/return_custom/slot23
execute unless data storage teplus:admin_box CurrentItems[{Slot:24b}].id run function teplus_admin_box:enchant_menu/return_custom/slot24

#Slot 25 is special, it doesn't have any enchantments but it is updated with a blank
# slot anyways
execute unless data storage teplus:admin_box CurrentItems[{Slot:25b}].id run loot replace block ~ ~ ~ container.25 loot teplus_admin_box:empy_slot

##-------Buttons Based on the Page------##
#First page (two posiblities)
#1.- Can have more pages, have two buttons "Return" and "Next"
execute if score $page.lim TADBX.data matches 2.. if score @s TADBX.Page matches 1 unless data storage teplus:admin_box CurrentItems[{Slot:25b}].tag.Teplus.main_return run function teplus_admin_box:enchant_menu/return_to_main
execute if score $page.lim TADBX.data matches 2.. if score @s TADBX.Page matches 1 unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.next_pg run function teplus_admin_box:enchant_menu/helper/next_page

#2.- The page limit is 1
execute if score $page.lim TADBX.data matches ..1 if score @s TADBX.Page matches 1 unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.main_return run function teplus_admin_box:enchant_menu/return_to_main

#Middle pages (less than the max page limit)
execute if score @s[tag=!update] TADBX.Page matches 2.. if score @s TADBX.Page < $page.lim TADBX.data unless data storage teplus:admin_box CurrentItems[{Slot:25b}].tag.Teplus.prev_pg run function teplus_admin_box:enchant_menu/helper/previous_page
execute if score @s[tag=!update] TADBX.Page matches 2.. if score @s TADBX.Page < $page.lim TADBX.data unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.next_pg run function teplus_admin_box:enchant_menu/helper/next_page

#Last page (prevent colliding with the first case)
execute if score $page.lim TADBX.data matches 2.. if score @s[tag=!update] TADBX.Page >= $page.lim TADBX.data unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.prev_pg run function teplus_admin_box:enchant_menu/helper/previous_page

function teplus_admin_box:enchant_menu/helper/get_enchantments_from_pages

tag @s remove update