# @Context: ther's at least one enchantment to extract, it comes in the form of the following
# @params:
# - {id}: id of the enchantment
# - {lvl}: level of the enchantment

# Format the selected enchantment {id:"",lvl:0} to a compound ---> Store the value in "teplus:temp singlenchobj" storage
$function teplus:utils/ench_to_single_obj {id:"$(id)",lvl:$(lvl)}

# Add the enchantment to the enchanted book in the output slot
data modify storage teplus:updates TAE.Output.Result.components.minecraft:stored_enchantments merge from storage teplus:temp singlenchobj

# Clear storage
data remove storage teplus:temp singlenchobj