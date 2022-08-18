#All of the listed items below are all the ones that can be enchanted with the enchanting
# table or combine with the Item

#EnchCore = General tag for these items

#Clear previous items from the storage
data remove storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore
data remove storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.Teplus.item_type

#Tag enchantable items
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:chainmail_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:leather_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:turtle_helmet"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:chainmail_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:leather_chestplate"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:chainmail_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:leather_leggings"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:chainmail_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:leather_boots"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:shield"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:stone_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:wooden_axe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:stone_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:wooden_pickaxe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:stone_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:wooden_shovel"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:stone_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:wooden_hoe"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:netherite_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:stone_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:wooden_sword"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:bow"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:crossbow"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:trident"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:shears"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:elytra"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:fishing_rod"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:iron_horse_armor"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:golden_horse_armor"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:diamond_horse_armor"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b
execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"minecraft:leather_horse_armor"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

#Now we need to specify which item is which, so we run another function
execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore run function technical_anvil:menu/item_tag_slot6
