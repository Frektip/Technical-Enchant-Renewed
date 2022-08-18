#THIS DEPENDS DIRECTLY ON MINCRAFT/loot_tables/blocks folder, giving and special tag
# when is mined with the enchantment <--- I don't want to redo this again

#This is the only way to make mining in a 3x3 area compatible with fortune, silktouch,
# autosmelt and vanilla mining

execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{MiningPlusItembreak:1}}}}] at @s run function enchantplus:result/miningplus/ini 
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ExcavatorItembreak:1}}}}] at @s run function enchantplus:result/excavator/ini 
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{ChoppingItembreak:1}}}}] at @s run function enchantplus:result/chopping/ini 
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{CanAutoSmelt:1}}}}] at @s run function enchantplus:result/autosmelt/ini 
execute if entity @s[nbt={Item:{tag:{CustomEnchantments:{CobbleAutoSmelt:1}}}}] at @s run function enchantplus:result/autosmelt/ini 
