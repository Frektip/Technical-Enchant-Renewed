###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Updating UI, Slot1 and Slot2","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Removing output storage","color":"gray","italic":true,"bold":false}]

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

###Debug Message###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Summoning a dummy stick item","color":"gray","italic":true,"bold":false}]
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(TechnAnv): ","color":"yellow","italic":true,"bold":false},{"text":"Changing the stick nbt","color":"gray","italic":true,"bold":false}]

scoreboard players operation %tcha.merge_id tep.plid = @s tep.plid
execute as @a[distance=..6] if score %tcha.merge_id tep.plid = @s tep.plid at @s run summon item ~ ~ ~ {Tags:["tcha.merge"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,sort=nearest,tag=tcha.merge,distance=..6,limit=1] Item set from storage teplus:tech_anvil.ui CurrentOutput

data remove storage teplus:tech_anvil.ui CurrentOutput
data remove storage teplus:item_lore CurrentLore
data remove storage teplus:tech_anvil.ench TeplusEnchantments
data remove storage teplus:tech_anvil.ench TeplusCurses