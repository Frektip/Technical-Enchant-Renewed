tag @s remove tepspw_hshel
tag @s remove tepspw_hschs
tag @s remove tepspw_hslgn
tag @s remove tepspw_hsbt
tag @s remove tepspw_hsmh
tag @s remove tepspw_hsofh

tag @s remove tepspw_cenit

#In case for some reason the mob didn't get a Custom Enchantment
execute unless data entity @s ArmorItems[0].tag.CustomEnchantments run data remove entity @s ArmorItems[0].tag.Enchantments
execute unless data entity @s ArmorItems[1].tag.CustomEnchantments run data remove entity @s ArmorItems[1].tag.Enchantments
execute unless data entity @s ArmorItems[2].tag.CustomEnchantments run data remove entity @s ArmorItems[2].tag.Enchantments
execute unless data entity @s ArmorItems[3].tag.CustomEnchantments run data remove entity @s ArmorItems[3].tag.Enchantments

execute unless data entity @s HandItems[0].tag.CustomEnchantments run data remove entity @s HandItems[0].tag.tag.Enchantments
execute unless data entity @s HandItems[1].tag.CustomEnchantments run data remove entity @s HandItems[1].tag.tag.Enchantments