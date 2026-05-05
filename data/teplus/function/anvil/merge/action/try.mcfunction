# Check (with the tag) if the action has no cost
execute if entity @s[tag=teplus.anvil.no_combine_cost] run return run function teplus:anvil/merge/action/succeed

# Get the output cost value and check if the player can afford it
execute if entity @s[tag=!teplus.anvil.no_combine_cost] run function teplus:anvil/merge/action/xp_calc/main
execute if entity @s[tag=!teplus.anvil.no_combine_cost] run function teplus:anvil/merge/action/check_level