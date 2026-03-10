# Check for every TE+ curse, if it is present, add it to the list
# We send a key-value pair to be referenced in a generic function ()
execute if data storage teplus:temp enchobj.teplus:exhaustion run function teplus:utils/ench_to_list/add_enchantment {"ench": "teplus:exhaustion"}
execute if data storage teplus:temp enchobj.teplus:fear run function teplus:utils/ench_to_list/add_enchantment {"ench": "teplus:fear"}
execute if data storage teplus:temp enchobj.teplus:fragile run function teplus:utils/ench_to_list/add_enchantment {"ench": "teplus:fragile"}
execute if data storage teplus:temp enchobj.teplus:sensitive run function teplus:utils/ench_to_list/add_enchantment {"ench": "teplus:sensitive"}
execute if data storage teplus:temp enchobj.teplus:slippery run function teplus:utils/ench_to_list/add_enchantment {"ench": "teplus:slippery"}