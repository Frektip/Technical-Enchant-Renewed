# Check for every vanilla curse, if it is present, add it to the list
# We send a key-value pair to be referenced in a generic function ()
execute if data storage teplus:temp enchobj.minecraft:binding_curse run function teplus:utils/ench_to_list/add_enchantment {"ench": "minecraft:binding_curse"}
execute if data storage teplus:temp enchobj.minecraft:vanishing_curse run function teplus:utils/ench_to_list/add_enchantment {"ench": "minecraft:vanishing_curse"}