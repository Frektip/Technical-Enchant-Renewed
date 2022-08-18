item replace entity @s weapon.mainhand with bow{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/mainhand/shoot/set_enchantments/bow

data modify entity @s HandItems[0].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Remove other bow from the mainhand if it doesn't have Custom Enchantments
execute unless data entity @s HandItems[1].tag.CustomEnchantments run item replace entity @s weapon.offhand with air