#TE+ enchantments should always be at the begining of the Lore
# that's why we remove the Lore from the start to end
#To make sure we only remove TE+ enchantments, we use the scoreboard value
execute if score @s teplus.lore matches 1.. run data remove storage teplus:item_lore CurrentLore[0]
scoreboard players remove @s teplus.lore 1

#Repeat if it is still greater than 1
execute if score @s teplus.lore matches 1.. run function technical_anvil:edit_lore/maintain_lore