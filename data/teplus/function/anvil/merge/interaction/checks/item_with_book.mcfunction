tag @s add teplus.anvil.output_item

function teplus:anvil/merge/interaction/checks/get_input_enchants

# Enchant the item based on its type
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"HELMET"}}}}} run function #teplus:anvil/merge/interaction/item_type/helmet
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"CHESTPLATE"}}}}} run function #teplus:anvil/merge/interaction/item_type/chestplate
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"LEGGINGS"}}}}} run function #teplus:anvil/merge/interaction/item_type/leggings
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"BOOTS"}}}}} run function #teplus:anvil/merge/interaction/item_type/boots
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"SHIELD"}}}}} run function #teplus:anvil/merge/interaction/item_type/shield

execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"SWORD"}}}}} run function #teplus:anvil/merge/interaction/item_type/sword
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"BOW"}}}}} run function #teplus:anvil/merge/interaction/item_type/bow
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"CROSSBOW"}}}}} run function #teplus:anvil/merge/interaction/item_type/crossbow
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"TRIDENT"}}}}} run function #teplus:anvil/merge/interaction/item_type/trident

execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"AXE"}}}}} run function #teplus:anvil/merge/interaction/item_type/axe
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"PICKAXE"}}}}} run function #teplus:anvil/merge/interaction/item_type/pickaxe
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"SHOVEL"}}}}} run function #teplus:anvil/merge/interaction/item_type/shovel
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"HOE"}}}}} run function #teplus:anvil/merge/interaction/item_type/hoe

execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"SHEARS"}}}}} run function #teplus:anvil/merge/interaction/item_type/shears
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"ELYTRA"}}}}} run function #teplus:anvil/merge/interaction/item_type/elytra
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"FISHING_ROD"}}}}} run function #teplus:anvil/merge/interaction/item_type/fishing_rod
execute if data storage teplus:tech_anvil.ui {TAM:{Output:{Result:{teplus:{type:"HORSE_ARMOR"}}}}} run function #teplus:anvil/merge/interaction/item_type/horse_armor