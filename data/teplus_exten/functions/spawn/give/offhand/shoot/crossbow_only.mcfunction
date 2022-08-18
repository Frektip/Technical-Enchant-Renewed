item replace entity @s weapon.offhand with minecraft:crossbow{Enchantments:[{}]}

#Give Custom Enchantments
function teplus_exten:spawn/give/mainhand/shoot/set_enchantments/crossbow

data modify entity @s HandItems[1].tag.CustomEnchantments set from storage tepspw:ench CustomEnchantments
data remove storage tepspw:ench CustomEnchantments

#Remove other crossbow from the mainhand if it doesn't have Custom Enchantments
execute unless data entity @s HandItems[0].tag.CustomEnchantments run item replace entity @s weapon.mainhand with minecraft:air