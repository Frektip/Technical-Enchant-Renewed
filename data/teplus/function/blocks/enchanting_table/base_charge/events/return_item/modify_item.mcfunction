# Get default item used as base charge from the Storage, including custom components
data modify entity @s Item.id set from storage teplus:register Resource[0].Value.id
data modify entity @s Item.components set from storage teplus:register Resource[0].Value.components

# Update the item count based on the score
execute store result entity @s Item.count byte 1 run scoreboard players get #sum.bachrg teplus.base_charge

# Add a tag so it isn't targeted again
tag @s add teplus.modify_done