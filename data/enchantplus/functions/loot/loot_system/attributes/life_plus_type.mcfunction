#Get attack speed enchantment level
execute store result score @s TCHA.Section1 run data get entity @s Item.tag.CustomEnchantments[{id:"LifePlus"}].lvl

#Apply an item modifier to it based on the material
item modify entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] container.0 technical_anvil:life_plus/netherite
item modify entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] container.0 technical_anvil:life_plus/diamond
item modify entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] container.0 technical_anvil:life_plus/iron
item modify entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] container.0 technical_anvil:life_plus/mid
item modify entity @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] container.0 technical_anvil:life_plus/mid
item modify entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] container.0 technical_anvil:life_plus/leather