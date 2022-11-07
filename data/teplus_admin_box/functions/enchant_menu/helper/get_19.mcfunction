data modify storage teplus:admin_box Build append from storage teplus:admin_box Get[0]

#Loop until it gets 19 enchantments or if it reaches the limit for enchantments (less than 19)
data remove storage teplus:admin_box Get[0]
scoreboard players add %loop.19 TADBX.data 1
execute if score %loop.19 TADBX.data matches ..18 if data storage teplus:admin_box Build[0].id run function teplus_admin_box:enchant_menu/helper/get_19