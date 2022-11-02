###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Updating UI, Slot1 and Slot2","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Removing output storage","color":"gray","italic":true,"bold":false}]

tag @s add HasExtracted
tag @s remove CanExtract
tag @s remove CurseExtract
tag @s remove InSlot1
function technical_anvil:extraction_mode/menu/update_ui/slot_1/11
function technical_anvil:extraction_mode/menu/update_ui/slot_1/12
tag @s remove InSlot2
function technical_anvil:extraction_mode/menu/update_ui/slot_2/14
function technical_anvil:extraction_mode/menu/update_ui/slot_2/15

#Give to the player the Output Item from the data storage
data remove storage teplus:tech_extract CurrentOutput.Slot
data remove storage teplus:tech_extract CurrentOutput.tag.Teplus

###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Summoning a dummy stick item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnvEx): ","color":"gold","italic":true,"bold":false},{"text":"Changing the stick nbt","color":"gray","italic":true,"bold":false}]

scoreboard players operation %tcha.extract_id tep.plid = @s tep.plid
execute as @a[distance=..6] if score %tcha.extract_id tep.plid = @s tep.plid at @s run summon item ~ ~ ~ {Tags:["tcha.extract"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,sort=nearest,tag=tcha.extract,distance=..6,limit=1] Item set from storage teplus:tech_extract CurrentOutput

data remove storage teplus:tech_extract CurrentOutput
data remove storage teplus:item_lore ExtractLore