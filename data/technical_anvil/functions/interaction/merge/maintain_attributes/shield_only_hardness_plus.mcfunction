##Remove enchantment attributes
data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.armor_toughness"}]
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:2b,tag:{CustomEnchantments:[{id:"AntiKnockback"}]}}]} run data remove storage teplus:attribute Base[{AttributeName:"minecraft:generic.knockback_resistance"}]


#Add new attributes to ResultItem storage
data modify storage teplus:tech_anvil.ui ResultItem.tag.AttributeModifiers append from storage teplus:attribute Base[]

data remove storage teplus:attribute Base