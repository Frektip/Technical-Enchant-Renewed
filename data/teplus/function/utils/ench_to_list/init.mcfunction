# Basically we get an object with the enchantments: { "ench1":1,"ench2":2, "ench3":3, ... }
# And we want to format it as a list: [{id:"ench1", lvl:1}, {id:"ench2", lvl:2}, {id:"ench3", lvl:3}, ...]
# For this we use 2 storages, one for the object and the other one for the list

# Inititalize the List storage
data remove storage teplus:temp enchlist
data modify storage teplus:temp enchlist set value []

# Check the "enchobj" storage looking for an enchantment, if it is present, add it  to the list
# NOTE: "enchobj" storage MUST come previously defined before calling this function
# The following function includes a check for vanilla & custom enchantments
function #teplus:get_ench_from_obj

# After this the "enchlist" should have been updated and can be used in any other part of the datapack