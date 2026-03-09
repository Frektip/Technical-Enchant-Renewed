tag @s add teplus.anvil.output_item

function teplus:anvil/merge/interaction/checks/get_input_enchants

# Enchant the item based on its type
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"HELMET"}}}} run function #teplus:anvil/merge/interaction/item_type/helmet
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"CHESTPLATE"}}}} run function #teplus:anvil/merge/interaction/item_type/chestplate
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"LEGGINGS"}}}} run function #teplus:anvil/merge/interaction/item_type/leggings
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"BOOTS"}}}} run function #teplus:anvil/merge/interaction/item_type/boots
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"SHIELD"}}}} run function #teplus:anvil/merge/interaction/item_type/shield

# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"SWORD"}}}} run function #teplus:anvil/merge/interaction/item_type/sword
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"BOW"}}}} run function #teplus:anvil/merge/interaction/item_type/bow
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"CROSSBOW"}}}} run function #teplus:anvil/merge/interaction/item_type/crossbow
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"TRIDENT"}}}} run function #teplus:anvil/merge/interaction/item_type/trident

execute if data storage teplus:updates {TAM:{Output:{Result:{type:"AXE"}}}} run function #teplus:anvil/merge/interaction/item_type/axe
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"PICKAXE"}}}} run function #teplus:anvil/merge/interaction/item_type/pickaxe
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"SHOVEL"}}}} run function #teplus:anvil/merge/interaction/item_type/shovel
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"HOE"}}}} run function #teplus:anvil/merge/interaction/item_type/hoe

# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"SHEARS"}}}} run function #teplus:anvil/merge/interaction/item_type/shears
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"ELYTRA"}}}} run function #teplus:anvil/merge/interaction/item_type/elytra
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"FISHING_ROD"}}}} run function #teplus:anvil/merge/interaction/item_type/fishing_rod
# execute if data storage teplus:updates {TAM:{Output:{Result:{type:"HORSE_ARMOR"}}}} run function #teplus:anvil/merge/interaction/item_type/horse_armor