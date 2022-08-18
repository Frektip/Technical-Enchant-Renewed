##Remove enchantment attributes
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.movement_speed"}]

##Change or not Armor, Knockback Resistance or Armor Thoughness attributes
# This depends on the material
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:netherite_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/netherite
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:diamond_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/diamond
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:chainmail_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:golden_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:iron_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/other
execute if data storage teplus:tech_anvil.ui {ResultItem:{id:"minecraft:leather_boots"}} run function technical_anvil:interaction/merge/maintain_attributes/boots/other

#Add new attributes to ResultItem storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers append from storage teplus:attribute Base[]

data remove storage teplus:attribute Base