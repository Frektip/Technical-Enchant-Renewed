# Initialize main storage
data modify storage teplus:updates TAE.Output.Enchants set value []

# Get all the enchantments from the component
data modify storage teplus:temp enchobj set from storage teplus:updates TAE.Inputs.Section1.components.minecraft:enchantments

# Convert vanilla and TE+ custom enchantments into a list
function teplus:utils/ench_to_list/init {ve:1,vc:0,te:1,tc:0}

# Add the enchantments into the resultItem storage
data modify storage teplus:updates TAE.Output.Enchants set from storage teplus:temp enchlist

# Clear storages
data remove storage teplus:temp enchlist
data remove storage teplus:temp enchobj