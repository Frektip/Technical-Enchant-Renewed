#Get attack speed enchantment level
execute store result score @s TCHA.Section1 run data get entity @s Item.tag.CustomEnchantments[{id:"Agility"}].lvl

#Apply an item modifier to it based on the material
item modify entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] container.0 technical_anvil:agility/netherite
item modify entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] container.0 technical_anvil:agility/diamond
item modify entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] container.0 technical_anvil:agility/iron
item modify entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] container.0 technical_anvil:agility/low
item modify entity @s[nbt={Item:{id:"minecraft:golden_boots"}}] container.0 technical_anvil:agility/low
item modify entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] container.0 technical_anvil:agility/low