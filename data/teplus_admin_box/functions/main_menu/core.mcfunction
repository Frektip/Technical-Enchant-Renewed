#--GET CURRENT---#
data modify storage teplus:admin_box CurrentItems set from block ~ ~ ~ Items

##-----------CLEAR ITEMS------##
# UI items checks
scoreboard players set %ui_changed TADBX.Value 0 
data modify storage teplus:admin_box CurrentUI set from storage teplus:admin_box CurrentItems
data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box CurrentUI
execute store result score %ui_changed TADBX.Value run data modify storage teplus:admin_box UICheckChange set from storage teplus:admin_box Profile.Main
# - If UI items changed 
execute if score %ui_changed TADBX.Value matches 1.. run data modify block ~ ~ ~ Items append from storage teplus:admin_box Profile.Main[]

##--------DETECT USES--------##
execute unless data storage teplus:admin_box CurrentItems[{Slot:11b}].tag.Teplus.menu1 run function teplus_admin_box:main_menu/to_menu1
execute unless data storage teplus:admin_box CurrentItems[{Slot:15b}].tag.Teplus.menu2 run function teplus_admin_box:main_menu/to_menu2