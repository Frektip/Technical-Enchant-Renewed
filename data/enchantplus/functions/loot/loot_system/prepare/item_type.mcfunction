### Debug Message ###
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summoned a dummy item frame","color":"gray","italic":true,"bold":false}]

#Give a Global tag if it is an item
tag @s add teplus.loot_is_item

#Give a tag if the item has custom curses
execute if data entity @s Item.tag.CustomCurse run tag @s add has_tepcurse

#Enchant if entityed on the item
#Helmet
execute if entity @s[nbt={Item:{id:"minecraft:turtle_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:diamond_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:golden_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run function enchantplus:loot/loot_system/ench_item/helmet

#Chestplate
execute if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate
execute if entity @s[nbt={Item:{id:"minecraft:diamond_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate
execute if entity @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate
execute if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run function enchantplus:loot/loot_system/ench_item/chestplate

#Leggings
execute if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings
execute if entity @s[nbt={Item:{id:"minecraft:diamond_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings
execute if entity @s[nbt={Item:{id:"minecraft:golden_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings
execute if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run function enchantplus:loot/loot_system/ench_item/leggings

#Boots
execute if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots
execute if entity @s[nbt={Item:{id:"minecraft:diamond_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots
execute if entity @s[nbt={Item:{id:"minecraft:golden_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots
execute if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots
execute if entity @s[nbt={Item:{id:"minecraft:chainmail_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots"}}] run function enchantplus:loot/loot_system/ench_item/boots

#Sword
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword
execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword
execute if entity @s[nbt={Item:{id:"minecraft:stone_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword
execute if entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] run function enchantplus:loot/loot_system/ench_item/sword

#Axe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe
execute if entity @s[nbt={Item:{id:"minecraft:diamond_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe
execute if entity @s[nbt={Item:{id:"minecraft:golden_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe
execute if entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe
execute if entity @s[nbt={Item:{id:"minecraft:stone_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_axe"}}] run function enchantplus:loot/loot_system/ench_item/axe

#Pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:stone_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run function enchantplus:loot/loot_system/ench_item/pickaxe

#Shovel
execute if entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel
execute if entity @s[nbt={Item:{id:"minecraft:diamond_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel
execute if entity @s[nbt={Item:{id:"minecraft:golden_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel
execute if entity @s[nbt={Item:{id:"minecraft:iron_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel
execute if entity @s[nbt={Item:{id:"minecraft:stone_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel
execute if entity @s[nbt={Item:{id:"minecraft:wooden_shovel"}}] run function enchantplus:loot/loot_system/ench_item/shovel

#Hoe
execute if entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe
execute if entity @s[nbt={Item:{id:"minecraft:diamond_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe
execute if entity @s[nbt={Item:{id:"minecraft:golden_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe
execute if entity @s[nbt={Item:{id:"minecraft:iron_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe
execute if entity @s[nbt={Item:{id:"minecraft:stone_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe
execute if entity @s[nbt={Item:{id:"minecraft:wooden_hoe"}}] run function enchantplus:loot/loot_system/ench_item/hoe

#Extra items
execute if entity @s[nbt={Item:{id:"minecraft:trident"}}] run function enchantplus:loot/loot_system/ench_item/trident
execute if entity @s[nbt={Item:{id:"minecraft:shield"}}] run function enchantplus:loot/loot_system/ench_item/shield
execute if entity @s[nbt={Item:{id:"minecraft:bow"}}] run function enchantplus:loot/loot_system/ench_item/bow
execute if entity @s[nbt={Item:{id:"minecraft:crossbow"}}] run function enchantplus:loot/loot_system/ench_item/crossbow

#Because the enchantting was successful, do the armor stand animation
tag @e[type=armor_stand,tag=teplus.bookshelf_level,distance=..3] add speed_enchanted
tag @e[type=marker,tag=teplus.charged_bookshelf,distance=2..5] add speed_enchanted
function enchantplus:entity/armor_stand/speed_animation