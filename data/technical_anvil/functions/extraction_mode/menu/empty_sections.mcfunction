tag @s add HasExtracted
tag @s remove CanExtract
tag @s remove InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12
tag @s remove InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15

#Give to the player the Output Item from the data storage
data remove storage teplus:tech_extract CurrentOutput.Slot
data remove storage teplus:tech_extract CurrentOutput.tag.Teplus

scoreboard players operation %tcha.extract_id tep.plid = @s tep.plid
execute as @a[distance=..6] if score %tcha.extract_id tep.plid = @s tep.plid at @s run summon item ~ ~ ~ {Tags:["tcha.extract"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=tcha.extract,distance=..6,limit=1] Item set from storage teplus:tech_extract CurrentOutput

data remove storage teplus:tech_extract CurrentOutput
data remove storage teplus:item_lore ExtractLore