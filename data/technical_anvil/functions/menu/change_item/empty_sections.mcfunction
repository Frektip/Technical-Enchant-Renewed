tag @s add HasCombined
tag @s remove CanCombine
tag @s remove InSlot1
function technical_anvil:menu/update_ui/slot_1/11
function technical_anvil:menu/update_ui/slot_1/20
function technical_anvil:menu/update_ui/slot_1/21
tag @s remove InSlot2
function technical_anvil:menu/update_ui/slot_2/15
function technical_anvil:menu/update_ui/slot_2/24
function technical_anvil:menu/update_ui/slot_2/23

#Give to the player the Output Item from the data storage
data remove storage teplus:tech_anvil.ui CurrentOutput.Slot
data remove storage teplus:tech_anvil.ui CurrentOutput.tag.Teplus
data remove storage teplus:tech_anvil.ui CurrentOutput.tag.EnchCore

scoreboard players operation %tcha.merge_id tep.plid = @s tep.plid
execute as @a[distance=..6] if score %tcha.merge_id tep.plid = @s tep.plid at @s run summon item ~ ~ ~ {Tags:["tcha.merge"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=tcha.merge,distance=..6,limit=1] Item set from storage teplus:tech_anvil.ui CurrentOutput

data remove storage teplus:tech_anvil.ui CurrentOutput
data remove storage teplus:item_lore CurrentLore