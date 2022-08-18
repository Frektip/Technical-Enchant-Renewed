#Check enchantments
execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Agility"}] at @s run function enchantplus:update_ench/mainhand/agility/check_options

execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"AntiKnockback"}] at @s run function enchantplus:update_ench/mainhand/anti_knockback/check_options

execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"Armored"}] at @s run function enchantplus:update_ench/mainhand/armored/check_options

execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"AttackSpeed"}] at @s run function enchantplus:update_ench/mainhand/attack_speed/check_options

execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"HardnessPlus"}] at @s run function enchantplus:update_ench/mainhand/hardness_plus/check_options

execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"LifePlus"}] at @s run function enchantplus:update_ench/mainhand/life_plus/check_options


kill @e[type=armor_stand,tag=teplus.update_ench]
advancement revoke @s only enchantplus:update_ench/mainhand