data remove entity @s Items[{Slot:22b}]

# Error: Invalid items to merge
data modify entity @s[tag=teplus.anvil.error.invalid_items] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.error_title",fallback:"Error!",color:"red",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.merge_error.invalid_items.lore",fallback:"You cannot combine those items!",color:"gray",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:error"]}},Slot:22b}

# Warning: Invalid enchantment to merge
data modify entity @s[tag=teplus.anvil.error.invalid_enchant] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{translate:"teplus.technical_anvil.error_title",fallback:"Error!",color:"red",italic:false}],"minecraft:lore":[{translate:"teplus.technical_anvil.merge_error.invalid_enchant.lore1",fallback:"You cannot add that enchantment",color:"gray",italic:false},{translate:"teplus.technical_anvil.merge_error.invalid_enchant.lore2",fallback:"to that item!",color:"gray",italic:false}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:warning"]}},Slot:22b}

# Default case
data modify entity @s[tag=!teplus.anvil.error.invalid_items,tag=!teplus.anvil.error.invalid_enchant] Items append value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_name":[{text:""}],"minecraft:bundle_contents":[{id:"minecraft:stick",count:64}],"minecraft:custom_data":{teplus:{ui:1b}},"minecraft:custom_model_data":{strings:["teplus:error"]}},Slot:22b}

data modify storage teplus:updates TAM.CurrentUI[{Slot:22b}] set from entity @s Items[{Slot:22b}]