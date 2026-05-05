# Basically we get an object with the enchantments: { "ench1":1,"ench2":2, "ench3":3, ... }
# And we want to format it as a list: [{id:"ench1", lvl:1}, {id:"ench2", lvl:2}, {id:"ench3", lvl:3}, ...]
# For this we use 2 storages, one for the object and the other one for the list

# Inititalize the List storage
data remove storage teplus:temp enchlist
data modify storage teplus:temp enchlist set value []

# Check the "enchobj" storage looking for an enchantment, if it is present, add it  to the list
# NOTE: "enchobj" storage MUST come previously defined before calling this function

# Run de function based on the score (0 = no run, 1 = run)
# Take the value score from the @params:
#   - {ve}: include vanilla enchantments
#   - {vc}: include vanilla curses
#   - {te}: include TE+ custom enchantments
#   - {tc}: include TE+ custom curses

$scoreboard players set #vanilla_ench teplus.data $(ve)
$scoreboard players set #vanilla_curses teplus.data $(vc)
$scoreboard players set #teplus_ench teplus.data $(te)
$scoreboard players set #teplus_curses teplus.data $(tc)

execute if score #vanilla_ench teplus.data matches 1 run function teplus:utils/ench_to_list/vanilla/enchants
execute if score #vanilla_curses teplus.data matches 1 run function teplus:utils/ench_to_list/vanilla/curses
execute if score #teplus_ench teplus.data matches 1 run function #teplus:ench_to_list/custom_enchants
execute if score #teplus_curses teplus.data matches 1 run function #teplus:ench_to_list/custom_curses

# After this the "teplus:temp enchlist" storage should have been updated and can be used in any other part of the datapack

# Reset the scores
scoreboard players reset #vanilla_ench teplus.data
scoreboard players reset #vanilla_curses teplus.data
scoreboard players reset #teplus_ench teplus.data
scoreboard players reset #teplus_curses teplus.data