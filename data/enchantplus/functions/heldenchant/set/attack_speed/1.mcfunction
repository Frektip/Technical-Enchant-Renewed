##Give error message in case the held item isn't the correct one
execute unless predicate enchantplus:held_item/shared/melee run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","color":"dark_red","bold":true},{"translate":"You can't add this enchantment to this item","color":"red","bold":false},{"text":"\n\n\n"}]
#-------------------------------------------------------------------------------#

##Store the original value in the storage
execute if predicate enchantplus:held_item/shared/melee run data modify storage teplus:heldench Mainhand set from entity @s SelectedItem

##Summon an armor stand and tag the player if is holding the right item
execute if predicate enchantplus:held_item/shared/melee run tag @s add teplus.heldench
execute if predicate enchantplus:held_item/shared/melee run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["teplus.held_ench"],HandItems:[{},{}],DisabledSlots:4144959}
#-------------------------------------------------------------------------------#


##FIRST check if the item already has this enchantment
execute if data storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"AttackSpeed",lvl:1}] run tag @s add teplus.heldench_error
execute if entity @s[tag=teplus.heldench_error] run tag @s remove teplus.heldench
execute if entity @s[tag=teplus.heldench_error] run tellraw @s [{"text":"\n\n\n"},{"translate":"Error! ","color":"dark_red","bold":true},{"translate":"This enchantment is already present in this item","color":"red","bold":false},{"text":"\n\n\n"}]
#-------------------------------------------------------------------------------#


##Proceed with the enchanting ONLY if the player has "teplus.heldench" tag
##and if it doesn't have this enchantment already

#1.- Check if it doesn't have the enchant glint
execute if entity @s[tag=teplus.heldench] unless data storage teplus:heldench Mainhand.tag.Enchantments run data modify storage teplus:heldench Mainhand.tag.Enchantments append value {}

#2.- Remove the enchantment by default (this is because this enchantment can be lvl I, II, III...)
execute if entity @s[tag=teplus.heldench] run data remove storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"AttackSpeed"}]

#3.- Check if the item doesn't have this enchantment previously
execute if entity @s[tag=teplus.heldench] unless data storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"AttackSpeed",lvl:1}] run data modify storage teplus:heldench Mainhand.tag.CustomEnchantments append value {id:"AttackSpeed",lvl:1}

#4.- Add the Lore to the storage
execute if entity @s[tag=teplus.heldench,tag=!teplus.heldench_error] run data remove storage teplus:heldench Mainhand.tag.display.Lore
execute if entity @s[tag=teplus.heldench,tag=!teplus.heldench_error] run function enchantplus:heldenchant/helpers/set_lore

#5.- Remove the Attributes from the item
execute if entity @s[tag=teplus.heldench,tag=!teplus.heldench_error] run data remove storage teplus:heldench Mainhand.tag.AttributeModifiers

#6.- Copy the storage nbt to the summoned armor stand
execute if entity @s[tag=teplus.heldench] run data modify entity @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] HandItems[0] set from storage teplus:heldench Mainhand
#6.1.- Use attribute modifiers to set the attributes
# Check if it is a trident or a word
execute if entity @s[tag=teplus.heldench] if data storage teplus:heldench Mainhand.tag.CustomEnchantments[{id:"AttackSpeed",lvl:1}] as @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] run item modify entity @s weapon.mainhand enchantplus:set_attributes/heldenchant/attack_speed

#In case the item has sharpness, change the Damage attribute
execute if entity @s[tag=teplus.heldench] if data storage teplus:heldench Mainhand.tag.Enchantments[{id:"minecraft:sharpness"}] as @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] run function enchantplus:heldenchant/helpers/sharpness_damage

#7.- Replace the player's mainhand item with the one from the armor stand
execute if entity @s[tag=teplus.heldench] run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=teplus.held_ench,distance=..1,limit=1] weapon.mainhand
#-------------------------------------------------------------------------------#


##Kill the armor stand, remove the data storage and remove player tags
kill @e[tag=teplus.held_ench,distance=..5]
data remove storage teplus:heldench Mainhand
tag @s remove teplus.heldench
tag @s remove teplus.heldench_error

