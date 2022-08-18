playsound minecraft:block.grindstone.use master @p ~ ~ ~ 1 0.7 1

execute if score #tslpm game.Opts matches 1 run particle dust_color_transition 1.000 0.020 0.020 1 1.000 0.690 0.510 ~ ~1 ~ 0.1 0.2 0.1 2 350
execute if score #tslpm game.Opts matches 1 run particle block anvil ~ ~1 ~ 0.3 0 0.3 1 150

##Clearing chest minecart items
# -Copy the input item Lore and remove ONLY the custom enchantment Lore Part
data modify storage teplus:item_lore ExtractLore set from entity @s Items[{Slot:10b}].tag.display.Lore
function #technical_anvil:extraction_mode/remove_custom_lore

# -Removing the first custom enchantment nbt from the input item
execute if data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] run function technical_anvil:extraction_mode/interaction/update_input/remove_enchantments

# -Removing CustomEnchantments nbt tag and Enchantments nbt tag if neccessary
execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] run data remove entity @s Items[{Slot:10b}].tag.CustomEnchantments

execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl run data remove entity @s Items[{Slot:10b}].tag.Enchantments

# - In case the item had a custom curse, readd the Enchant nbt
execute unless data entity @s Items[{Slot:10b}].tag.CustomEnchantments[0] unless data entity @s Items[{Slot:10b}].tag.Enchantments[0].lvl if data entity @s Items[{Slot:10b}].tag.CustomCurse run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{}]

# -Update properly the lore
function technical_anvil:extraction_mode/edit_input_item_lore

#Remove 1 single book from the chest minecart

function technical_anvil:extraction_mode/interaction/update_input/remove_book


data modify storage teplus:tech_extract CurrentItems set from entity @s Items
function technical_anvil:extraction_mode/menu/empty_sections
