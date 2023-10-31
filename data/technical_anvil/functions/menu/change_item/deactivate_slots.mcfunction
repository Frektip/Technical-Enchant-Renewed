#------------------ANVIL-------------------#
scoreboard players reset @s TCHA.cost
tag @s remove CanCombine
tag @s remove InSlot1
tag @s[tag=No.xpcomb] remove No.xpcomb
tag @s[tag=Noxpcost] remove Noxpcost
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21
tag @s remove InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23


data remove storage teplus:item_lore CurrentLore
function technical_anvil:menu/update_ui/output_slot
#------------------------------------------#