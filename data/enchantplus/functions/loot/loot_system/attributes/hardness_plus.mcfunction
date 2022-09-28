#Get attack speed enchantment level
execute store result score @s teplus.hrds run data get entity @s Item.tag.CustomEnchantments[{id:"HardnessPlus"}].lvl

#Apply an item modifier to it based on the material
item modify entity @s container.0 technical_anvil:hardness_plus
