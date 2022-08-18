#Is disabled
execute if score #aglt Enchopts matches 1 if data entity @s Inventory[{Slot:100b}].tag.AttributeModifiers run function enchantplus:update_ench/feet/agility_disable

kill @e[type=armor_stand,tag=teplus.update_ench]
advancement revoke @s only enchantplus:update_ench/feet