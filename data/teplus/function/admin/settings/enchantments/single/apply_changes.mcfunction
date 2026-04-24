# Update scoreboard related values
$scoreboard players set $(ench_target) teplus.game_opts $(input_enable)
$scoreboard players set $(ench_target) teplus.maxlvl $(max_level)

# Update options in the registry storage
# Check for every enchantment rarity and update only if the match exists
# DISCLAIMER (addons): For this to work the enchantment MUST have an ID with "teplus:" prefix to work
$execute store success score #in_registry teplus.data run data get storage teplus:register Custom[].Curse[{id:"teplus:$(ench_name)"}]
$execute if score #in_registry teplus.data matches 1 run return run data modify storage teplus:register Custom[].Curse[{id:"teplus:$(ench_name)"}].Enabled set value $(input_enable)

$execute store success score #in_registry teplus.data run data get storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:$(ench_name)"}]
$execute if score #in_registry teplus.data matches 1 run return run data modify storage teplus:register Custom[].Enchantment[].Strong[{id:"teplus:$(ench_name)"}].Enabled set value $(input_enable)

$execute store success score #in_registry teplus.data run data get storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:$(ench_name)"}]
$execute if score #in_registry teplus.data matches 1 run return run data modify storage teplus:register Custom[].Enchantment[].Average[{id:"teplus:$(ench_name)"}].Enabled set value $(input_enable)

$execute store success score #in_registry teplus.data run data get storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:$(ench_name)"}]
$execute if score #in_registry teplus.data matches 1 run data modify storage teplus:register Custom[].Enchantment[].Low[{id:"teplus:$(ench_name)"}].Enabled set value $(input_enable)