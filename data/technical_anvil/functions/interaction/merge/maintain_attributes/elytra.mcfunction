##Remove enchantment attributes
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor"}]

#Add new attributes to ResultItem storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers append from storage teplus:attribute Base[]

data remove storage teplus:attribute Base