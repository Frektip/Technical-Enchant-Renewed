#Check enchantments
execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Agility"}] at @s run function enchantplus:update_ench/offhand/agility/check_options

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"AntiKnockback"}] at @s run function enchantplus:update_ench/offhand/anti_knockback/check_options

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"Armored"}] at @s run function enchantplus:update_ench/offhand/armored/check_options

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"AttackSpeed"}] at @s run function enchantplus:update_ench/offhand/attack_speed/check_options

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"HardnessPlus"}] at @s run function enchantplus:update_ench/offhand/hardness_plus/check_options

execute if data entity @s Inventory[{Slot:-106b}].tag.CustomEnchantments[{id:"LifePlus"}] at @s run function enchantplus:update_ench/offhand/life_plus/check_options


kill @e[type=armor_stand,tag=teplus.update_ench]
advancement revoke @s only enchantplus:update_ench/offhand