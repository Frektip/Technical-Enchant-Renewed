##Remove enchantment attributes
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.max_health"}]

##Change or not Armor, Knockback Resistance or Armor Thoughness attributes
# This depends on the material
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:netherite_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/netherite
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:diamond_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/diamond
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:chainmail_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:golden_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:iron_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:leather_chestplate"}} run function technical_anvil:interaction/merge/maintain_attributes/chestplate/other

#Add new attributes to ResultItem storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers append from storage teplus:attribute Base[]

data remove storage teplus:attribute Base