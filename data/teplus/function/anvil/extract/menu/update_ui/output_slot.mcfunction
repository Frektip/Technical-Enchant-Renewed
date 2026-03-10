data remove entity @s Items[{Slot:13b}]

# Error: Invalid items to extract
data modify entity @s[tag=teplus.anvil.error.invalid_items] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.error_title",fallback:"Error!",color:"red",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.extract_error.invalid_items.lore",fallback:"You cannot extract enchantments from that item!",color:"gray",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:error"]}},Slot:13b}

# Warning: Invalid right input item
data modify entity @s[tag=teplus.anvil.error.invalid_enchant] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.error_title",fallback:"Error!",color:"red",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.extract_error.invalid_right_input.lore1",fallback:"You need to place normal books or",color:"gray",italic:false},{translate:"teplus.technical_anvil.extract_error.invalid_right_input.lore2",fallback:"an isolated core in the right input slot!",color:"gray",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:warning"]}},Slot:13b}

# Default case
data modify entity @s[tag=!teplus.anvil.error.invalid_items,tag=!teplus.anvil.error.invalid_enchant] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{text:""}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:error"]}},Slot:13b}

data modify storage teplus:updates TAE.CurrentUI[{Slot:13b}] set from entity @s Items[{Slot:13b}]