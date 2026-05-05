# Compare if both crystals are of the same Tier
execute store result score @s teplus.anvil.inp1 run data get entity @s Items[{Slot:2b}].components.minecraft:custom_data.teplus.Content.Tier

execute store result score @s teplus.anvil.inp2 run data get entity @s Items[{Slot:6b}].components.minecraft:custom_data.teplus.Content.Tier

execute if score @s teplus.anvil.inp1 = @s teplus.anvil.inp2 run return run function teplus:anvil/merge/interaction/item_type/experience_crystal/increase_tier

# Default error case
function teplus:anvil/merge/interaction/create_item/failed {err:"invalid_xp_crystal_tier"}