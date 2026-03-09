# 1. Store the total amount of custom enchantments and vanilla enchantments
# Initialize the storage
data modify storage teplus:cost Available set value []

# Get the enchantments from the output
# Books
execute if data storage teplus:updates TAM.Output.Current.components.minecraft:stored_enchantments run data modify storage teplus:temp enchobj set from storage teplus:updates TAM.Output.Current.components.minecraft:stored_enchantments

# Items
execute if data storage teplus:updates TAM.Output.Current.components.minecraft:enchantments run data modify storage tteplus:temp enchobj set from storage teplus:updates TAM.Output.Current.components.minecraft:enchantments

# Convert the enchantments into a list
function teplus:utils/ench_to_list/init
data modify storage teplus:cost Available set from storage teplus:temp enchlist

# Remove vanilla enchantments from the list
function teplus:anvil/merge/action/xp_calc/remove_vanilla

# 2. Use an scoreboard as a counter for the loop
execute store result score @s teplus.anvil.ench_count run data get storage teplus:cost Available

# Initialize scores
scoreboard players set $Sum teplus.anvil.cost 0
scoreboard players set $Allav teplus.anvil.cost 0
scoreboard players set #per_lvl_added teplus.anvil.cost 0

scoreboard players operation $Allav teplus.anvil.cost = @s teplus.anvil.ench_count

function teplus:anvil/merge/action/xp_calc/loop

# 3. Formula to get the Final cost
#--------------------------------------------------------------------#
#                                  [$Expo score] 
# Cost = [base(set by the config)]^              + ($Remain score)
#--------------------------------------------------------------------#

# The $Remain score is the difference between all the enchantments (vanilla and custom) with their 
#   levels added and All the enchantments (vanilla and custom) without their levels
# So we get an accumulation of all extra levels from all enchantments
scoreboard players operation $Remain teplus.anvil.cost = $Sum teplus.anvil.cost
scoreboard players operation $Remain teplus.anvil.cost -= $Allav teplus.anvil.cost
scoreboard players operation $Remain teplus.anvil.cost += #per_lvl_added teplus.anvil.cost

# Exponential increase, based on the # of custom enchantments and curses added
#  this don't include their levels and vanilla enchantments either
scoreboard players operation $Expo teplus.anvil.cost = $Allav teplus.anvil.cost

# Run the "power" function only if the base is equal or greater than 2 (1 is constant)
execute if score #xprq teplus.game_opts matches 2.. run function teplus:anvil/merge/action/xp_calc/power

# After all this process, the final value is stored in the chest_minecart's 'teplus.anvil.cost' score

# Clear storages
data remove storage teplus:cost Available
data remove storage teplus:cost Current
data remove storage teplus:temp enchlist
data remove storage teplus:temp enchobj