#Get attack speed enchantment level
execute store result score @s TCHA.Section1 run data get entity @s Item.tag.CustomEnchantments[{id:"AttackSpeed"}].lvl

#Apply an item modifier to it based on the material
item modify entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] container.0 technical_anvil:attack_speed/sword/netherite
item modify entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] container.0 technical_anvil:attack_speed/sword/diamond
item modify entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] container.0 technical_anvil:attack_speed/sword/iron
item modify entity @s[nbt={Item:{id:"minecraft:stone_sword"}}] container.0 technical_anvil:attack_speed/sword/stone
item modify entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] container.0 technical_anvil:attack_speed/sword/low
item modify entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] container.0 technical_anvil:attack_speed/sword/low

item modify entity @s[nbt={Item:{id:"minecraft:trident"}}] container.0 technical_anvil:attack_speed/trident