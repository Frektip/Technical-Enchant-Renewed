# Remove enchantments from the Array based on the pages
data remove storage teplus:ui Global[{profile:"admin_box"}].Get[0]
scoreboard players remove %remove teplus.admin_box.data 1
execute if score %remove teplus.admin_box.data matches 1.. run function teplus:admin/box/enchants_menu/helper/remove_for_group