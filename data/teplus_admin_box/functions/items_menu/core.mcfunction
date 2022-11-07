#--GET CURRENT---#
data modify storage teplus:admin_box CurrentItems set from block ~ ~ ~ Items

##-----------CLEAR ITEMS------##
# UI items checks
scoreboard players set %ui_changed TADBX.Value 0 
data modify storage teplus:admin_box CurrentUI set from storage teplus:admin_box CurrentItems
data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box CurrentUI
execute store result score %ui_changed TADBX.Value run data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box Profile.Items
# - If UI items changed 
execute if score %ui_changed TADBX.Value matches 1.. run data modify block ~ ~ ~ Items set from storage teplus:admin_box Profile.Items

##--------DETECT USES--------##
execute unless data storage teplus:admin_box CurrentItems[{Slot:10b}].tag.Teplus.teit1 run function teplus_admin_box:items_menu/give/guide_book
execute unless data storage teplus:admin_box CurrentItems[{Slot:11b}].tag.Teplus.teit2 run function teplus_admin_box:items_menu/give/charged_bookshelf
execute unless data storage teplus:admin_box CurrentItems[{Slot:12b}].tag.Teplus.teit3 run function teplus_admin_box:items_menu/give/technical_anvil
execute unless data storage teplus:admin_box CurrentItems[{Slot:13b}].tag.Teplus.teit4 run function teplus_admin_box:items_menu/give/polished_lapis
execute unless data storage teplus:admin_box CurrentItems[{Slot:14b}].tag.Teplus.teit5 run function teplus_admin_box:items_menu/give/isolated_core
execute unless data storage teplus:admin_box CurrentItems[{Slot:15b}].tag.Teplus.teit6 run function teplus_admin_box:items_menu/give/blessed_orb
execute unless data storage teplus:admin_box CurrentItems[{Slot:16b}].tag.Teplus.teit7 run function teplus_admin_box:items_menu/give/birthday_potion
execute unless data storage teplus:admin_box CurrentItems[{Slot:26b}].tag.Teplus.main_return run function teplus_admin_box:items_menu/return_to_main