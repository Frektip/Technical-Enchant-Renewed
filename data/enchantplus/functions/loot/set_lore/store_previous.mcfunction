#In order to prevent getting dupped or lost Lore from the item, we check out for 
# the previous (this) Lore from the Item
data modify storage teplus:item_lore CurrentLore set value []

#Add a scoreboard limit from ONLY all the custom enchantments
# that are in the inout Item (original)
execute store result score @s teplus.lore run data get entity @s Item.tag.CustomEnchantments
execute store result score @s teplus.cslore run data get entity @s Item.tag.CustomCurse
scoreboard players operation @s teplus.lore += @s teplus.cslore

#Store the Current item Lore - From the Input item
data modify storage teplus:item_lore CurrentLore set from entity @s Item.tag.display.Lore

#Remove ONLY TE+ related Lore from the storage
# For this enter into a loop funcion
function technical_anvil:edit_lore/maintain_lore