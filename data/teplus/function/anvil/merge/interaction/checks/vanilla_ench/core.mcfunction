# @Context: We are trying to combine two enchanted books
#  We need to make sure that any of the input books don't have vanilla enchantments
#  By using the @param: {slot} to select the left (2b) or right (6b) input slot

# Normal check for vanilla enchantments that can't increase their level from TE+
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:aqua_affinity run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:bane_of_arthropods run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:binding_curse run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:blast_protection run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:breach run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:channeling run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:density run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:depth_strider run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:fire_protection run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:flame run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:frost_walker run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:infinity run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:loyalty run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:mending run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:multishot run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:projectile_protection run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:quick_charge run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:silk_touch run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:smite run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:soul_speed run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:vanishing_curse run return 1
$execute if data entity @s Items[{Slot:$(slot)b}].components.minecraft:stored_enchantments.minecraft:wind_burst run return 1

# Check for vanilla enchantments that can increse their level from TE+
# First check if the configuration is enabled
$execute if score $VanPlus teplus.game_opts matches 0 run return run function teplus:anvil/merge/interaction/checks/vanilla_ench/can_increase_lvl {slot:$(slot)}

# If the config is not enabled, none of the remaining vanilla enchantments are allowed
return 1