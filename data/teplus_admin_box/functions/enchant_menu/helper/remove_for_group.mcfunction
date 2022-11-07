#Remove enchantments from the Array based on the pages
data remove storage teplus:admin_box Get[0]
scoreboard players remove %remove TADBX.data 1
execute if score %remove TADBX.data matches 1.. run function teplus_admin_box:enchant_menu/helper/remove_for_group