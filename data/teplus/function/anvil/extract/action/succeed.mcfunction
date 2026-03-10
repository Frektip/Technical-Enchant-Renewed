# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"gold","italic":true,"bold":false},{"text":"Removing the enchantment from the item","color":"gray","italic":true,"bold":false}]

playsound block.grindstone.use master @p ~ ~ ~ 1 0.7 1
particle dust_color_transition{from_color:[1.000,0.020,0.020],to_color:[1.000,0.690,0.510],scale:1} ~ ~1 ~ 0.1 0.2 0.1 2 350

particle block{block_state:"minecraft:anvil"} ~ ~1 ~ 0.3 0 0.3 1 150

# - Remove the enchantment from the input item
#  The storage first element --> TAE.Output.Enchants[0] should be the same in the current output slot 
function teplus:anvil/extract/action/remove_enchantment with storage teplus:updates TAE.Output.Enchants[0]

# Update UI
# ==== Debug Message ====#
tellraw @a[tag=teplus.debug_mode] [{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Anvil): ","color":"gold","italic":true,"bold":false},{"text":"Removing 1 book from the UI","color":"gray","italic":true,"bold":false}]

# Remove 1 single book from the chest minecart
item modify entity @s container.16 teplus:reduce_count1

data modify storage teplus:updates TAE.CurrentUI set from entity @s Items
function teplus:anvil/extract/menu/change_item/inputs/deactivate_slots

# Give output item to player
function teplus:anvil/extract/action/give_output
