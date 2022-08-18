#Check enchantments
execute if data entity @s Inventory[{Slot:102b}].tag.CustomEnchantments[{id:"Armored"}] at @s run function enchantplus:update_ench/chest/armored/check_options

execute if data entity @s Inventory[{Slot:102b}].tag.CustomEnchantments[{id:"LifePlus"}] at @s run function enchantplus:update_ench/chest/life_plus/check_options


kill @e[type=armor_stand,tag=teplus.update_ench]
advancement revoke @s only enchantplus:update_ench/chest