# @Context: We're trying to obtain Enchantments ONLY or Curses ONLY
# @params:
#  - {enchant}: Get vanilla and TE+ custom enchantments
#  - {curse}: Get vanilla and TE+ custom curses
# Both params could be 0 (false) or 1 (true)

# Initialize main storage
data modify storage teplus:updates TAE.Output.Enchants set value []

# Get all the enchantments from the component
data modify storage teplus:temp enchobj set from storage teplus:updates TAE.Inputs.Section1.components.minecraft:enchantments

# Convert the enchantments into a list (get only enchantments or only curses)
$function teplus:utils/ench_to_list/init {ve:$(enchant),vc:$(curse),te:$(enchant),tc:$(curse)}

# Add the enchantments into the resultItem storage
data modify storage teplus:updates TAE.Output.Enchants set from storage teplus:temp enchlist

# Clear storages
data remove storage teplus:temp enchlist
data remove storage teplus:temp enchobj