# Get the current item data and save it in the storage without the "Count" tag
data modify storage teplus:register Resource[1].Compare set from entity @s Item
data remove storage teplus:register Resource[1].Compare.Count

# Compare if the item is the same, for this we use the fake player #is.baserce
# then we store the result of comparing  Resource[1].Compare & Resource[0].Value from the storage
execute store result score #is.baserce teplus.data run data modify storage teplus:register Resource[1].Compare set from storage teplus:register Resource[0].Value

# If it's true, we store the current amount of the item in another fake player #add.bachrg
execute if score #is.baserce teplus.data matches 0 store result score #add.bachrg teplus.base_charge run data get entity @s Item.Count

# Update the current "charge count" with the one from the config score
scoreboard players operation #add.bachrg teplus.base_charge *= #qnty_per_item teplus.game_opts

# Add the tag so it means it has been processed
tag @s add teplus.charge_try