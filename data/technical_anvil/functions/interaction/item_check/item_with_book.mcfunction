#Add a tag as an input item
tag @s add TCHA.inpit

#Copy the custom enchantments from the book into a storage:
function technical_anvil:interaction/item_check/find_enchantments

execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"HELMET"}}}} run function #technical_anvil:interaction/item_type/helmet
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"CHESTPLATE"}}}} run function #technical_anvil:interaction/item_type/chestplate
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"LEGGINGS"}}}} run function #technical_anvil:interaction/item_type/leggings
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"BOOTS"}}}} run function #technical_anvil:interaction/item_type/boots
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SHIELD"}}}} run function #technical_anvil:interaction/item_type/shield

execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SWORD"}}}} run function #technical_anvil:interaction/item_type/sword
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"BOW"}}}} run function #technical_anvil:interaction/item_type/bow
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"CROSSBOW"}}}} run function #technical_anvil:interaction/item_type/crossbow
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"TRIDENT"}}}} run function #technical_anvil:interaction/item_type/trident

execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"AXE"}}}} run function #technical_anvil:interaction/item_type/axe
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"PICKAXE"}}}} run function #technical_anvil:interaction/item_type/pickaxe
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SHOVEL"}}}} run function #technical_anvil:interaction/item_type/shovel
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"HOE"}}}} run function #technical_anvil:interaction/item_type/hoe

execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"SHEARS"}}}} run function #technical_anvil:interaction/item_type/shears
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"ELYTRA"}}}} run function #technical_anvil:interaction/item_type/elytra
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"FISHING_ROD"}}}} run function #technical_anvil:interaction/item_type/fishing_rod
execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,id:"minecraft:enchanted_book"}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"HORSE_ARMOR"}}}} run function #technical_anvil:interaction/item_type/horse_armor

