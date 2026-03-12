# #----SET ERROR BY DEFAULT----#
tag @s add teplus.anvil.merge.error

# Check if the right input is another experience crystal
execute if score #xpcrtlm teplus.game_opts matches 0 if data storage teplus:updates {TAM:{Inputs:{Section2:{components:{"minecraft:custom_data":{teplus:{id:"xp_crystal"}}}}}}} run return run function teplus:anvil/merge/interaction/item_type/experience_crystal/update_tier

# Check if the right input is an experience bottle
execute if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:experience_bottle"}}}} run return run function teplus:anvil/merge/interaction/item_type/experience_crystal/add_xp

# In case none of the above conditions are met, update the output slot to show the error
function teplus:anvil/merge/interaction/create_item/failed {err:"invalid_xp_crystal_input"}