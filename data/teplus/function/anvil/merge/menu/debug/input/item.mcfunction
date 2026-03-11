# @params:
# - {storage}: could be Section1 (slot=2b) or Section2 (slot=6b)

# All of the listed items below are all the ones that can be enchanted with TE+ enchants

# Clear previous items from the storage
$data remove storage teplus:updates TAM.Inputs.$(storage).teplus

# Tag enchantable items - modify storage
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:chainmail_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:leather_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:turtle_helmet"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HELMET"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:chainmail_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:leather_chestplate"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CHESTPLATE"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:chainmail_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:leather_leggings"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"LEGGINGS"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:chainmail_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:leather_boots"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOOTS"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:shield"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHIELD"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:stone_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:wooden_axe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"AXE"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:stone_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:wooden_pickaxe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"PICKAXE"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:stone_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:wooden_shovel"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHOVEL"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:stone_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:wooden_hoe"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HOE"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:stone_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:wooden_sword"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SWORD"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:bow"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"BOW"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:crossbow"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"CROSSBOW"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:trident"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"TRIDENT"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:shears"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"SHEARS"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:elytra"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"ELYTRA"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:fishing_rod"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"FISHING_ROD"}

$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:netherite_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:diamond_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:golden_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:iron_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:copper_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}
$execute if data storage teplus:updates {TAM:{Inputs:{$(storage):{id:"minecraft:leather_horse_armor"}}}} run return run function teplus:anvil/merge/menu/debug/input/set_type {storage:"$(storage)", type:"HORSE_ARMOR"}