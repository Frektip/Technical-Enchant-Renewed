### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Check for a valid item to enchant...","color":"gray","italic":true,"bold":false}]

execute if entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run function enchantplus:loot/loot_system/item
#Pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] run function enchantplus:loot/loot_system/item
#Axe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:stone_axe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:wooden_axe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_axe"}}] run function enchantplus:loot/loot_system/item
#Shovel
execute if entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_shovel"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_shovel"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:stone_shovel"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:wooden_shovel"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_shovel"}}] run function enchantplus:loot/loot_system/item
#Hoe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_hoe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_hoe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:stone_hoe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:wooden_hoe"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_hoe"}}] run function enchantplus:loot/loot_system/item
#Sword
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:stone_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:trident"}}] run function enchantplus:loot/loot_system/item
#Netherite Armor
execute if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run function enchantplus:loot/loot_system/item
#Diamond Armor
execute if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run function enchantplus:loot/loot_system/item
#Iron Armor
execute if entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run function enchantplus:loot/loot_system/item
#Golden Armor
execute if entity @s[nbt={Item:{id:"minecraft:golden_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:golden_boots"}}] run function enchantplus:loot/loot_system/item
#Chainmail Armor
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run function enchantplus:loot/loot_system/item
#Leather Armor
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] run function enchantplus:loot/loot_system/item
#Extra
execute if entity @s[nbt={Item:{id:"minecraft:bow"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:shield"}}] run function enchantplus:loot/loot_system/item
execute if entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run function enchantplus:loot/loot_system/item