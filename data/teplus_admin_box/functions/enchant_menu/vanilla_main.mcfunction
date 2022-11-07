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

##--------DETECT USES FROM THE MAIN PAGE ITEMS--------##
execute unless data storage teplus:admin_box CurrentItems[{Slot:2b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot2
execute unless data storage teplus:admin_box CurrentItems[{Slot:3b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot3
execute unless data storage teplus:admin_box CurrentItems[{Slot:4b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot4
execute unless data storage teplus:admin_box CurrentItems[{Slot:5b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot5
execute unless data storage teplus:admin_box CurrentItems[{Slot:6b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot6
execute unless data storage teplus:admin_box CurrentItems[{Slot:7b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot7
execute unless data storage teplus:admin_box CurrentItems[{Slot:8b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot8
execute unless data storage teplus:admin_box CurrentItems[{Slot:11b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot11
execute unless data storage teplus:admin_box CurrentItems[{Slot:12b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot12
execute unless data storage teplus:admin_box CurrentItems[{Slot:13b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot13
execute unless data storage teplus:admin_box CurrentItems[{Slot:14b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot14
execute unless data storage teplus:admin_box CurrentItems[{Slot:15b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot15
execute unless data storage teplus:admin_box CurrentItems[{Slot:16b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot16
execute unless data storage teplus:admin_box CurrentItems[{Slot:17b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot17
execute unless data storage teplus:admin_box CurrentItems[{Slot:20b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot20
execute unless data storage teplus:admin_box CurrentItems[{Slot:21b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot21
execute unless data storage teplus:admin_box CurrentItems[{Slot:22b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot22
execute unless data storage teplus:admin_box CurrentItems[{Slot:23b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot23
execute unless data storage teplus:admin_box CurrentItems[{Slot:24b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot24
execute unless data storage teplus:admin_box CurrentItems[{Slot:25b}].tag.StoredEnchantments run function teplus_admin_box:enchant_menu/return_vanilla/slot25

execute unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.main_return run function teplus_admin_box:enchant_menu/return_to_main