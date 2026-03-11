# We compare both storages {Section1 & Section2} items ids to see if they match or not
# When there's a match, we add a tag to the minecart (@s) to be used later


# By default remove the tag from the minecart
tag @s remove teplus.anvil.IsSameItem

# ===============SWORD=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:stone_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:stone_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:wooden_sword"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:wooden_sword"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============AXE=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:stone_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:stone_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:wooden_axe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:wooden_axe"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============PICKAXE=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:stone_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:stone_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:wooden_pickaxe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:wooden_pickaxe"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============SHOVEL=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:stone_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:stone_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:wooden_shovel"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:wooden_shovel"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============HOE=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:stone_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:stone_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:wooden_hoe"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:wooden_hoe"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============HELMET=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:chainmail_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:chainmail_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:leather_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:leather_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:turtle_helmet"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:turtle_helmet"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============CHESTPLATE=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:chainmail_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:chainmail_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:leather_chestplate"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:leather_chestplate"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============LEGGINGS=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:chainmail_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:chainmail_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:leather_leggings"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:leather_leggings"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============BOOTS=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:chainmail_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:chainmail_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:leather_boots"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:leather_boots"}}}} run return run tag @s add teplus.anvil.IsSameItem

# ===============HORSE ARMOR=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:netherite_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:netherite_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:diamond_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:diamond_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:golden_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:golden_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:iron_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:iron_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:copper_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:copper_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:leather_horse_armor"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:leather_horse_armor"}}}} run return run tag @s add teplus.anvil.IsSameItem


# ===============EXTRA=============== #
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:shield"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:shield"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:bow"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:bow"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:crossbow"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:crossbow"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:trident"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:trident"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:elytra"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:elytra"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:shears"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:shears"}}}} run return run tag @s add teplus.anvil.IsSameItem
execute if data storage teplus:updates {TAM:{Inputs:{Section1:{id:"minecraft:fishing_rod"}}}} if data storage teplus:updates {TAM:{Inputs:{Section2:{id:"minecraft:fishing_rod"}}}} run return run tag @s add teplus.anvil.IsSameItem