#Is disabled
execute if score #aksp Enchopts matches 1 if data entity @s SelectedItem.tag.AttributeModifiers run function enchantplus:update_ench/mainhand/attack_speed/disable

#If it has sharpness
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}] run function enchantplus:update_ench/mainhand/attack_speed/remove_sharpness